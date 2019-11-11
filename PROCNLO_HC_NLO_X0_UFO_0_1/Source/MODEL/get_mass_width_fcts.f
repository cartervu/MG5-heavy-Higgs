      DOUBLE PRECISION FUNCTION GET_MASS_FROM_ID(ID)
      IMPLICIT NONE
      INTEGER ID
      INCLUDE 'coupl.inc'

      IF (ID.EQ.5.OR.ID.EQ.-5) THEN
        GET_MASS_FROM_ID=ABS(MDL_MB)
      ELSE IF (ID.EQ.6.OR.ID.EQ.-6) THEN
        GET_MASS_FROM_ID=ABS(MDL_MT)
      ELSE IF (ID.EQ.23) THEN
        GET_MASS_FROM_ID=ABS(MDL_MZ)
      ELSE IF (ID.EQ.24.OR.ID.EQ.-24) THEN
        GET_MASS_FROM_ID=ABS(MDL_MW)
      ELSE IF (ID.EQ.15.OR.ID.EQ.-15) THEN
        GET_MASS_FROM_ID=ABS(MDL_MTA)
      ELSE IF (ID.EQ.25) THEN
        GET_MASS_FROM_ID=ABS(MDL_MX0)
      ELSE
        GET_MASS_FROM_ID=0D0
      ENDIF
      RETURN
      END


      DOUBLE PRECISION FUNCTION GET_WIDTH_FROM_ID(ID)
      IMPLICIT NONE
      INTEGER ID
      INCLUDE 'coupl.inc'

      IF (ID.EQ.6.OR.ID.EQ.-6) THEN
        GET_WIDTH_FROM_ID=ABS(MDL_WT)
      ELSE IF (ID.EQ.23) THEN
        GET_WIDTH_FROM_ID=ABS(MDL_WZ)
      ELSE IF (ID.EQ.24.OR.ID.EQ.-24) THEN
        GET_WIDTH_FROM_ID=ABS(MDL_WW)
      ELSE IF (ID.EQ.25) THEN
        GET_WIDTH_FROM_ID=ABS(MDL_WX0)
      ELSE
        GET_WIDTH_FROM_ID=0D0
      ENDIF
      RETURN
      END


