      SUBROUTINE SMATRIX_2(P,ANS)
C     
C     Generated by MadGraph5_aMC@NLO v. 2.6.6, 2018-06-28
C     By the MadGraph5_aMC@NLO Development Team
C     Visit launchpad.net/madgraph5 and amcatnlo.web.cern.ch
C     
C     Returns amplitude squared summed/avg over colors
C     and helicities
C     for the point in phase space P(0:3,NEXTERNAL)
C     
C     Process: g u > w+ x0 > w+ e+ e- z d WEIGHTED<=5 [ all = QCD ] / a
C     Process: g c > w+ x0 > w+ e+ e- z s WEIGHTED<=5 [ all = QCD ] / a
C     Process: g u > w+ x0 > w+ mu+ mu- z d WEIGHTED<=5 [ all = QCD ]
C      / a
C     Process: g c > w+ x0 > w+ mu+ mu- z s WEIGHTED<=5 [ all = QCD ]
C      / a
C     
      IMPLICIT NONE
C     
C     CONSTANTS
C     
      INCLUDE 'nexternal.inc'
      INTEGER     NCOMB
      PARAMETER ( NCOMB=288)
C     
C     ARGUMENTS 
C     
      REAL*8 P(0:3,NEXTERNAL),ANS
      DOUBLE PRECISION       WGT_ME_BORN,WGT_ME_REAL
      COMMON /C_WGT_ME_TREE/ WGT_ME_BORN,WGT_ME_REAL
