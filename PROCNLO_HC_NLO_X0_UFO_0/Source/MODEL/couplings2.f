ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c      written by the UFO converter
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc

      SUBROUTINE COUP2()

      IMPLICIT NONE
      INCLUDE 'model_functions.inc'

      DOUBLE PRECISION PI, ZERO
      PARAMETER  (PI=3.141592653589793D0)
      PARAMETER  (ZERO=0D0)
      INCLUDE 'input.inc'
      INCLUDE 'coupl.inc'
      R2_UUZ_V2 = ((MDL_CW*MDL_EE*MDL_COMPLEXI)/(2.000000D+00*MDL_SW))
     $ *MDL_R2MIXEDFACTOR_FIN_
      R2_UUZ_V5 = (-(MDL_EE*MDL_COMPLEXI*MDL_SW)/(6.000000D+00*MDL_CW))
     $ *MDL_R2MIXEDFACTOR_FIN_
      R2_DXUW = ((MDL_CKM11*MDL_EE*MDL_COMPLEXI)/(MDL_SW*MDL_SQRT__2))
     $ *MDL_R2MIXEDFACTOR_FIN_
      GC_5 = MDL_COMPLEXI*G
      END
