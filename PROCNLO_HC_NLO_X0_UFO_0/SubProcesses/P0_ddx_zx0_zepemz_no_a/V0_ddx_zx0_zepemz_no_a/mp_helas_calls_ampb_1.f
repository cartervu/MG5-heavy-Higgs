      SUBROUTINE MP_HELAS_CALLS_AMPB_1(P,NHEL,H,IC)
C     
      USE POLYNOMIAL_CONSTANTS
      IMPLICIT NONE
C     
C     CONSTANTS
C     
      INTEGER    NEXTERNAL
      PARAMETER (NEXTERNAL=6)
      INTEGER    NCOMB
      PARAMETER (NCOMB=144)

      INTEGER NBORNAMPS
      PARAMETER (NBORNAMPS=3)
      INTEGER    NLOOPS, NLOOPGROUPS, NCTAMPS
      PARAMETER (NLOOPS=3, NLOOPGROUPS=1, NCTAMPS=3)
      INTEGER    NLOOPAMPS
      PARAMETER (NLOOPAMPS=6)
      INTEGER    NWAVEFUNCS,NLOOPWAVEFUNCS
      PARAMETER (NWAVEFUNCS=16,NLOOPWAVEFUNCS=5)
      REAL*16     ZERO
      PARAMETER (ZERO=0.0E0_16)
      COMPLEX*32     IZERO
      PARAMETER (IZERO=CMPLX(0.0E0_16,0.0E0_16,KIND=16))
C     These are constants related to the split orders
      INTEGER    NSO, NSQUAREDSO, NAMPSO
      PARAMETER (NSO=1, NSQUAREDSO=1, NAMPSO=2)
C     
C     ARGUMENTS
C     
      REAL*16 P(0:3,NEXTERNAL)
      INTEGER NHEL(NEXTERNAL), IC(NEXTERNAL)
      INTEGER H
C     
C     LOCAL VARIABLES
C     
      INTEGER I,J,K
      COMPLEX*32 COEFS(MAXLWFSIZE,0:VERTEXMAXCOEFS-1,MAXLWFSIZE)
C     
C     GLOBAL VARIABLES
C     
      INCLUDE 'mp_coupl_same_name.inc'

      INTEGER GOODHEL(NCOMB)
      LOGICAL GOODAMP(NSQUAREDSO,NLOOPGROUPS)
      COMMON/FILTERS/GOODAMP,GOODHEL

      INTEGER SQSO_TARGET
      COMMON/SOCHOICE/SQSO_TARGET

      LOGICAL UVCT_REQ_SO_DONE,MP_UVCT_REQ_SO_DONE,CT_REQ_SO_DONE
     $ ,MP_CT_REQ_SO_DONE,LOOP_REQ_SO_DONE,MP_LOOP_REQ_SO_DONE
     $ ,CTCALL_REQ_SO_DONE,FILTER_SO
      COMMON/SO_REQS/UVCT_REQ_SO_DONE,MP_UVCT_REQ_SO_DONE
     $ ,CT_REQ_SO_DONE,MP_CT_REQ_SO_DONE,LOOP_REQ_SO_DONE
     $ ,MP_LOOP_REQ_SO_DONE,CTCALL_REQ_SO_DONE,FILTER_SO

      COMPLEX*32 AMP(NBORNAMPS)
      COMMON/MP_AMPS/AMP
      COMPLEX*32 W(20,NWAVEFUNCS)
      COMMON/MP_W/W

      COMPLEX*32 WL(MAXLWFSIZE,0:LOOPMAXCOEFS-1,MAXLWFSIZE,
     $ -1:NLOOPWAVEFUNCS)
      COMPLEX*32 PL(0:3,-1:NLOOPWAVEFUNCS)
      COMMON/MP_WL/WL,PL

      COMPLEX*32 AMPL(3,NCTAMPS)
      COMMON/MP_AMPL/AMPL

C     
C     ----------
C     BEGIN CODE
C     ----------

