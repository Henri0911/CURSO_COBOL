       IDENTIFICATION                DIVISION.
       PROGRAM-ID. EXSOMASUBTRACAO.
       ENVIRONMENT                   DIVISION.
       DATA                          DIVISION.
       WORKING-STORAGE               SECTION.
       01  WRK-NOME                  PICTURE X(20)  VALUE SPACES.
       01  WRK-SALDO                 PICTURE S9(05) VALUE ZEROS.
      

       PROCEDURE                     DIVISION.
           DISPLAY "DIGITE SEU NOME "
               ACCEPT WRK-NOME.
           DISPLAY "DIGITE SEU SALDO "
               ACCEPT WRK-SALDO.

      *-------- SOMA
           ADD 500 TO WRK-SALDO
      * estou somando 500 no saldo
           DISPLAY WRK-NOME WRK-SALDO.
           DISPLAY "SALDO " WRK-SALDO
           DISPLAY "--------------------------------"

      *-------- SUBTRACAO
           SUBTRACT 200 FROM WRK-SALDO.
      * estou removendo 200 do saldo
           DISPLAY WRK-NOME WRK-SALDO.
           DISPLAY "SALDO " WRK-SALDO
           DISPLAY "--------------------------------"

           STOP RUN.

      * ACCEPT -> entrada de valores
      * ADD -> adicao
      * SUBTRACT -> subtracao
