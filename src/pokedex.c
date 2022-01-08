#include "pokedex.h"
#include "pokemon.h"
#include "constants/species.h"

void sub_020299CC(POKEDEX *pokedex);

u32 Save_Pokedex_sizeof(void) {
    return sizeof(POKEDEX);
}

POKEDEX *Pokedex_new(HeapID heapId) {
    POKEDEX *ret = AllocFromHeap(heapId, sizeof(POKEDEX));
    Save_Pokedex_init(ret);
    return ret;
}

void Pokedex_copy(const POKEDEX *src, POKEDEX *dest) {
    MI_CpuCopy8(src, dest, sizeof(POKEDEX));
}

BOOL DexSpeciesIsInvalid(u16 species) {
    if (species == SPECIES_NONE || species > SPECIES_ARCEUS) {
        GF_ASSERT(0);
        return TRUE;
    }

    return FALSE;
}

static inline BOOL CheckDexFlag(const u8 *array, u16 flagId) {
    flagId--;
    return (array[flagId >> 3] & (1 << (flagId & 7))) != 0;
}

static inline void SetDexFlag(u8 *array, u16 flagId) {
    flagId--;
    array[flagId >> 3] |= (1 << (flagId & 7));
}

static inline void SetDexFlagState(u8 *array, u8 state, u16 flagId) {
    GF_ASSERT(state < 2);
    flagId --;
    array[flagId >> 3] &= ~(1 << (flagId & 7));
    array[flagId >> 3] |= (state << (flagId & 7));
}

static inline int CheckDex2Flag(const u8 *array, u16 _2flagId) {
    return (array[_2flagId >> 2] >> (2 * (_2flagId % 4u))) & 3;
}

static inline void SetDex2FlagState(u8 *array, u8 state, u16 _2flagId) {
    GF_ASSERT(state < 4);
    array[_2flagId >> 2] &= ~(3 << (2 * (_2flagId % 4u)));
    array[_2flagId >> 2] |= (state << (2 * (_2flagId % 4u)));
}

void sub_02029424(POKEDEX *pokeDex, u8 state, u8 num, u16 flagId) {
    if (num == 0) {
        SetDexFlagState((u8 *)pokeDex->unk_084[1], state, flagId);
    }
    SetDexFlagState((u8 *)pokeDex->unk_084[num], state, flagId);
}

void sub_0202949C(POKEDEX *pokeDex, u8 state, u8 num, u16 flagId) {
    GF_ASSERT(state <= 2);
    if (state == 2) {
        state = 0;
    }
    sub_02029424(pokeDex, state, num, flagId);
}

u8 *sub_020294C4(POKEDEX *pokedex, u32 species) {
    switch (species) {
    case SPECIES_SHELLOS:
        return &pokedex->unk_108; // + 264;
    case SPECIES_GASTRODON:
        return &pokedex->unk_109; // + 265;
    case SPECIES_SHAYMIN:
        return &pokedex->unk_33C; // + 828;
    case SPECIES_GIRATINA:
        return &pokedex->unk_33D; // + 829;
    case SPECIES_BURMY:
        return &pokedex->unk_10A; // + 266;
    case SPECIES_WORMADAM:
        return &pokedex->unk_10B; // + 267;
    case SPECIES_PICHU:
        return &pokedex->unk_33E; // + 830;
    default:
        GF_ASSERT(0);
        return NULL;
    }
}

int sub_02029558(const POKEDEX *pokedex, BOOL a1) {
    int i, j = 0;
    const u8 *arr;
    if (a1) {
        arr = pokedex->unk_128;
    } else {
        arr = pokedex->unk_10C;
    }
    for (i = 0; i < 28; i++, j++) {
        if (arr[i] == 0xFF) {
            break;
        }
    }
    return j;
}