C     
C     LOCAL VARIABLES 
C     
      INTEGER IHEL,IDEN,I,T_IDENT(NCOMB)
      REAL*8 MATRIX_2
      REAL*8 T,T_SAVE(NCOMB)
      SAVE T_SAVE,T_IDENT
      INTEGER NHEL(NEXTERNAL,NCOMB)
      DATA (NHEL(I,   1),I=1,7) /-1, 1,-1, 1,-1,-1,-1/
      DATA (NHEL(I,   2),I=1,7) /-1, 1,-1, 1,-1,-1, 1/
      DATA (NHEL(I,   3),I=1,7) /-1, 1,-1, 1,-1, 0,-1/
      DATA (NHEL(I,   4),I=1,7) /-1, 1,-1, 1,-1, 0, 1/
      DATA (NHEL(I,   5),I=1,7) /-1, 1,-1, 1,-1, 1,-1/
      DATA (NHEL(I,   6),I=1,7) /-1, 1,-1, 1,-1, 1, 1/
      DATA (NHEL(I,   7),I=1,7) /-1, 1,-1, 1, 1,-1,-1/
      DATA (NHEL(I,   8),I=1,7) /-1, 1,-1, 1, 1,-1, 1/
      DATA (NHEL(I,   9),I=1,7) /-1, 1,-1, 1, 1, 0,-1/
      DATA (NHEL(I,  10),I=1,7) /-1, 1,-1, 1, 1, 0, 1/
      DATA (NHEL(I,  11),I=1,7) /-1, 1,-1, 1, 1, 1,-1/
      DATA (NHEL(I,  12),I=1,7) /-1, 1,-1, 1, 1, 1, 1/
      DATA (NHEL(I,  13),I=1,7) /-1, 1,-1,-1,-1,-1,-1/
      DATA (NHEL(I,  14),I=1,7) /-1, 1,-1,-1,-1,-1, 1/
      DATA (NHEL(I,  15),I=1,7) /-1, 1,-1,-1,-1, 0,-1/
      DATA (NHEL(I,  16),I=1,7) /-1, 1,-1,-1,-1, 0, 1/
      DATA (NHEL(I,  17),I=1,7) /-1, 1,-1,-1,-1, 1,-1/
      DATA (NHEL(I,  18),I=1,7) /-1, 1,-1,-1,-1, 1, 1/
      DATA (NHEL(I,  19),I=1,7) /-1, 1,-1,-1, 1,-1,-1/
      DATA (NHEL(I,  20),I=1,7) /-1, 1,-1,-1, 1,-1, 1/
      DATA (NHEL(I,  21),I=1,7) /-1, 1,-1,-1, 1, 0,-1/
      DATA (NHEL(I,  22),I=1,7) /-1, 1,-1,-1, 1, 0, 1/
      DATA (NHEL(I,  23),I=1,7) /-1, 1,-1,-1, 1, 1,-1/
      DATA (NHEL(I,  24),I=1,7) /-1, 1,-1,-1, 1, 1, 1/
      DATA (NHEL(I,  25),I=1,7) /-1, 1, 0, 1,-1,-1,-1/
      DATA (NHEL(I,  26),I=1,7) /-1, 1, 0, 1,-1,-1, 1/
      DATA (NHEL(I,  27),I=1,7) /-1, 1, 0, 1,-1, 0,-1/
      DATA (NHEL(I,  28),I=1,7) /-1, 1, 0, 1,-1, 0, 1/
      DATA (NHEL(I,  29),I=1,7) /-1, 1, 0, 1,-1, 1,-1/
      DATA (NHEL(I,  30),I=1,7) /-1, 1, 0, 1,-1, 1, 1/
      DATA (NHEL(I,  31),I=1,7) /-1, 1, 0, 1, 1,-1,-1/
      DATA (NHEL(I,  32),I=1,7) /-1, 1, 0, 1, 1,-1, 1/
      DATA (NHEL(I,  33),I=1,7) /-1, 1, 0, 1, 1, 0,-1/
      DATA (NHEL(I,  34),I=1,7) /-1, 1, 0, 1, 1, 0, 1/
      DATA (NHEL(I,  35),I=1,7) /-1, 1, 0, 1, 1, 1,-1/
      DATA (NHEL(I,  36),I=1,7) /-1, 1, 0, 1, 1, 1, 1/
      DATA (NHEL(I,  37),I=1,7) /-1, 1, 0,-1,-1,-1,-1/
      DATA (NHEL(I,  38),I=1,7) /-1, 1, 0,-1,-1,-1, 1/
      DATA (NHEL(I,  39),I=1,7) /-1, 1, 0,-1,-1, 0,-1/
      DATA (NHEL(I,  40),I=1,7) /-1, 1, 0,-1,-1, 0, 1/
      DATA (NHEL(I,  41),I=1,7) /-1, 1, 0,-1,-1, 1,-1/
      DATA (NHEL(I,  42),I=1,7) /-1, 1, 0,-1,-1, 1, 1/
      DATA (NHEL(I,  43),I=1,7) /-1, 1, 0,-1, 1,-1,-1/
      DATA (NHEL(I,  44),I=1,7) /-1, 1, 0,-1, 1,-1, 1/
      DATA (NHEL(I,  45),I=1,7) /-1, 1, 0,-1, 1, 0,-1/
      DATA (NHEL(I,  46),I=1,7) /-1, 1, 0,-1, 1, 0, 1/
      DATA (NHEL(I,  47),I=1,7) /-1, 1, 0,-1, 1, 1,-1/
      DATA (NHEL(I,  48),I=1,7) /-1, 1, 0,-1, 1, 1, 1/
      DATA (NHEL(I,  49),I=1,7) /-1, 1, 1, 1,-1,-1,-1/
      DATA (NHEL(I,  50),I=1,7) /-1, 1, 1, 1,-1,-1, 1/
      DATA (NHEL(I,  51),I=1,7) /-1, 1, 1, 1,-1, 0,-1/
      DATA (NHEL(I,  52),I=1,7) /-1, 1, 1, 1,-1, 0, 1/
      DATA (NHEL(I,  53),I=1,7) /-1, 1, 1, 1,-1, 1,-1/
      DATA (NHEL(I,  54),I=1,7) /-1, 1, 1, 1,-1, 1, 1/
      DATA (NHEL(I,  55),I=1,7) /-1, 1, 1, 1, 1,-1,-1/
      DATA (NHEL(I,  56),I=1,7) /-1, 1, 1, 1, 1,-1, 1/
      DATA (NHEL(I,  57),I=1,7) /-1, 1, 1, 1, 1, 0,-1/
      DATA (NHEL(I,  58),I=1,7) /-1, 1, 1, 1, 1, 0, 1/
      DATA (NHEL(I,  59),I=1,7) /-1, 1, 1, 1, 1, 1,-1/
      DATA (NHEL(I,  60),I=1,7) /-1, 1, 1, 1, 1, 1, 1/
      DATA (NHEL(I,  61),I=1,7) /-1, 1, 1,-1,-1,-1,-1/
      DATA (NHEL(I,  62),I=1,7) /-1, 1, 1,-1,-1,-1, 1/
      DATA (NHEL(I,  63),I=1,7) /-1, 1, 1,-1,-1, 0,-1/
      DATA (NHEL(I,  64),I=1,7) /-1, 1, 1,-1,-1, 0, 1/
      DATA (NHEL(I,  65),I=1,7) /-1, 1, 1,-1,-1, 1,-1/
      DATA (NHEL(I,  66),I=1,7) /-1, 1, 1,-1,-1, 1, 1/
      DATA (NHEL(I,  67),I=1,7) /-1, 1, 1,-1, 1,-1,-1/
      DATA (NHEL(I,  68),I=1,7) /-1, 1, 1,-1, 1,-1, 1/
      DATA (NHEL(I,  69),I=1,7) /-1, 1, 1,-1, 1, 0,-1/
      DATA (NHEL(I,  70),I=1,7) /-1, 1, 1,-1, 1, 0, 1/
      DATA (NHEL(I,  71),I=1,7) /-1, 1, 1,-1, 1, 1,-1/
      DATA (NHEL(I,  72),I=1,7) /-1, 1, 1,-1, 1, 1, 1/
      DATA (NHEL(I,  73),I=1,7) /-1,-1,-1, 1,-1,-1,-1/
      DATA (NHEL(I,  74),I=1,7) /-1,-1,-1, 1,-1,-1, 1/
      DATA (NHEL(I,  75),I=1,7) /-1,-1,-1, 1,-1, 0,-1/
      DATA (NHEL(I,  76),I=1,7) /-1,-1,-1, 1,-1, 0, 1/
      DATA (NHEL(I,  77),I=1,7) /-1,-1,-1, 1,-1, 1,-1/
      DATA (NHEL(I,  78),I=1,7) /-1,-1,-1, 1,-1, 1, 1/
      DATA (NHEL(I,  79),I=1,7) /-1,-1,-1, 1, 1,-1,-1/
      DATA (NHEL(I,  80),I=1,7) /-1,-1,-1, 1, 1,-1, 1/
      DATA (NHEL(I,  81),I=1,7) /-1,-1,-1, 1, 1, 0,-1/
      DATA (NHEL(I,  82),I=1,7) /-1,-1,-1, 1, 1, 0, 1/
      DATA (NHEL(I,  83),I=1,7) /-1,-1,-1, 1, 1, 1,-1/
      DATA (NHEL(I,  84),I=1,7) /-1,-1,-1, 1, 1, 1, 1/
      DATA (NHEL(I,  85),I=1,7) /-1,-1,-1,-1,-1,-1,-1/
      DATA (NHEL(I,  86),I=1,7) /-1,-1,-1,-1,-1,-1, 1/
      DATA (NHEL(I,  87),I=1,7) /-1,-1,-1,-1,-1, 0,-1/
      DATA (NHEL(I,  88),I=1,7) /-1,-1,-1,-1,-1, 0, 1/
      DATA (NHEL(I,  89),I=1,7) /-1,-1,-1,-1,-1, 1,-1/
      DATA (NHEL(I,  90),I=1,7) /-1,-1,-1,-1,-1, 1, 1/
      DATA (NHEL(I,  91),I=1,7) /-1,-1,-1,-1, 1,-1,-1/
      DATA (NHEL(I,  92),I=1,7) /-1,-1,-1,-1, 1,-1, 1/
      DATA (NHEL(I,  93),I=1,7) /-1,-1,-1,-1, 1, 0,-1/
      DATA (NHEL(I,  94),I=1,7) /-1,-1,-1,-1, 1, 0, 1/
      DATA (NHEL(I,  95),I=1,7) /-1,-1,-1,-1, 1, 1,-1/
      DATA (NHEL(I,  96),I=1,7) /-1,-1,-1,-1, 1, 1, 1/
      DATA (NHEL(I,  97),I=1,7) /-1,-1, 0, 1,-1,-1,-1/
      DATA (NHEL(I,  98),I=1,7) /-1,-1, 0, 1,-1,-1, 1/
      DATA (NHEL(I,  99),I=1,7) /-1,-1, 0, 1,-1, 0,-1/
      DATA (NHEL(I, 100),I=1,7) /-1,-1, 0, 1,-1, 0, 1/
      DATA (NHEL(I, 101),I=1,7) /-1,-1, 0, 1,-1, 1,-1/
      DATA (NHEL(I, 102),I=1,7) /-1,-1, 0, 1,-1, 1, 1/
      DATA (NHEL(I, 103),I=1,7) /-1,-1, 0, 1, 1,-1,-1/
      DATA (NHEL(I, 104),I=1,7) /-1,-1, 0, 1, 1,-1, 1/
      DATA (NHEL(I, 105),I=1,7) /-1,-1, 0, 1, 1, 0,-1/
      DATA (NHEL(I, 106),I=1,7) /-1,-1, 0, 1, 1, 0, 1/
      DATA (NHEL(I, 107),I=1,7) /-1,-1, 0, 1, 1, 1,-1/
      DATA (NHEL(I, 108),I=1,7) /-1,-1, 0, 1, 1, 1, 1/
      DATA (NHEL(I, 109),I=1,7) /-1,-1, 0,-1,-1,-1,-1/
      DATA (NHEL(I, 110),I=1,7) /-1,-1, 0,-1,-1,-1, 1/
      DATA (NHEL(I, 111),I=1,7) /-1,-1, 0,-1,-1, 0,-1/
      DATA (NHEL(I, 112),I=1,7) /-1,-1, 0,-1,-1, 0, 1/
      DATA (NHEL(I, 113),I=1,7) /-1,-1, 0,-1,-1, 1,-1/
      DATA (NHEL(I, 114),I=1,7) /-1,-1, 0,-1,-1, 1, 1/
      DATA (NHEL(I, 115),I=1,7) /-1,-1, 0,-1, 1,-1,-1/
      DATA (NHEL(I, 116),I=1,7) /-1,-1, 0,-1, 1,-1, 1/
      DATA (NHEL(I, 117),I=1,7) /-1,-1, 0,-1, 1, 0,-1/
      DATA (NHEL(I, 118),I=1,7) /-1,-1, 0,-1, 1, 0, 1/
      DATA (NHEL(I, 119),I=1,7) /-1,-1, 0,-1, 1, 1,-1/
      DATA (NHEL(I, 120),I=1,7) /-1,-1, 0,-1, 1, 1, 1/
      DATA (NHEL(I, 121),I=1,7) /-1,-1, 1, 1,-1,-1,-1/
      DATA (NHEL(I, 122),I=1,7) /-1,-1, 1, 1,-1,-1, 1/
      DATA (NHEL(I, 123),I=1,7) /-1,-1, 1, 1,-1, 0,-1/
      DATA (NHEL(I, 124),I=1,7) /-1,-1, 1, 1,-1, 0, 1/
      DATA (NHEL(I, 125),I=1,7) /-1,-1, 1, 1,-1, 1,-1/
      DATA (NHEL(I, 126),I=1,7) /-1,-1, 1, 1,-1, 1, 1/
      DATA (NHEL(I, 127),I=1,7) /-1,-1, 1, 1, 1,-1,-1/
      DATA (NHEL(I, 128),I=1,7) /-1,-1, 1, 1, 1,-1, 1/
      DATA (NHEL(I, 129),I=1,7) /-1,-1, 1, 1, 1, 0,-1/
      DATA (NHEL(I, 130),I=1,7) /-1,-1, 1, 1, 1, 0, 1/
      DATA (NHEL(I, 131),I=1,7) /-1,-1, 1, 1, 1, 1,-1/
      DATA (NHEL(I, 132),I=1,7) /-1,-1, 1, 1, 1, 1, 1/
      DATA (NHEL(I, 133),I=1,7) /-1,-1, 1,-1,-1,-1,-1/
      DATA (NHEL(I, 134),I=1,7) /-1,-1, 1,-1,-1,-1, 1/
      DATA (NHEL(I, 135),I=1,7) /-1,-1, 1,-1,-1, 0,-1/
      DATA (NHEL(I, 136),I=1,7) /-1,-1, 1,-1,-1, 0, 1/
      DATA (NHEL(I, 137),I=1,7) /-1,-1, 1,-1,-1, 1,-1/
      DATA (NHEL(I, 138),I=1,7) /-1,-1, 1,-1,-1, 1, 1/
      DATA (NHEL(I, 139),I=1,7) /-1,-1, 1,-1, 1,-1,-1/
      DATA (NHEL(I, 140),I=1,7) /-1,-1, 1,-1, 1,-1, 1/
      DATA (NHEL(I, 141),I=1,7) /-1,-1, 1,-1, 1, 0,-1/
      DATA (NHEL(I, 142),I=1,7) /-1,-1, 1,-1, 1, 0, 1/
      DATA (NHEL(I, 143),I=1,7) /-1,-1, 1,-1, 1, 1,-1/
      DATA (NHEL(I, 144),I=1,7) /-1,-1, 1,-1, 1, 1, 1/
      DATA (NHEL(I, 145),I=1,7) / 1, 1,-1, 1,-1,-1,-1/
      DATA (NHEL(I, 146),I=1,7) / 1, 1,-1, 1,-1,-1, 1/
      DATA (NHEL(I, 147),I=1,7) / 1, 1,-1, 1,-1, 0,-1/
      DATA (NHEL(I, 148),I=1,7) / 1, 1,-1, 1,-1, 0, 1/
      DATA (NHEL(I, 149),I=1,7) / 1, 1,-1, 1,-1, 1,-1/
      DATA (NHEL(I, 150),I=1,7) / 1, 1,-1, 1,-1, 1, 1/
      DATA (NHEL(I, 151),I=1,7) / 1, 1,-1, 1, 1,-1,-1/
      DATA (NHEL(I, 152),I=1,7) / 1, 1,-1, 1, 1,-1, 1/
      DATA (NHEL(I, 153),I=1,7) / 1, 1,-1, 1, 1, 0,-1/
      DATA (NHEL(I, 154),I=1,7) / 1, 1,-1, 1, 1, 0, 1/
      DATA (NHEL(I, 155),I=1,7) / 1, 1,-1, 1, 1, 1,-1/
      DATA (NHEL(I, 156),I=1,7) / 1, 1,-1, 1, 1, 1, 1/
      DATA (NHEL(I, 157),I=1,7) / 1, 1,-1,-1,-1,-1,-1/
      DATA (NHEL(I, 158),I=1,7) / 1, 1,-1,-1,-1,-1, 1/
      DATA (NHEL(I, 159),I=1,7) / 1, 1,-1,-1,-1, 0,-1/
      DATA (NHEL(I, 160),I=1,7) / 1, 1,-1,-1,-1, 0, 1/
      DATA (NHEL(I, 161),I=1,7) / 1, 1,-1,-1,-1, 1,-1/
      DATA (NHEL(I, 162),I=1,7) / 1, 1,-1,-1,-1, 1, 1/
      DATA (NHEL(I, 163),I=1,7) / 1, 1,-1,-1, 1,-1,-1/
      DATA (NHEL(I, 164),I=1,7) / 1, 1,-1,-1, 1,-1, 1/
      DATA (NHEL(I, 165),I=1,7) / 1, 1,-1,-1, 1, 0,-1/
      DATA (NHEL(I, 166),I=1,7) / 1, 1,-1,-1, 1, 0, 1/
      DATA (NHEL(I, 167),I=1,7) / 1, 1,-1,-1, 1, 1,-1/
      DATA (NHEL(I, 168),I=1,7) / 1, 1,-1,-1, 1, 1, 1/
      DATA (NHEL(I, 169),I=1,7) / 1, 1, 0, 1,-1,-1,-1/
      DATA (NHEL(I, 170),I=1,7) / 1, 1, 0, 1,-1,-1, 1/
      DATA (NHEL(I, 171),I=1,7) / 1, 1, 0, 1,-1, 0,-1/
      DATA (NHEL(I, 172),I=1,7) / 1, 1, 0, 1,-1, 0, 1/
      DATA (NHEL(I, 173),I=1,7) / 1, 1, 0, 1,-1, 1,-1/
      DATA (NHEL(I, 174),I=1,7) / 1, 1, 0, 1,-1, 1, 1/
      DATA (NHEL(I, 175),I=1,7) / 1, 1, 0, 1, 1,-1,-1/
      DATA (NHEL(I, 176),I=1,7) / 1, 1, 0, 1, 1,-1, 1/
      DATA (NHEL(I, 177),I=1,7) / 1, 1, 0, 1, 1, 0,-1/
      DATA (NHEL(I, 178),I=1,7) / 1, 1, 0, 1, 1, 0, 1/
      DATA (NHEL(I, 179),I=1,7) / 1, 1, 0, 1, 1, 1,-1/
      DATA (NHEL(I, 180),I=1,7) / 1, 1, 0, 1, 1, 1, 1/
      DATA (NHEL(I, 181),I=1,7) / 1, 1, 0,-1,-1,-1,-1/
      DATA (NHEL(I, 182),I=1,7) / 1, 1, 0,-1,-1,-1, 1/
      DATA (NHEL(I, 183),I=1,7) / 1, 1, 0,-1,-1, 0,-1/
      DATA (NHEL(I, 184),I=1,7) / 1, 1, 0,-1,-1, 0, 1/
      DATA (NHEL(I, 185),I=1,7) / 1, 1, 0,-1,-1, 1,-1/
      DATA (NHEL(I, 186),I=1,7) / 1, 1, 0,-1,-1, 1, 1/
      DATA (NHEL(I, 187),I=1,7) / 1, 1, 0,-1, 1,-1,-1/
      DATA (NHEL(I, 188),I=1,7) / 1, 1, 0,-1, 1,-1, 1/
      DATA (NHEL(I, 189),I=1,7) / 1, 1, 0,-1, 1, 0,-1/
      DATA (NHEL(I, 190),I=1,7) / 1, 1, 0,-1, 1, 0, 1/
      DATA (NHEL(I, 191),I=1,7) / 1, 1, 0,-1, 1, 1,-1/
      DATA (NHEL(I, 192),I=1,7) / 1, 1, 0,-1, 1, 1, 1/
      DATA (NHEL(I, 193),I=1,7) / 1, 1, 1, 1,-1,-1,-1/
      DATA (NHEL(I, 194),I=1,7) / 1, 1, 1, 1,-1,-1, 1/
      DATA (NHEL(I, 195),I=1,7) / 1, 1, 1, 1,-1, 0,-1/
      DATA (NHEL(I, 196),I=1,7) / 1, 1, 1, 1,-1, 0, 1/
      DATA (NHEL(I, 197),I=1,7) / 1, 1, 1, 1,-1, 1,-1/
      DATA (NHEL(I, 198),I=1,7) / 1, 1, 1, 1,-1, 1, 1/
      DATA (NHEL(I, 199),I=1,7) / 1, 1, 1, 1, 1,-1,-1/
      DATA (NHEL(I, 200),I=1,7) / 1, 1, 1, 1, 1,-1, 1/
      DATA (NHEL(I, 201),I=1,7) / 1, 1, 1, 1, 1, 0,-1/
      DATA (NHEL(I, 202),I=1,7) / 1, 1, 1, 1, 1, 0, 1/
      DATA (NHEL(I, 203),I=1,7) / 1, 1, 1, 1, 1, 1,-1/
      DATA (NHEL(I, 204),I=1,7) / 1, 1, 1, 1, 1, 1, 1/
      DATA (NHEL(I, 205),I=1,7) / 1, 1, 1,-1,-1,-1,-1/
      DATA (NHEL(I, 206),I=1,7) / 1, 1, 1,-1,-1,-1, 1/
      DATA (NHEL(I, 207),I=1,7) / 1, 1, 1,-1,-1, 0,-1/
      DATA (NHEL(I, 208),I=1,7) / 1, 1, 1,-1,-1, 0, 1/
      DATA (NHEL(I, 209),I=1,7) / 1, 1, 1,-1,-1, 1,-1/
      DATA (NHEL(I, 210),I=1,7) / 1, 1, 1,-1,-1, 1, 1/
      DATA (NHEL(I, 211),I=1,7) / 1, 1, 1,-1, 1,-1,-1/
      DATA (NHEL(I, 212),I=1,7) / 1, 1, 1,-1, 1,-1, 1/
      DATA (NHEL(I, 213),I=1,7) / 1, 1, 1,-1, 1, 0,-1/
      DATA (NHEL(I, 214),I=1,7) / 1, 1, 1,-1, 1, 0, 1/
      DATA (NHEL(I, 215),I=1,7) / 1, 1, 1,-1, 1, 1,-1/
      DATA (NHEL(I, 216),I=1,7) / 1, 1, 1,-1, 1, 1, 1/
      DATA (NHEL(I, 217),I=1,7) / 1,-1,-1, 1,-1,-1,-1/
      DATA (NHEL(I, 218),I=1,7) / 1,-1,-1, 1,-1,-1, 1/
      DATA (NHEL(I, 219),I=1,7) / 1,-1,-1, 1,-1, 0,-1/
      DATA (NHEL(I, 220),I=1,7) / 1,-1,-1, 1,-1, 0, 1/
      DATA (NHEL(I, 221),I=1,7) / 1,-1,-1, 1,-1, 1,-1/
      DATA (NHEL(I, 222),I=1,7) / 1,-1,-1, 1,-1, 1, 1/
      DATA (NHEL(I, 223),I=1,7) / 1,-1,-1, 1, 1,-1,-1/
      DATA (NHEL(I, 224),I=1,7) / 1,-1,-1, 1, 1,-1, 1/
      DATA (NHEL(I, 225),I=1,7) / 1,-1,-1, 1, 1, 0,-1/
      DATA (NHEL(I, 226),I=1,7) / 1,-1,-1, 1, 1, 0, 1/
      DATA (NHEL(I, 227),I=1,7) / 1,-1,-1, 1, 1, 1,-1/
      DATA (NHEL(I, 228),I=1,7) / 1,-1,-1, 1, 1, 1, 1/
      DATA (NHEL(I, 229),I=1,7) / 1,-1,-1,-1,-1,-1,-1/
      DATA (NHEL(I, 230),I=1,7) / 1,-1,-1,-1,-1,-1, 1/
      DATA (NHEL(I, 231),I=1,7) / 1,-1,-1,-1,-1, 0,-1/
      DATA (NHEL(I, 232),I=1,7) / 1,-1,-1,-1,-1, 0, 1/
      DATA (NHEL(I, 233),I=1,7) / 1,-1,-1,-1,-1, 1,-1/
      DATA (NHEL(I, 234),I=1,7) / 1,-1,-1,-1,-1, 1, 1/
      DATA (NHEL(I, 235),I=1,7) / 1,-1,-1,-1, 1,-1,-1/
      DATA (NHEL(I, 236),I=1,7) / 1,-1,-1,-1, 1,-1, 1/
      DATA (NHEL(I, 237),I=1,7) / 1,-1,-1,-1, 1, 0,-1/
      DATA (NHEL(I, 238),I=1,7) / 1,-1,-1,-1, 1, 0, 1/
      DATA (NHEL(I, 239),I=1,7) / 1,-1,-1,-1, 1, 1,-1/
      DATA (NHEL(I, 240),I=1,7) / 1,-1,-1,-1, 1, 1, 1/
      DATA (NHEL(I, 241),I=1,7) / 1,-1, 0, 1,-1,-1,-1/
      DATA (NHEL(I, 242),I=1,7) / 1,-1, 0, 1,-1,-1, 1/
      DATA (NHEL(I, 243),I=1,7) / 1,-1, 0, 1,-1, 0,-1/
      DATA (NHEL(I, 244),I=1,7) / 1,-1, 0, 1,-1, 0, 1/
      DATA (NHEL(I, 245),I=1,7) / 1,-1, 0, 1,-1, 1,-1/
      DATA (NHEL(I, 246),I=1,7) / 1,-1, 0, 1,-1, 1, 1/
      DATA (NHEL(I, 247),I=1,7) / 1,-1, 0, 1, 1,-1,-1/
      DATA (NHEL(I, 248),I=1,7) / 1,-1, 0, 1, 1,-1, 1/
      DATA (NHEL(I, 249),I=1,7) / 1,-1, 0, 1, 1, 0,-1/
      DATA (NHEL(I, 250),I=1,7) / 1,-1, 0, 1, 1, 0, 1/
      DATA (NHEL(I, 251),I=1,7) / 1,-1, 0, 1, 1, 1,-1/
      DATA (NHEL(I, 252),I=1,7) / 1,-1, 0, 1, 1, 1, 1/
      DATA (NHEL(I, 253),I=1,7) / 1,-1, 0,-1,-1,-1,-1/
      DATA (NHEL(I, 254),I=1,7) / 1,-1, 0,-1,-1,-1, 1/
      DATA (NHEL(I, 255),I=1,7) / 1,-1, 0,-1,-1, 0,-1/
      DATA (NHEL(I, 256),I=1,7) / 1,-1, 0,-1,-1, 0, 1/
      DATA (NHEL(I, 257),I=1,7) / 1,-1, 0,-1,-1, 1,-1/
      DATA (NHEL(I, 258),I=1,7) / 1,-1, 0,-1,-1, 1, 1/
      DATA (NHEL(I, 259),I=1,7) / 1,-1, 0,-1, 1,-1,-1/
      DATA (NHEL(I, 260),I=1,7) / 1,-1, 0,-1, 1,-1, 1/
      DATA (NHEL(I, 261),I=1,7) / 1,-1, 0,-1, 1, 0,-1/
      DATA (NHEL(I, 262),I=1,7) / 1,-1, 0,-1, 1, 0, 1/
      DATA (NHEL(I, 263),I=1,7) / 1,-1, 0,-1, 1, 1,-1/
      DATA (NHEL(I, 264),I=1,7) / 1,-1, 0,-1, 1, 1, 1/
      DATA (NHEL(I, 265),I=1,7) / 1,-1, 1, 1,-1,-1,-1/
      DATA (NHEL(I, 266),I=1,7) / 1,-1, 1, 1,-1,-1, 1/
      DATA (NHEL(I, 267),I=1,7) / 1,-1, 1, 1,-1, 0,-1/
      DATA (NHEL(I, 268),I=1,7) / 1,-1, 1, 1,-1, 0, 1/
      DATA (NHEL(I, 269),I=1,7) / 1,-1, 1, 1,-1, 1,-1/
      DATA (NHEL(I, 270),I=1,7) / 1,-1, 1, 1,-1, 1, 1/
      DATA (NHEL(I, 271),I=1,7) / 1,-1, 1, 1, 1,-1,-1/
      DATA (NHEL(I, 272),I=1,7) / 1,-1, 1, 1, 1,-1, 1/
      DATA (NHEL(I, 273),I=1,7) / 1,-1, 1, 1, 1, 0,-1/
      DATA (NHEL(I, 274),I=1,7) / 1,-1, 1, 1, 1, 0, 1/
      DATA (NHEL(I, 275),I=1,7) / 1,-1, 1, 1, 1, 1,-1/
      DATA (NHEL(I, 276),I=1,7) / 1,-1, 1, 1, 1, 1, 1/
      DATA (NHEL(I, 277),I=1,7) / 1,-1, 1,-1,-1,-1,-1/
      DATA (NHEL(I, 278),I=1,7) / 1,-1, 1,-1,-1,-1, 1/
      DATA (NHEL(I, 279),I=1,7) / 1,-1, 1,-1,-1, 0,-1/
      DATA (NHEL(I, 280),I=1,7) / 1,-1, 1,-1,-1, 0, 1/
      DATA (NHEL(I, 281),I=1,7) / 1,-1, 1,-1,-1, 1,-1/
      DATA (NHEL(I, 282),I=1,7) / 1,-1, 1,-1,-1, 1, 1/
      DATA (NHEL(I, 283),I=1,7) / 1,-1, 1,-1, 1,-1,-1/
      DATA (NHEL(I, 284),I=1,7) / 1,-1, 1,-1, 1,-1, 1/
      DATA (NHEL(I, 285),I=1,7) / 1,-1, 1,-1, 1, 0,-1/
      DATA (NHEL(I, 286),I=1,7) / 1,-1, 1,-1, 1, 0, 1/
      DATA (NHEL(I, 287),I=1,7) / 1,-1, 1,-1, 1, 1,-1/
      DATA (NHEL(I, 288),I=1,7) / 1,-1, 1,-1, 1, 1, 1/
      LOGICAL GOODHEL(NCOMB)
      DATA GOODHEL/NCOMB*.FALSE./
      INTEGER NTRY
      DATA NTRY/0/
      DATA IDEN/96/
