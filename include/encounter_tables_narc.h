#ifndef POKEHEARTGOLD_ENCOUNTER_TABLES_NARC_H
#define POKEHEARTGOLD_ENCOUNTER_TABLES_NARC_H

#include "filesystem_files_def.h"

#define ENCDATA_NA 255

#ifdef HEARTGOLD
#include "fielddata/encountdata/g_enc_data.naix"
#define ENCDATA_NARC NARC_fielddata_encountdata_g_enc_data
#define ENCDATA(suff) NARC_g_enc_data_##suff
#else
#include "fielddata/encountdata/s_enc_data.naix"
#define ENCDATA_NARC NARC_fielddata_encountdata_s_enc_data
#define ENCDATA(suff) NARC_s_enc_data_##suff
#endif //HEARTGOLD

#define ENCDATA_T20         ENCDATA(bin_000_T20_bin)
#define ENCDATA_R29         ENCDATA(bin_001_R29_bin)
#define ENCDATA_T21         ENCDATA(bin_002_T21_bin)
#define ENCDATA_R30         ENCDATA(bin_003_R30_bin)
#define ENCDATA_R31         ENCDATA(bin_004_R31_bin)
#define ENCDATA_T22         ENCDATA(bin_005_T22_bin)
#define ENCDATA_D15R0102    ENCDATA(bin_006_D15R0102_bin)
#define ENCDATA_D15R0103    ENCDATA(bin_007_D15R0103_bin)
#define ENCDATA_R32         ENCDATA(bin_008_R32_bin)
#define ENCDATA_D24R0101    ENCDATA(bin_009_D24R0101_bin)
#define ENCDATA_D24R0205    ENCDATA(bin_010_D24R0205_bin)
#define ENCDATA_D24R0216    ENCDATA(bin_011_D24R0216_bin)
#define ENCDATA_D24R0218    ENCDATA(bin_012_D24R0218_bin)
#define ENCDATA_D24R0217    ENCDATA(bin_013_D24R0217_bin)
#define ENCDATA_D25R0101    ENCDATA(bin_014_D25R0101_bin)
#define ENCDATA_D25R0102    ENCDATA(bin_015_D25R0102_bin)
#define ENCDATA_D25R0103    ENCDATA(bin_016_D25R0103_bin)
#define ENCDATA_R33         ENCDATA(bin_017_R33_bin)
#define ENCDATA_D26R0102    ENCDATA(bin_018_D26R0102_bin)
#define ENCDATA_D26R0103    ENCDATA(bin_019_D26R0103_bin)
#define ENCDATA_D36R0101    ENCDATA(bin_020_D36R0101_bin)
#define ENCDATA_R34         ENCDATA(bin_021_R34_bin)
#define ENCDATA_R35         ENCDATA(bin_022_R35_bin)
#define ENCDATA_D22R0101    ENCDATA(bin_023_D22R0101_bin)
#define ENCDATA_D22R0102    ENCDATA(bin_024_D22R0102_bin)
#define ENCDATA_R36         ENCDATA(bin_025_R36_bin)
#define ENCDATA_R37         ENCDATA(bin_026_R37_bin)
#define ENCDATA_T27         ENCDATA(bin_027_T27_bin)
#define ENCDATA_D18R0101    ENCDATA(bin_028_D18R0101_bin)
#define ENCDATA_D18R0102    ENCDATA(bin_029_D18R0102_bin)
#define ENCDATA_D17R0102    ENCDATA(bin_030_D17R0102_bin)
#define ENCDATA_D17R0103    ENCDATA(bin_031_D17R0103_bin)
#define ENCDATA_D17R0104    ENCDATA(bin_032_D17R0104_bin)
#define ENCDATA_D17R0105    ENCDATA(bin_033_D17R0105_bin)
#define ENCDATA_D17R0106    ENCDATA(bin_034_D17R0106_bin)
#define ENCDATA_D17R0107    ENCDATA(bin_035_D17R0107_bin)
#define ENCDATA_D17R0108    ENCDATA(bin_036_D17R0108_bin)
#define ENCDATA_D17R0109    ENCDATA(bin_037_D17R0109_bin)
#define ENCDATA_R38         ENCDATA(bin_038_R38_bin)
#define ENCDATA_R39         ENCDATA(bin_039_R39_bin)
#define ENCDATA_T26         ENCDATA(bin_040_T26_bin)
#define ENCDATA_W40         ENCDATA(bin_041_W40_bin)
#define ENCDATA_W41         ENCDATA(bin_042_W41_bin)
#define ENCDATA_D40R0101    ENCDATA(bin_043_D40R0101_bin)
#define ENCDATA_D40R0102    ENCDATA(bin_044_D40R0102_bin)
#define ENCDATA_UNUSED_045  ENCDATA(bin_045_UNUSED_045_bin)
#define ENCDATA_D40R0104    ENCDATA(bin_046_D40R0104_bin)
#define ENCDATA_UNUSED_047  ENCDATA(bin_047_UNUSED_047_bin)
#define ENCDATA_D40R0106    ENCDATA(bin_048_D40R0106_bin)
#define ENCDATA_UNUSED_049  ENCDATA(bin_049_UNUSED_049_bin)
#define ENCDATA_UNUSED_050  ENCDATA(bin_050_UNUSED_050_bin)
#define ENCDATA_T24         ENCDATA(bin_051_T24_bin)
#define ENCDATA_R42         ENCDATA(bin_052_R42_bin)
#define ENCDATA_D38R0101    ENCDATA(bin_053_D38R0101_bin)
#define ENCDATA_D38R0102    ENCDATA(bin_054_D38R0102_bin)
#define ENCDATA_D38R0103    ENCDATA(bin_055_D38R0103_bin)
#define ENCDATA_D38R0104    ENCDATA(bin_056_D38R0104_bin)
#define ENCDATA_R43         ENCDATA(bin_057_R43_bin)
#define ENCDATA_T29         ENCDATA(bin_058_T29_bin)
#define ENCDATA_R44         ENCDATA(bin_059_R44_bin)
#define ENCDATA_D39R0101    ENCDATA(bin_060_D39R0101_bin)
#define ENCDATA_D39R0102    ENCDATA(bin_061_D39R0102_bin)
#define ENCDATA_D39R0103    ENCDATA(bin_062_D39R0103_bin)
#define ENCDATA_D39R0104    ENCDATA(bin_063_D39R0104_bin)
#define ENCDATA_UNUSED_064  ENCDATA(bin_064_UNUSED_064_bin)
#define ENCDATA_T30         ENCDATA(bin_065_T30_bin)
#define ENCDATA_D44R0102    ENCDATA(bin_066_D44R0102_bin)
#define ENCDATA_R45         ENCDATA(bin_067_R45_bin)
#define ENCDATA_R46         ENCDATA(bin_068_R46_bin)
#define ENCDATA_D42R0102    ENCDATA(bin_069_D42R0102_bin)
#define ENCDATA_D42R0101    ENCDATA(bin_070_D42R0101_bin)
#define ENCDATA_R47         ENCDATA(bin_071_R47_bin)
#define ENCDATA_D02R0103    ENCDATA(bin_072_D02R0103_bin)
#define ENCDATA_D02R0104    ENCDATA(bin_073_D02R0104_bin)
#define ENCDATA_D11R0101    ENCDATA(bin_074_D11R0101_bin)
#define ENCDATA_D11R0102    ENCDATA(bin_075_D11R0102_bin)
#define ENCDATA_D11R0103    ENCDATA(bin_076_D11R0103_bin)
#define ENCDATA_D11R0104    ENCDATA(bin_077_D11R0104_bin)
#define ENCDATA_D11R0105    ENCDATA(bin_078_D11R0105_bin)
#define ENCDATA_D41R0105    ENCDATA(bin_079_D41R0105_bin)
#define ENCDATA_D41R0106    ENCDATA(bin_080_D41R0106_bin)
#define ENCDATA_D41R0107    ENCDATA(bin_081_D41R0107_bin)
#define ENCDATA_D48R0101    ENCDATA(bin_082_D48R0101_bin)
#define ENCDATA_D50R0101    ENCDATA(bin_083_D50R0101_bin)
#define ENCDATA_D17R0112    ENCDATA(bin_084_D17R0112_bin)
#define ENCDATA_T31         ENCDATA(bin_085_T31_bin)
#define ENCDATA_D41R0101    ENCDATA(bin_086_D41R0101_bin)
#define ENCDATA_D41R0103    ENCDATA(bin_087_D41R0103_bin)
#define ENCDATA_D41R0104    ENCDATA(bin_088_D41R0104_bin)
#define ENCDATA_D41R0102    ENCDATA(bin_089_D41R0102_bin)
#define ENCDATA_UNUSED_090  ENCDATA(bin_090_UNUSED_090_bin)
#define ENCDATA_D47R0102    ENCDATA(bin_091_D47R0102_bin)
#define ENCDATA_R12         ENCDATA(bin_092_R12_bin)
#define ENCDATA_W19         ENCDATA(bin_093_W19_bin)
#define ENCDATA_W20         ENCDATA(bin_094_W20_bin)
#define ENCDATA_T01         ENCDATA(bin_095_T01_bin)
#define ENCDATA_T02         ENCDATA(bin_096_T02_bin)
#define ENCDATA_T04         ENCDATA(bin_097_T04_bin)
#define ENCDATA_T06         ENCDATA(bin_098_T06_bin)
#define ENCDATA_T07         ENCDATA(bin_099_T07_bin)
#define ENCDATA_T08         ENCDATA(bin_100_T08_bin)
#define ENCDATA_T09         ENCDATA(bin_101_T09_bin)
#define ENCDATA_R48         ENCDATA(bin_102_R48_bin)
#define ENCDATA_R26         ENCDATA(bin_103_R26_bin)
#define ENCDATA_R27         ENCDATA(bin_104_R27_bin)
#define ENCDATA_R28         ENCDATA(bin_105_R28_bin)
#define ENCDATA_D02R0101    ENCDATA(bin_106_D02R0101_bin)
#define ENCDATA_D02R0102    ENCDATA(bin_107_D02R0102_bin)
#define ENCDATA_D05R0101    ENCDATA(bin_108_D05R0101_bin)
#define ENCDATA_D05R0102    ENCDATA(bin_109_D05R0102_bin)
#define ENCDATA_D43R0101    ENCDATA(bin_110_D43R0101_bin)
#define ENCDATA_R01         ENCDATA(bin_111_R01_bin)
#define ENCDATA_R02         ENCDATA(bin_112_R02_bin)
#define ENCDATA_R03         ENCDATA(bin_113_R03_bin)
#define ENCDATA_R04         ENCDATA(bin_114_R04_bin)
#define ENCDATA_R05         ENCDATA(bin_115_R05_bin)
#define ENCDATA_R06         ENCDATA(bin_116_R06_bin)
#define ENCDATA_R07         ENCDATA(bin_117_R07_bin)
#define ENCDATA_R08         ENCDATA(bin_118_R08_bin)
#define ENCDATA_R09         ENCDATA(bin_119_R09_bin)
#define ENCDATA_R10         ENCDATA(bin_120_R10_bin)
#define ENCDATA_R11         ENCDATA(bin_121_R11_bin)
#define ENCDATA_R13         ENCDATA(bin_122_R13_bin)
#define ENCDATA_R14         ENCDATA(bin_123_R14_bin)
#define ENCDATA_R15         ENCDATA(bin_124_R15_bin)
#define ENCDATA_R16R0301    ENCDATA(bin_125_R16R0301_bin)
#define ENCDATA_R17         ENCDATA(bin_126_R17_bin)
#define ENCDATA_R18         ENCDATA(bin_127_R18_bin)
#define ENCDATA_W21         ENCDATA(bin_128_W21_bin)
#define ENCDATA_R22         ENCDATA(bin_129_R22_bin)
#define ENCDATA_R24         ENCDATA(bin_130_R24_bin)
#define ENCDATA_R25         ENCDATA(bin_131_R25_bin)
#define ENCDATA_D45R0101    ENCDATA(bin_132_D45R0101_bin)
#define ENCDATA_D01R0101    ENCDATA(bin_133_D01R0101_bin)
#define ENCDATA_D43R0102    ENCDATA(bin_134_D43R0102_bin)
#define ENCDATA_D43R0103    ENCDATA(bin_135_D43R0103_bin)
#define ENCDATA_R02R0101    ENCDATA(bin_136_R02R0101_bin)
#define ENCDATA_D46R0101    ENCDATA(bin_137_D46R0101_bin)
#define ENCDATA_UNUSED_138  ENCDATA(bin_138_UNUSED_138_bin)
#define ENCDATA_D03R0101    ENCDATA(bin_139_D03R0101_bin)
#define ENCDATA_D03R0102    ENCDATA(bin_140_D03R0102_bin)
#define ENCDATA_D03R0103    ENCDATA(bin_141_D03R0103_bin)
#define ENCDATA_UNUSED_142  ENCDATA(bin_142_UNUSED_142_bin)

#endif //POKEHEARTGOLD_ENCOUNTER_TABLES_NARC_H