C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
Coup(1) * (Epsilon(1,2,-1,-2)*P(-1,1)*P(-2,2)) + Coup(2) * (Metric(1,2)) + Coup(3) * (P(1,2)*P(2,1) - P(-1,1)*P(-1,2)*Metric(1,2)) + Coup(4) * (P(1,1)*P(2,1) - P(-1,1)*P(-1,1)*Metric(1,2) + P(1,2)*P(2,2) - P(-1,2)*P(-1,2)*Metric(1,2))
C     
      SUBROUTINE MP_VVS10_1_2_13_1(V2, S3, COUP1, COUP2, COUP3, COUP4,
     $  M1, W1,V1)
      IMPLICIT NONE
      COMPLEX*32 CI
      PARAMETER (CI=(0Q0,1Q0))
      COMPLEX*32 V2(*)
      COMPLEX*32 COUP2
      COMPLEX*32 S3(*)
      REAL*16 M1
      COMPLEX*32 TMP0
      COMPLEX*32 P2(0:3)
      REAL*16 W1
      COMPLEX*32 COUP1
      COMPLEX*32 TMP4
      COMPLEX*32 DENOM
      COMPLEX*32 V1(8)
      COMPLEX*32 P1(0:3)
      COMPLEX*32 COUP4
      REAL*16 OM1
      COMPLEX*32 COUP3
      COMPLEX*32 TMP7
      COMPLEX*32 TMP3
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
      TMP0 = (P1(0)*V2(5)-P1(1)*V2(6)-P1(2)*V2(7)-P1(3)*V2(8))
      TMP3 = (P1(0)*P1(0)-P1(1)*P1(1)-P1(2)*P1(2)-P1(3)*P1(3))
      TMP8 = (P2(0)*P2(0)-P2(1)*P2(1)-P2(2)*P2(2)-P2(3)*P2(3))
      DENOM = 1Q0/(P1(0)**2-P1(1)**2-P1(2)**2-P1(3)**2 - M1 * (M1 -CI*
     $  W1))
      V1(5)= DENOM*CI * S3(5)*(COUP1*(P1(1)*(P2(3)*V2(7)-P2(2)*V2(8))
     $ +(P1(2)*(P2(1)*V2(8)-P2(3)*V2(6))+P1(3)*(P2(2)*V2(6)-P2(1)*V2(7)
     $ )))+(COUP4*(P1(0)*(TMP0*(-1Q0)*(OM1*TMP8+ 1Q0)+OM1*TMP4*TMP7)
     $ +(V2(5)*(TMP3+TMP8)-P2(0)*TMP7))+(V2(5)*(TMP4*COUP3-COUP2)+TMP0
     $ *(P1(0)*OM1*COUP2-P2(0)*COUP3))))
      V1(6)= DENOM*(-CI )* S3(5)*(COUP1*(P1(0)*(P2(2)*V2(8)-P2(3)*V2(7)
     $ )+(P1(2)*(P2(3)*V2(5)-P2(0)*V2(8))+P1(3)*(P2(0)*V2(7)-P2(2)
     $ *V2(5))))+(COUP4*(P1(1)*(TMP0*(OM1*TMP8+ 1Q0)-OM1*TMP4*TMP7)
     $ +(V2(6)*(-1Q0)*(TMP3+TMP8)+P2(1)*TMP7))+(V2(6)*(COUP2-TMP4
     $ *COUP3)+TMP0*(P2(1)*COUP3-P1(1)*OM1*COUP2))))
      V1(7)= DENOM*(-CI )* S3(5)*(COUP1*(P1(0)*(P2(3)*V2(6)-P2(1)*V2(8)
     $ )+(P1(1)*(P2(0)*V2(8)-P2(3)*V2(5))+P1(3)*(P2(1)*V2(5)-P2(0)
     $ *V2(6))))+(COUP4*(P1(2)*(TMP0*(OM1*TMP8+ 1Q0)-OM1*TMP4*TMP7)
     $ +(V2(7)*(-1Q0)*(TMP3+TMP8)+P2(2)*TMP7))+(V2(7)*(COUP2-TMP4
     $ *COUP3)+TMP0*(P2(2)*COUP3-P1(2)*OM1*COUP2))))
      V1(8)= DENOM*(-CI )* S3(5)*(COUP1*(P1(0)*(P2(1)*V2(7)-P2(2)*V2(6)
     $ )+(P1(1)*(P2(2)*V2(5)-P2(0)*V2(7))+P1(2)*(P2(0)*V2(6)-P2(1)
     $ *V2(5))))+(COUP4*(P1(3)*(TMP0*(OM1*TMP8+ 1Q0)-OM1*TMP4*TMP7)
     $ +(V2(8)*(-1Q0)*(TMP3+TMP8)+P2(3)*TMP7))+(V2(8)*(COUP2-TMP4
     $ *COUP3)+TMP0*(P2(3)*COUP3-P1(3)*OM1*COUP2))))
      END


