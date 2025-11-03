       IDENTIFICATION      DIVISION.
       PROGRAM-ID. EXEQUACAO.
       ENVIRONMENT         DIVISION.
       CONFIGURATION       DIVISION.
       SPECIAL-NAMES.
           DECIMAL-POINT   IS COMMA.

       DATA                DIVISION.
       WORKING-STORAGE     SECTION.
       01  WRK-NOME        PICTURE X(20)   VALUE SPACES.
       01  WRK-SALDO       PICTURE S9(10)  COMP VALUE ZEROS.
      * COMP -> uma variavel ela resolve os calculos mais rapidos  
       01  WRK-SALDO-ED    PICTURE Z.ZZZ.ZZZ.ZZ9,99.
      * variaveis de edicao é so para mostrar a saida do programa 

       PROCEDURE           DIVISION.
           DISPLAY "DIGITE SEU NOME "
               ACCEPT WRK-NOME.
           DISPLAY "DIGITE SEU SALDO "
               ACCEPT WRK-SALDO.

           DISPLAY WRK-NOME.
           
           COMPUTE WRK-SALDO = WRK-SALDO * 1,10.
      * COMPUTE->permite realizar multiplas operacoes em uma unica linha
       
               MOVE WRK-SALDO TO WRK-SALDO-ED.
           DISPLAY "SALDO " WRK-SALDO.

           STOP RUN.