BOOL sub_0202957C(const POKEDEX *pokedex, u8 letter, BOOL a2) {
    int i;
    const u8 *arr;
    if (a2) {
        arr = pokedex->unk_128;
    } else {
        arr = pokedex->unk_10C;
    }
    for (i = 0; i < 28; i++) {
        if (arr[i] == letter) {
            return TRUE;
        }
    }
    return FALSE;
}

void sub_020295A0(POKEDEX *pokedex, int letter, BOOL a2) {
    u8 *arr;
    int idx;
    if (a2) {
        arr = pokedex->unk_128;
    } else {
        arr = pokedex->unk_10C;
    }
    if (!sub_0202957C(pokedex, letter, a2)) {
        idx = sub_02029558(pokedex, a2);
        if (idx < 28) {
            arr[idx] = letter;
        }
    }
}

int sub_020295D4(POKEDEX *pokedex, u32 species) {
    u8 *flag_p;
    GF_ASSERT(species == SPECIES_SHELLOS || species == SPECIES_GASTRODON || species == SPECIES_SHAYMIN || species == SPECIES_GIRATINA);
    if (!Pokedex_CheckMonSeenFlag(pokedex, species)) {
        return 0;
    }
    flag_p = sub_020294C4(pokedex, species);
    if (CheckDexFlag(flag_p, 1) == CheckDexFlag(flag_p, 2)) {
        return 1;
    } else {
        return 2;
    }
}

BOOL sub_0202963C(POKEDEX *pokedex, u32 species, u8 state) {
    u8 *flag_p;
    u32 n;
    int i;
    BOOL flag;
    GF_ASSERT(species == SPECIES_SHELLOS || species == SPECIES_GASTRODON || species == SPECIES_SHAYMIN || species == SPECIES_GIRATINA);
    if (!Pokedex_CheckMonSeenFlag(pokedex, species)) {
        return FALSE;
    }
    flag_p = sub_020294C4(pokedex, species);
    n = sub_020295D4(pokedex, species);
    for (i = 0; i < n; i++) {
        flag = CheckDexFlag(flag_p, i + 1);
        if (flag == state) {
            return TRUE;
        }
    }
    return FALSE;
}

void sub_020296C8(POKEDEX *pokedex, u32 species, BOOL state) {
    int r4;
    u8 *r5;
    GF_ASSERT(species == SPECIES_SHELLOS || species == SPECIES_GASTRODON || species == SPECIES_SHAYMIN || species == SPECIES_GIRATINA);
    if (!sub_0202963C(pokedex, species, state)) {
        r5 = sub_020294C4(pokedex, species);
        r4 = sub_020295D4(pokedex, species);
        if (r4 < 2) {
            SetDexFlagState(r5, state, r4 + 1);
            if (r4 == 0) {
                SetDexFlagState(r5, state, r4 + 2);
            }
        }
    }
}

int sub_02029790(POKEDEX *pokedex, u32 species) {
    int i;
    u8 *flag_p;
    GF_ASSERT(species == SPECIES_BURMY || species == SPECIES_WORMADAM || species == SPECIES_PICHU);
    if (!Pokedex_CheckMonSeenFlag(pokedex, species)) {
        return 0;
    }
    flag_p = sub_020294C4(pokedex, species);
    for (i = 0; i < 3; i++) {
        if (CheckDex2Flag(flag_p, i) == 3) {
            break;
        }
    }
    return i;
}

BOOL sub_020297EC(POKEDEX *pokedex, u32 species, u8 state) {
    int i;
    u32 flag;
    u8 *flag_p;
    GF_ASSERT(species == SPECIES_BURMY || species == SPECIES_WORMADAM || species == SPECIES_PICHU);
    if (!Pokedex_CheckMonSeenFlag(pokedex, species)) {
        return FALSE;
    }
    flag_p = sub_020294C4(pokedex, species);
    for (i = 0; i < 3; i++) {
        flag = CheckDex2Flag(flag_p, i);
        if (flag == state) {
            return TRUE;
        }
    }
    return FALSE;
}

