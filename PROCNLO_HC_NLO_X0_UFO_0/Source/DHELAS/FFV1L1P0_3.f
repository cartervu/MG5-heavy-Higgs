C     This File is Automatically generated by ALOHA 
C     The process calculated in this file is: 
C     Gamma(3,2,1)
C     
      SUBROUTINE FFV1L1P0_3(P1, F2, COUP, M3, W3, P3, COEFF)
      IMPLICIT NONE
      COMPLEX*16 CI
      PARAMETER (CI=(0D0,1D0))
      REAL*8 W3
      INCLUDE 'coef_specs.inc'
      COMPLEX*16 COEFF(MAXLWFSIZE,0:VERTEXMAXCOEFS-1,MAXLWFSIZE)
      REAL*8 M3
      COMPLEX*16 P3(0:3)
      COMPLEX*16 F2(*)
      COMPLEX*16 P1(0:3)
      COMPLEX*16 COUP
      P3(0) = +P1(0)+F2(1)
      P3(1) = +P1(1)+F2(2)
      P3(2) = +P1(2)+F2(3)
      P3(3) = +P1(3)+F2(4)
      COEFF(1,0,1)= COUP*-CI * F2(7)
      COEFF(2,0,1)= COUP*CI * F2(8)
      COEFF(3,0,1)= COUP*-F2(8)
      COEFF(4,0,1)= COUP*CI * F2(7)
      COEFF(1,0,2)= COUP*-CI * F2(8)
      COEFF(2,0,2)= COUP*CI * F2(7)
      COEFF(3,0,2)= COUP*F2(7)
      COEFF(4,0,2)= COUP*-CI * F2(8)
      COEFF(1,0,3)= COUP*-CI * F2(5)
      COEFF(2,0,3)= COUP*-CI * F2(6)
      COEFF(3,0,3)= COUP*F2(6)
      COEFF(4,0,3)= COUP*-CI * F2(5)
      COEFF(1,0,4)= COUP*-CI * F2(6)
      COEFF(2,0,4)= COUP*-CI * F2(5)
      COEFF(3,0,4)= COUP*-F2(5)
      COEFF(4,0,4)= COUP*CI * F2(6)
      END


