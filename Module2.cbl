      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.                                         00010000
       PROGRAM-ID. SRCH.                                                00020000
       DATA DIVISION.                                                   00030000
       WORKING-STORAGE SECTION.                                         00040000
       01 TABL.                                                         00050000
         05 RCD1 OCCURS 3 TIMES INDEXED BY I.                           00060000
           10 RCD2 OCCURS 2 TIMES INDEXED BY J.                         00080000
             15 NUM PIC 9(2).                                           00081000
             15 NAME PIC X(3).                                          00090000
       01 COND-CODE.                                                    00090100
          05 WS-FLAG  PIC X(1) VALUE 'N'.                               00091000
                                                                        00092000
       PROCEDURE DIVISION.                                              00100000
           MOVE '12ABC34DEF56GHI78KLM90NOP' TO TABL.                    00111000
           PERFORM FIRST-PARA VARYING I FROM 1 BY 1 UNTIL I > 3.        00120000
           PERFORM SEARCH-PARA.                                         00130000
           DISPLAY'CODE EDITED FROM OpenCOBOL IDE'.

           DISPLAY 'HELLO'.
           STOP RUN.                                                    00140000
                                                                        00140100
                                                                        00140900
       FIRST-PARA.                                                      00150000
           PERFORM SECOND-PARA VARYING J FROM 1 BY 1 UNTIL J > 2.       00160000
                                                                        00170000
       SECOND-PARA.                                                     00180000
      *    DISPLAY RCD2(I,J).                                           00190000
      *    DISPLAY NAME(I,J).                                           00191000
      *    DISPLAY RCD1(I)                                              00200000
                                                                        00201000
       SEARCH-PARA.                                                     00210000
                                                                        00232000
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 3 OR WS-FLAG = 'Y'   00233000
           SET J TO 1                                                   00234000
           SEARCH RCD2                                                  00240000
            WHEN NAME(I,J)='ABC'                                        00260000
            MOVE 'Y' TO WS-FLAG                                         00271000
           END-SEARCH                                                   00280000
           END-PERFORM.                                                 00290000
                                                                        00291000
           IF WS-FLAG = 'Y'                                             00300000
              DISPLAY 'FOUND'                                           00310000
           ELSE                                                         00320000
              DISPLAY 'NOT FOUND'                                       00330000
           END-IF.                                                      00340000
                                                                        00350000
