       IDENTIFICATION                DIVISION.
       PROGRAM-ID. EXVALORES.
       ENVIRONMENT                   DIVISION.
       DATA                          DIVISION.
       WORKING-STORAGE               SECTION.
       01  WRK-NOME                  PICTURE X(20)  VALUE SPACES.
       01  WRK-SALDO                 PICTURE S9(05) VALUE ZEROS.
      * S DE SIGNAL -> tem a possibilidade de mostrar
      * se um valor é positivo ou negativo

       PROCEDURE                     DIVISION.

           MOVE "AMANDA"    TO WRK-NOME.
           MOVE 1200        TO WRK-SALDO.
      * MOVE -> transferir um conteudo p/ outro local

           DISPLAY WRK-NOME WRK-SALDO.
           DISPLAY "SALDO " WRK-SALDO

           STOP RUN.

      * a impressao do programa vai sair
      * AMANDA         +01200
      * SALDO +01200 
      * por conta do S9 na linha (7)
      * caso mude o 1200 na linha (15) para -1200
      * resultado sera
      * AMANDA          -01200
      * SALDO -01200
