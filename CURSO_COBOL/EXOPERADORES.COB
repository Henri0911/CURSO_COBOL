       IDENTIFICATION      DIVISION.
       PROGRAM-ID. EXOPERADORES.
      * COMENTARIO
       ENVIRONMENT         DIVISION.
       DATA                DIVISION.
       WORKING-STORAGE     SECTION.
       01  WRK-NOME        PICTURE X(20)  VALUE SPACES.
       01  WRK-SALDO       PICTURE S9(05) VALUE ZEROS.

       PROCEDURE           DIVISION.
           DISPLAY "DIGITE SEU NOME "
               ACCEPT WRK-NOME.
           DISPLAY "DIGITE SEU SALDO "
               ACCEPT WRK-SALDO.

      *------ SOMA
           ADD 500 TO WRK-SALDO
           DISPLAY WRK-NOME WRK-SALDO.
           DISPLAY "SALDO " WRK-SALDO.
           DISPLAY "---------------------------".

      *------ SUBTRAÇÃO
           SUBTRACT 200 FROM WRK-SALDO
           DISPLAY WRK-NOME WRK-SALDO.
           DISPLAY "SALDO " WRK-SALDO.
           DISPLAY "---------------------------".

      *------ MULTIPLICACAO
           MULTIPLY WRK-SALDO BY 2 GIVING WRK-SALDO.
           DISPLAY WRK-NOME WRK-SALDO.
           DISPLAY "SALDO " WRK-SALDO.
           DISPLAY "---------------------------".

      *------ DIVISAO
           DIVIDE WRK-SALDO BY 3 GIVING WRK-SALDO.
           DISPLAY WRK-NOME WRK-SALDO.
           DISPLAY "SALDO " WRK-SALDO.
           DISPLAY "---------------------------".

           STOP RUN.

      *entrada nome Henrique
      *entrada saldo 1000

      *SALDO 1000 + 500
      *Henrique               +01500
      *SALDO +01500
      *---------------------------

      *SALDO 1500 - 200
      *Henrique               +01300
      *SALDO +01300
      *---------------------------

      *SALDO 1300 x 2
      *Henrique               +02600
      *SALDO +02600
      *---------------------------

      *SALDO 2600 / 3
      *Henrique               +00866
      *SALDO +00866
      *---------------------------     