C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     Gamma(3,2,-1)*ProjM(-1,1)
C     
      SUBROUTINE MP_FFV2L2_1(P2, V3, COUP, M1, W1, P1, COEFF)
      IMPLICIT NONE
      COMPLEX*32 CI
      PARAMETER (CI=(0Q0,1Q0))
      COMPLEX*32 V3(*)
      REAL*16 M1
      INCLUDE 'coef_specs.inc'
      COMPLEX*32 COEFF(MAXLWFSIZE,0:VERTEXMAXCOEFS-1,MAXLWFSIZE)
      COMPLEX*32 P2(0:3)
      REAL*16 W1
      COMPLEX*32 P1(0:3)
      COMPLEX*32 COUP
      P1(0) = +P2(0)+V3(1)
      P1(1) = +P2(1)+V3(2)
      P1(2) = +P2(2)+V3(3)
      P1(3) = +P2(3)+V3(4)
      COEFF(1,0,1)= 0Q0
      COEFF(2,0,1)= 0Q0
      COEFF(3,0,1)= 0Q0
      COEFF(4,0,1)= 0Q0
      COEFF(1,1,1)= 0Q0
      COEFF(2,1,1)= 0Q0
      COEFF(3,1,1)= 0Q0
      COEFF(4,1,1)= 0Q0
      COEFF(1,2,1)= 0Q0
      COEFF(2,2,1)= 0Q0
      COEFF(3,2,1)= 0Q0
      COEFF(4,2,1)= 0Q0
      COEFF(1,3,1)= 0Q0
      COEFF(2,3,1)= 0Q0
      COEFF(3,3,1)= 0Q0
      COEFF(4,3,1)= 0Q0
      COEFF(1,4,1)= 0Q0
      COEFF(2,4,1)= 0Q0
      COEFF(3,4,1)= 0Q0
      COEFF(4,4,1)= 0Q0
      COEFF(1,0,2)= 0Q0
      COEFF(2,0,2)= 0Q0
      COEFF(3,0,2)= 0Q0
      COEFF(4,0,2)= 0Q0
      COEFF(1,1,2)= 0Q0
      COEFF(2,1,2)= 0Q0
      COEFF(3,1,2)= 0Q0
      COEFF(4,1,2)= 0Q0
      COEFF(1,2,2)= 0Q0
      COEFF(2,2,2)= 0Q0
      COEFF(3,2,2)= 0Q0
      COEFF(4,2,2)= 0Q0
      COEFF(1,3,2)= 0Q0
      COEFF(2,3,2)= 0Q0
      COEFF(3,3,2)= 0Q0
      COEFF(4,3,2)= 0Q0
      COEFF(1,4,2)= 0Q0
      COEFF(2,4,2)= 0Q0
      COEFF(3,4,2)= 0Q0
      COEFF(4,4,2)= 0Q0
      COEFF(1,0,3)= COUP*M1*(+CI*(V3(5)+V3(8)))
      COEFF(2,0,3)= COUP*M1*(V3(7)+CI*(V3(6)))
      COEFF(3,0,3)= COUP*(-1Q0)*(P1(0)*(-1Q0)*(+CI*(V3(5)+V3(8)))
     $ +(P1(1)*(V3(7)+CI*(V3(6)))+(P1(2)*(+CI*(V3(7))-V3(6))+P1(3)*(
     $ +CI*(V3(5)+V3(8))))))
      COEFF(4,0,3)= COUP*(P1(0)*(V3(7)+CI*(V3(6)))+(P1(1)*(-1Q0)*(+CI
     $ *(V3(5)+V3(8)))+(P1(2)*(-1Q0)*(V3(5)+V3(8))+P1(3)*(V3(7)+CI
     $ *(V3(6))))))
      COEFF(1,1,3)= 0Q0
      COEFF(2,1,3)= 0Q0
      COEFF(3,1,3)= COUP*(+CI*(V3(5)+V3(8)))
      COEFF(4,1,3)= COUP*(V3(7)+CI*(V3(6)))
      COEFF(1,2,3)= 0Q0
      COEFF(2,2,3)= 0Q0
      COEFF(3,2,3)= COUP*(-1Q0)*(V3(7)+CI*(V3(6)))
      COEFF(4,2,3)= COUP*(-1Q0)*(+CI*(V3(5)+V3(8)))
      COEFF(1,3,3)= 0Q0
      COEFF(2,3,3)= 0Q0
      COEFF(3,3,3)= COUP*(-1Q0)*(+CI*(V3(7))-V3(6))
      COEFF(4,3,3)= COUP*(-V3(5)-V3(8))
      COEFF(1,4,3)= 0Q0
      COEFF(2,4,3)= 0Q0
      COEFF(3,4,3)= COUP*(-1Q0)*(+CI*(V3(5)+V3(8)))
      COEFF(4,4,3)= COUP*(V3(7)+CI*(V3(6)))
      COEFF(1,0,4)= COUP*M1*(+CI*(V3(6))-V3(7))
      COEFF(2,0,4)= COUP*M1*(-CI*(V3(8))+CI*(V3(5)))
      COEFF(3,0,4)= COUP*(P1(0)*(+CI*(V3(6))-V3(7))+(P1(1)*(-CI*(V3(5))
     $ +CI*(V3(8)))+(P1(2)*(V3(5)-V3(8))+P1(3)*(V3(7)-CI*(V3(6))))))
      COEFF(4,0,4)= COUP*(-1Q0)*(P1(0)*(-CI*(V3(5))+CI*(V3(8)))+(P1(1)
     $ *(+CI*(V3(6))-V3(7))+(P1(2)*(V3(6)+CI*(V3(7)))+P1(3)*(-CI*(V3(5)
     $ )+CI*(V3(8))))))
      COEFF(1,1,4)= 0Q0
      COEFF(2,1,4)= 0Q0
      COEFF(3,1,4)= COUP*(+CI*(V3(6))-V3(7))
      COEFF(4,1,4)= COUP*(-CI*(V3(8))+CI*(V3(5)))
      COEFF(1,2,4)= 0Q0
      COEFF(2,2,4)= 0Q0
      COEFF(3,2,4)= COUP*(-CI*(V3(5))+CI*(V3(8)))
      COEFF(4,2,4)= COUP*(-1Q0)*(+CI*(V3(6))-V3(7))
      COEFF(1,3,4)= 0Q0
      COEFF(2,3,4)= 0Q0
      COEFF(3,3,4)= COUP*(V3(5)-V3(8))
      COEFF(4,3,4)= COUP*(-1Q0)*(V3(6)+CI*(V3(7)))
      COEFF(1,4,4)= 0Q0
      COEFF(2,4,4)= 0Q0
      COEFF(3,4,4)= COUP*(-1Q0)*(+CI*(V3(6))-V3(7))
      COEFF(4,4,4)= COUP*(-CI*(V3(8))+CI*(V3(5)))
      END