C     ----------
C     BEGIN CODE
C     ----------
      NTRY=NTRY+1
      ANS = 0D0
      DO IHEL=1,NCOMB
        IF (GOODHEL(IHEL) .OR. NTRY .LT. 2) THEN
          IF (NTRY.LT.2) THEN
C           for the first ps-point, check for helicities that give
C           identical matrix elements
            T=MATRIX_2(P ,NHEL(1,IHEL))
            T_SAVE(IHEL)=T
            T_IDENT(IHEL)=-1
            DO I=1,IHEL-1
              IF (T.EQ.0D0) EXIT
              IF (T_SAVE(I).EQ.0D0) CYCLE
              IF (ABS(T/T_SAVE(I)-1D0) .LT. 1D-12) THEN
C               WRITE (*,*) 'FOUND IDENTICAL',T,IHEL,T_SAVE(I),I
                T_IDENT(IHEL) = I
              ENDIF
            ENDDO
          ELSE
            IF (T_IDENT(IHEL).GT.0) THEN
C             if two helicity states are identical, dont recompute
              T=T_SAVE(T_IDENT(IHEL))
              T_SAVE(IHEL)=T
            ELSE
              T=MATRIX_2(P ,NHEL(1,IHEL))
              T_SAVE(IHEL)=T
            ENDIF
          ENDIF