void sub_0202984C(POKEDEX *pokedex, u32 species, u32 state) {
    int n;
    u8 *flag_p;
    GF_ASSERT(species == SPECIES_BURMY || species == SPECIES_WORMADAM || species == SPECIES_PICHU);
    if (!sub_020297EC(pokedex, species, state)) {
        flag_p = sub_020294C4(pokedex, species);
        n = sub_02029790(pokedex, species);
        if (n < 3) {
            SetDex2FlagState(flag_p, state, n);
        }
    }
}

void sub_020298C4(u32 *flags, u8 a1, u8 a2) {
    flags[15] &= ~(15 << (24 + 4 * a2));
    flags[15] |= (a1 << (24 + 4 * a2));
}

void sub_020298E0(POKEDEX *pokedex, u8 a1, u8 a2) {
    GF_ASSERT(a2 < 4);
    GF_ASSERT(a1 <= 15);
    if (a2 < 2) {
        sub_020298C4(pokedex->unk_004, a1, a2);
    } else {
        sub_020298C4(pokedex->unk_044, a1, a2 - 2);
    }
}

static inline int sub_0202991C_sub(u32 *a0, u8 a1) {
    return (a0[15] >> (24 + 4 * a1)) & 15;
}

u32 sub_0202991C(POKEDEX *pokedex, u8 a1) {
    if (a1 < 2) {
        return sub_0202991C_sub(pokedex->unk_004, a1);
    } else {
        return sub_0202991C_sub(pokedex->unk_044, a1 - 2);
    }
}

int sub_02029948(POKEDEX *pokedex) {
    int i;
    for (i = 0; i < 4; i++) {
        if (sub_0202991C(pokedex, i) == 15) {
            break;
        }
    }
    return i;
}

BOOL sub_02029968(POKEDEX *pokedex, u32 a1) {
    int i;
    u32 val;
    for (i = 0; i < 4; i++) {
        val = sub_0202991C(pokedex, i);
        if (a1 == val) {
            return TRUE;
        }
    }
    return FALSE;
}

void sub_0202998C(POKEDEX *pokedex, u16 species, POKEMON *pokemon) {
    u8 forme;

    forme = GetMonData(pokemon, MON_DATA_FORME, NULL);
    if (species == SPECIES_DEOXYS) {
        if (!sub_02029968(pokedex, forme)) {
            sub_020298E0(pokedex, forme, sub_02029948(pokedex));
        }
    }
}

void sub_020299CC(POKEDEX *pokedex) {
    int i;
    for (i = 0; i < 4; i++) {
        sub_020298E0(pokedex, 15, i);
    }
}

static inline int sub_020299E8_sub(const u32 *arr, u32 idx) {
    return ((*arr) >> (3 * idx)) & 7;
}

int sub_020299E8(const POKEDEX *pokedex, u32 species) {
    int i, n;

    GF_ASSERT(species == SPECIES_ROTOM);
    if (!Pokedex_CheckMonSeenFlag(pokedex, species)) {
        return 0;
    }
    n = 0;
    for (i = 0; i < 6; i++, n++) {
        if (sub_020299E8_sub(&pokedex->unk_338, i) == 7) {
            break;
        }
    }
    return n;
}

/*
void Save_Pokedex_init(POKEDEX *pokedex) {
    memset(pokedex, 0, sizeof(POKEDEX));
    pokedex->magic = 0xBEEFCAFE;
    pokedex->unk_337 = 0;
    memset(pokedex->unk_10C, 0xFF, 28);
    memset(pokedex->unk_128, 0xFF, 28);
    pokedex->unk_108 = 0xFF;
    pokedex->unk_109 = 0xFF;
    pokedex->unk_10A = 0xFF;
    pokedex->unk_10B = 0xFF;
    pokedex->unk_338 = -1;
    pokedex->unk_33C = 0xFF;
    pokedex->unk_33D = 0xFF;
    pokedex->unk_33E = 0xFF;
    sub_020299CC(pokedex);
}
*/
