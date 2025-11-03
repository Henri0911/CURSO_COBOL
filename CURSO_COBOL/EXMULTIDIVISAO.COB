       IDENTIFICATION                DIVISION.
       PROGRAM-ID. EXMULTIDIVISAO.
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

      *-------- MULTIPLICACAO
           MULTIPLY WRK-SALDO BY 2 GIVING WRK-SALDO.
      * estou multiplicando por 2 o saldo
           DISPLAY WRK-NOME WRK-SALDO.
           DISPLAY "SALDO " WRK-SALDO
           DISPLAY "--------------------------------"
      * cuidar p/ nao multiplicar um valor que passe o valor da variavel     

      *-------- DIVISAO
           DIVIDE WRK-SALDO BY 3 GIVING WRK-SALDO.
      * estou dividindo por 2 o saldo
           DISPLAY WRK-NOME WRK-SALDO.
           DISPLAY "SALDO " WRK-SALDO
           DISPLAY "--------------------------------"
      * cuidar p/ nao dividir por 0 

           STOP RUN.

      * MULTIPLY -> multiplicacao
      * DIVIDE -> dividir    