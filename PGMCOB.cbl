000100 IDENTIFICATION DIVISION.                                         00010001
000200 PROGRAM-ID. PGMCOB.                                              00020002
000300 ENVIRONMENT DIVISION.                                            00030002
000400 DATA DIVISION.                                                   00040002
000500 WORKING-STORAGE SECTION.                                         00050002                                                                00051005
       01 WS-VAR PIC X(5).                                              00052006
000600 PROCEDURE DIVISION.                                              00060002
000700 MAIN-PARA.                                                       00070002
           ACCEPT WS-VAR.                                               00071006
000800     DISPLAY '*******   TESTING   ********'.                      00080002
           DISPLAY WS-VAR.                                              00081006
           DISPLAY 'PGMCOB HAS BEEN EDITED IN GNU COBOL IDE'.
000900     STOP RUN.                                                    00090002