C         add to the sum of helicities
          ANS=ANS+T
          IF (T .NE. 0D0 .AND. .NOT. GOODHEL(IHEL)) THEN
            GOODHEL(IHEL)=.TRUE.
          ENDIF
        ENDIF
      ENDDO
      ANS=ANS/DBLE(IDEN)
      WGT_ME_REAL=ANS
      END


      REAL*8 FUNCTION MATRIX_2(P,NHEL)
C     
C     Generated by MadGraph5_aMC@NLO v. 2.6.6, 2018-06-28
C     By the MadGraph5_aMC@NLO Development Team
C     Visit launchpad.net/madgraph5 and amcatnlo.web.cern.ch
C     
C     Returns amplitude squared summed/avg over colors
C     for the point with external lines W(0:6,NEXTERNAL)
C     
C     Process: g u > w+ x0 > w+ e+ e- z d WEIGHTED<=5 [ all = QCD ] / a
C     Process: g c > w+ x0 > w+ e+ e- z s WEIGHTED<=5 [ all = QCD ] / a
C     Process: g u > w+ x0 > w+ mu+ mu- z d WEIGHTED<=5 [ all = QCD ]
C      / a
C     Process: g c > w+ x0 > w+ mu+ mu- z s WEIGHTED<=5 [ all = QCD ]
C      / a
C     
      IMPLICIT NONE
