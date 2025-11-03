       IDENTIFICATION      DIVISION.
       PROGRAM-ID. FORMATANDOSAIDA.
       ENVIRONMENT         DIVISION.
       CONFIGURATION       DIVISION.
       SPECIAL-NAMES.
           DECIMAL-POINT   IS COMMA.
      * COMMA = ,(virgula) | PERIOD = .(ponto)
      * da linha 4 ate a 6 fazendo configuraçao de separador decimal

       DATA                DIVISION.
       WORKING-STORAGE     SECTION.
       01  WRK-NOME        PICTURE X(20)  VALUE SPACES.
       01  WRK-SALDO       PICTURE S9(10) VALUE ZEROS.

       01  WRK-SALDO-ED    PICTURE Z.ZZZ.ZZZ.ZZ9,99.
      * Z -> vai formatar minha saida de numeros 
      * em vez de ter uma saida 00120 vai ficar 120
      * ZZZZ9 saida vai ficar ()()()()0 | () -> vazio.

       PROCEDURE           DIVISION.
           DISPLAY "DIGITE SEU NOME "
               ACCEPT WRK-NOME.
           DISPLAY "DIGITE SEU SALDO "
               ACCEPT WRK-SALDO.

           DISPLAY WRK-NOME.
      *------ SOMA
           ADD 500 TO WRK-SALDO
              MOVE WRK-SALDO TO WRK-SALDO-ED.
           DISPLAY "SALDO " WRK-SALDO.
           DISPLAY "---------------------------".

      *------ SUBTRAÇÃO
           SUBTRACT 200 FROM WRK-SALDO
              MOVE WRK-SALDO TO WRK-SALDO-ED.
           DISPLAY "SALDO " WRK-SALDO.
           DISPLAY "---------------------------".

      *------ MULTIPLICACAO
           MULTIPLY WRK-SALDO BY 2 GIVING WRK-SALDO-ED.
      *        MOVE WRK-SALDO TO WRK-SALDO-ED.
           DISPLAY "SALDO " WRK-SALDO.
           DISPLAY "---------------------------".

      *------ DIVISAO
           DIVIDE WRK-SALDO BY 3 GIVING WRK-SALDO-ED.
      *        MOVE WRK-SALDO TO WRK-SALDO-ED.
           DISPLAY "SALDO " WRK-SALDO.
           DISPLAY "---------------------------".

           STOP RUN.
