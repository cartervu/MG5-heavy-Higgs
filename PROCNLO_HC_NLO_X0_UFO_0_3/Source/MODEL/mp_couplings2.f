ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c      written by the UFO converter
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc

      SUBROUTINE MP_COUP2()

      IMPLICIT NONE
      INCLUDE 'model_functions.inc'
      REAL*16 MP__PI, MP__ZERO
      PARAMETER (MP__PI=3.1415926535897932384626433832795E0_16)
      PARAMETER (MP__ZERO=0E0_16)
      INCLUDE 'mp_input.inc'
      INCLUDE 'mp_coupl.inc'

      MP__R2_DXUW = ((MP__MDL_CKM11*MP__MDL_EE*MP__MDL_COMPLEXI)
     $ /(MP__MDL_SW*MP__MDL_SQRT__2))*MP__MDL_R2MIXEDFACTOR_FIN_
      MP__GC_5 = MP__MDL_COMPLEXI*MP__G
      END
