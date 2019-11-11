      SUBROUTINE DLUM_2(LUM)
C     ****************************************************            
C         
C     Generated by MadGraph5_aMC@NLO v. 2.6.6, 2018-06-28
C     By the MadGraph5_aMC@NLO Development Team
C     Visit launchpad.net/madgraph5 and amcatnlo.web.cern.ch
C     RETURNS PARTON LUMINOSITIES FOR MADFKS                          
C        
C     
C     Process: g d~ > w+ x0 > w+ e+ e- z u~ WEIGHTED<=5 [ all = QCD ]
C      / a
C     Process: g s~ > w+ x0 > w+ e+ e- z c~ WEIGHTED<=5 [ all = QCD ]
C      / a
C     Process: g d~ > w+ x0 > w+ mu+ mu- z u~ WEIGHTED<=5 [ all = QCD
C      ] / a
C     Process: g s~ > w+ x0 > w+ mu+ mu- z c~ WEIGHTED<=5 [ all = QCD
C      ] / a
C     
C     ****************************************************            
C         
      IMPLICIT NONE
C     
C     CONSTANTS                                                       
C         
C     
      INCLUDE 'genps.inc'
      INCLUDE 'nexternal.inc'
      DOUBLE PRECISION       CONV
      PARAMETER (CONV=389379660D0)  !CONV TO PICOBARNS             
C     
C     ARGUMENTS                                                       
C         
C     
      DOUBLE PRECISION PP(0:3,NEXTERNAL), LUM
C     
C     LOCAL VARIABLES                                                 
C         
C     
      INTEGER I, ICROSS,ITYPE,LP
      DOUBLE PRECISION P1(0:3,NEXTERNAL)
      DOUBLE PRECISION G1
      DOUBLE PRECISION SX2,DX2
      DOUBLE PRECISION XPQ(-7:7)
C     
C     EXTERNAL FUNCTIONS                                              
C         
C     
      DOUBLE PRECISION ALPHAS2,REWGT,PDG2PDF
C     
C     GLOBAL VARIABLES                                                
C         
C     
      INTEGER              IPROC
      DOUBLE PRECISION PD(0:MAXPROC)
      COMMON /SUBPROC/ PD, IPROC
      INCLUDE 'coupl.inc'
      INCLUDE 'run.inc'
      INTEGER IMIRROR
      COMMON/CMIRROR/IMIRROR
C     
C     DATA                                                            
C         
C     
      DATA G1/1*1D0/
      DATA SX2,DX2/2*1D0/
      DATA ICROSS/1/
C     ----------                                                      
C         
C     BEGIN CODE                                                      
C         
C     ----------                                                      
C         
      LUM = 0D0
      IF (IMIRROR.EQ.2) THEN
        IF (ABS(LPP(2)) .GE. 1) THEN
          LP=SIGN(1,LPP(2))
          G1=PDG2PDF(ABS(LPP(2)),0*LP,XBK(2),DSQRT(Q2FACT(2)))
        ENDIF
        IF (ABS(LPP(1)) .GE. 1) THEN
          LP=SIGN(1,LPP(1))
          SX2=PDG2PDF(ABS(LPP(1)),-3*LP,XBK(1),DSQRT(Q2FACT(1)))
          DX2=PDG2PDF(ABS(LPP(1)),-1*LP,XBK(1),DSQRT(Q2FACT(1)))
        ENDIF
        PD(0) = 0D0
        IPROC = 0
        IPROC=IPROC+1  ! g d~ > w+ e+ e- z u~
        PD(IPROC) = G1*DX2
        IPROC=IPROC+1  ! g s~ > w+ e+ e- z c~
        PD(IPROC) = G1*SX2
        IPROC=IPROC+1  ! g d~ > w+ mu+ mu- z u~
        PD(IPROC) = G1*DX2
        IPROC=IPROC+1  ! g s~ > w+ mu+ mu- z c~
        PD(IPROC) = G1*SX2
      ELSE
        IF (ABS(LPP(1)) .GE. 1) THEN
          LP=SIGN(1,LPP(1))
          G1=PDG2PDF(ABS(LPP(1)),0*LP,XBK(1),DSQRT(Q2FACT(1)))
        ENDIF
        IF (ABS(LPP(2)) .GE. 1) THEN
          LP=SIGN(1,LPP(2))
          SX2=PDG2PDF(ABS(LPP(2)),-3*LP,XBK(2),DSQRT(Q2FACT(2)))
          DX2=PDG2PDF(ABS(LPP(2)),-1*LP,XBK(2),DSQRT(Q2FACT(2)))
        ENDIF
        PD(0) = 0D0
        IPROC = 0
        IPROC=IPROC+1  ! g d~ > w+ e+ e- z u~
        PD(IPROC) = G1*DX2
        IPROC=IPROC+1  ! g s~ > w+ e+ e- z c~
        PD(IPROC) = G1*SX2
        IPROC=IPROC+1  ! g d~ > w+ mu+ mu- z u~
        PD(IPROC) = G1*DX2
        IPROC=IPROC+1  ! g s~ > w+ mu+ mu- z c~
        PD(IPROC) = G1*SX2
      ENDIF
      DO I=1,IPROC
        IF (NINCOMING.EQ.2) THEN
          LUM = LUM + PD(I) * CONV
        ELSE
          LUM = LUM + PD(I)
        ENDIF
      ENDDO
      RETURN
      END