C     
C     CONSTANTS
C     
      INTEGER    NGRAPHS
      PARAMETER (NGRAPHS=2)
      INTEGER    NWAVEFUNCS, NCOLOR
      PARAMETER (NWAVEFUNCS=9, NCOLOR=1)
      REAL*8     ZERO
      PARAMETER (ZERO=0D0)
      COMPLEX*16 IMAG1
      PARAMETER (IMAG1=(0D0,1D0))
      INCLUDE 'nexternal.inc'
      INCLUDE 'coupl.inc'
C     
C     ARGUMENTS 
C     
      REAL*8 P(0:3,NEXTERNAL)
      INTEGER NHEL(NEXTERNAL)
C     
C     LOCAL VARIABLES 
C     
      INTEGER I,J
      INTEGER IC(NEXTERNAL)
      DATA IC /NEXTERNAL*1/
      REAL*8 DENOM(NCOLOR), CF(NCOLOR,NCOLOR)
      COMPLEX*16 ZTEMP, AMP(NGRAPHS), JAMP(NCOLOR), W(8,NWAVEFUNCS)
C     
C     COLOR DATA
C     
      DATA DENOM(1)/1/
      DATA (CF(I,  1),I=  1,  1) /    4/
C     1 T(1,7,2)
C     ----------
C     BEGIN CODE
C     ----------
      CALL VXXXXX(P(0,1),ZERO,NHEL(1),-1*IC(1),W(1,1))
      CALL IXXXXX(P(0,2),ZERO,NHEL(2),+1*IC(2),W(1,2))
      CALL VXXXXX(P(0,3),MDL_MW,NHEL(3),+1*IC(3),W(1,3))
      CALL IXXXXX(P(0,4),ZERO,NHEL(4),-1*IC(4),W(1,4))
      CALL OXXXXX(P(0,5),ZERO,NHEL(5),+1*IC(5),W(1,5))
      CALL VXXXXX(P(0,6),MDL_MZ,NHEL(6),+1*IC(6),W(1,6))
      CALL OXXXXX(P(0,7),ZERO,NHEL(7),+1*IC(7),W(1,7))
      CALL FFV1_2(W(1,2),W(1,1),GC_5,ZERO,ZERO,W(1,8))
      CALL FFV2_4_3(W(1,4),W(1,5),-GC_22,GC_24,MDL_MZ,MDL_WZ,W(1,9))
      CALL FFV2_3(W(1,8),W(1,7),GC_47,MDL_MW,MDL_WW,W(1,5))
      CALL VVS10_1_2_13_3(W(1,9),W(1,6),GC_3007A,GC_3007H1,GC_3007H2
     $ ,GC_3007H3,MDL_MX0,MDL_WX0,W(1,8))
C     Amplitude(s) for diagram number 1
      CALL VVS10_1_11_2_12_0(W(1,5),W(1,3),W(1,8),GC_3005A,GC_3005H1
     $ ,GC_3005H2,GC_3005H3,GC_3005H4,AMP(1))
      CALL FFV1_1(W(1,7),W(1,1),GC_5,ZERO,ZERO,W(1,5))
      CALL FFV2_3(W(1,2),W(1,5),GC_47,MDL_MW,MDL_WW,W(1,7))
C     Amplitude(s) for diagram number 2
      CALL VVS10_1_11_2_12_0(W(1,7),W(1,3),W(1,8),GC_3005A,GC_3005H1
     $ ,GC_3005H2,GC_3005H3,GC_3005H4,AMP(2))
      JAMP(1)=+AMP(1)+AMP(2)
      MATRIX_2 = 0.D0
      DO I = 1, NCOLOR
        ZTEMP = (0.D0,0.D0)
        DO J = 1, NCOLOR
          ZTEMP = ZTEMP + CF(J,I)*JAMP(J)
        ENDDO
        MATRIX_2 = MATRIX_2+ZTEMP*DCONJG(JAMP(I))/DENOM(I)
      ENDDO
      END