C     The target squared split order contribution is already reached
C      if true.
      IF (FILTER_SO.AND.MP_CT_REQ_SO_DONE) THEN
        GOTO 1001
      ENDIF

      CALL MP_IXXXXX(P(0,1),ZERO,NHEL(1),+1*IC(1),W(1,1))
      CALL MP_OXXXXX(P(0,2),ZERO,NHEL(2),-1*IC(2),W(1,2))
      CALL MP_VXXXXX(P(0,3),MDL_MZ,NHEL(3),+1*IC(3),W(1,3))
      CALL MP_IXXXXX(P(0,4),ZERO,NHEL(4),-1*IC(4),W(1,4))
      CALL MP_OXXXXX(P(0,5),ZERO,NHEL(5),+1*IC(5),W(1,5))
      CALL MP_VXXXXX(P(0,6),MDL_MZ,NHEL(6),+1*IC(6),W(1,6))
      CALL MP_FFV2_3_3(W(1,1),W(1,2),-GC_22,GC_23,MDL_MZ,MDL_WZ,W(1,7))
      CALL MP_VVS10_1_2_13_3(W(1,3),W(1,6),GC_3007A,GC_3007H1
     $ ,GC_3007H2,GC_3007H3,MDL_MX0,MDL_WX0,W(1,8))
      CALL MP_FFV2_4_3(W(1,4),W(1,5),-GC_22,GC_24,MDL_MZ,MDL_WZ,W(1,9))
C     Amplitude(s) for born diagram with ID 1
      CALL MP_VVS10_1_2_13_0(W(1,7),W(1,9),W(1,8),GC_3007A,GC_3007H1
     $ ,GC_3007H2,GC_3007H3,AMP(1))
      CALL MP_VVS10_1_2_13_3(W(1,7),W(1,3),GC_3007A,GC_3007H1
     $ ,GC_3007H2,GC_3007H3,MDL_MX0,MDL_WX0,W(1,10))
C     Amplitude(s) for born diagram with ID 2
      CALL MP_VVS10_1_2_13_0(W(1,9),W(1,6),W(1,10),GC_3007A,GC_3007H1
     $ ,GC_3007H2,GC_3007H3,AMP(2))
      CALL MP_VVS10_1_2_13_3(W(1,7),W(1,6),GC_3007A,GC_3007H1
     $ ,GC_3007H2,GC_3007H3,MDL_MX0,MDL_WX0,W(1,11))
C     Amplitude(s) for born diagram with ID 3
      CALL MP_VVS10_1_2_13_0(W(1,3),W(1,9),W(1,11),GC_3007A,GC_3007H1
     $ ,GC_3007H2,GC_3007H3,AMP(3))
      CALL MP_VVS10_1_2_13_1(W(1,9),W(1,8),GC_3007A,GC_3007H1
     $ ,GC_3007H2,GC_3007H3,MDL_MZ,MDL_WZ,W(1,12))
C     Counter-term amplitude(s) for loop diagram number 4
      CALL MP_FFV2_3_0(W(1,1),W(1,2),W(1,12),-R2_UUZ_V2,R2_UUZ_V5
     $ ,AMPL(1,1))
      CALL MP_VVS10_1_2_13_3(W(1,3),W(1,9),GC_3007A,GC_3007H1
     $ ,GC_3007H2,GC_3007H3,MDL_MX0,MDL_WX0,W(1,13))
      CALL MP_VVS10_1_2_13_1(W(1,6),W(1,13),GC_3007A,GC_3007H1
     $ ,GC_3007H2,GC_3007H3,MDL_MZ,MDL_WZ,W(1,14))
C     Counter-term amplitude(s) for loop diagram number 5
      CALL MP_FFV2_3_0(W(1,1),W(1,2),W(1,14),-R2_UUZ_V2,R2_UUZ_V5
     $ ,AMPL(1,2))
      CALL MP_VVS10_1_2_13_3(W(1,6),W(1,9),GC_3007A,GC_3007H1
     $ ,GC_3007H2,GC_3007H3,MDL_MX0,MDL_WX0,W(1,15))
      CALL MP_VVS10_1_2_13_1(W(1,3),W(1,15),GC_3007A,GC_3007H1
     $ ,GC_3007H2,GC_3007H3,MDL_MZ,MDL_WZ,W(1,16))
C     Counter-term amplitude(s) for loop diagram number 6
      CALL MP_FFV2_3_0(W(1,1),W(1,2),W(1,16),-R2_UUZ_V2,R2_UUZ_V5
     $ ,AMPL(1,3))
C     At this point, all CT amps needed for (QCD=2), i.e. of split
C      order ID=1, are computed.
      IF(FILTER_SO.AND.SQSO_TARGET.EQ.1) GOTO 2000

      GOTO 1001
 2000 CONTINUE
      MP_CT_REQ_SO_DONE=.TRUE.
 1001 CONTINUE
      END

