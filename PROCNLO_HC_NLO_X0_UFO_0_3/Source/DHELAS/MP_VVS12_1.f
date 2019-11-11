C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     P(1,2)*P(2,2) - P(-1,2)*P(-1,2)*Metric(1,2)
C     
      SUBROUTINE MP_VVS12_1(V2, S3, COUP, M1, W1,V1)
      IMPLICIT NONE
      COMPLEX*32 CI
      PARAMETER (CI=(0Q0,1Q0))
      COMPLEX*32 V2(*)
      COMPLEX*32 S3(*)
      REAL*16 M1
      COMPLEX*32 TMP0
      COMPLEX*32 P2(0:3)
      REAL*16 W1
      COMPLEX*32 TMP4
      COMPLEX*32 DENOM
      COMPLEX*32 V1(8)
      COMPLEX*32 P1(0:3)
      REAL*16 OM1
      COMPLEX*32 COUP
      COMPLEX*32 TMP7
      COMPLEX*32 TMP8
      OM1 = 0Q0
      IF (M1.NE.0Q0) OM1=1Q0/M1**2
      P2(0) = V2(1)
      P2(1) = V2(2)
      P2(2) = V2(3)
      P2(3) = V2(4)
      V1(1) = +V2(1)+S3(1)
      V1(2) = +V2(2)+S3(2)
      V1(3) = +V2(3)+S3(3)
      V1(4) = +V2(4)+S3(4)
      P1(0) = -V1(1)
      P1(1) = -V1(2)
      P1(2) = -V1(3)
      P1(3) = -V1(4)
      TMP4 = (P1(0)*P2(0)-P1(1)*P2(1)-P1(2)*P2(2)-P1(3)*P2(3))
      TMP7 = (P2(0)*V2(5)-P2(1)*V2(6)-P2(2)*V2(7)-P2(3)*V2(8))
      TMP8 = (P2(0)*P2(0)-P2(1)*P2(1)-P2(2)*P2(2)-P2(3)*P2(3))
      TMP0 = (P1(0)*V2(5)-P1(1)*V2(6)-P1(2)*V2(7)-P1(3)*V2(8))
      DENOM = COUP/(P1(0)**2-P1(1)**2-P1(2)**2-P1(3)**2 - M1 * (M1 -CI
     $ * W1))
      V1(5)= DENOM*S3(5)*(OM1*P1(0)*(-CI*(TMP0*TMP8)+CI*(TMP4*TMP7))+(
     $ -CI*(P2(0)*TMP7)+CI*(V2(5)*TMP8)))
      V1(6)= DENOM*S3(5)*(OM1*P1(1)*(-CI*(TMP0*TMP8)+CI*(TMP4*TMP7))+(
     $ -CI*(P2(1)*TMP7)+CI*(V2(6)*TMP8)))
      V1(7)= DENOM*S3(5)*(OM1*P1(2)*(-CI*(TMP0*TMP8)+CI*(TMP4*TMP7))+(
     $ -CI*(P2(2)*TMP7)+CI*(V2(7)*TMP8)))
      V1(8)= DENOM*S3(5)*(OM1*P1(3)*(-CI*(TMP0*TMP8)+CI*(TMP4*TMP7))+(
     $ -CI*(P2(3)*TMP7)+CI*(V2(8)*TMP8)))
      END


