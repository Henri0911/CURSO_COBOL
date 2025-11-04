       IDENTIFICATION      DIVISION.
       PROGRAM-ID. EXDECISOES.
      * COMENTARIO 
       ENVIRONMENT         DIVISION.
       CONFIGURATION       DIVISION.
       SPECIAL-NAMES.
           DECIMAL-POINT   IS COMMA.

       DATA                DIVISION.
       WORKING-STORAGE     SECTION.
       01  WRK-NOME        PICTURE X(20)   VALUE SPACES.
       01  WRK-SALDO       PICTURE S9(10)  COMP VALUE ZEROS.
       01  WRK-SALDO-ED    PICTURE Z.ZZZ.ZZZ.ZZ9,99.
      
       PROCEDURE           DIVISION.
           DISPLAY "DIGITE SEU NOME ".
               ACCEPT WRK-NOME.
           DISPLAY "DIGITE SEU SALDO ".
               ACCEPT WRK-SALDO.
    
           IF WRK-SALDO GREATER THAN OR EQUAL 5000
               DISPLAY WRK-NOME       
               MOVE WRK-SALDO TO WRK-SALDO-ED
               DISPLAY "SALDO " WRK-SALDO
           ELSE
               DISPLAY "SALDO NAO COMPATIVEL"
           END-IF.
    
       STOP RUN.

      * GREATER = MAIOR
      * EQUAL = IGUAL
      * LESS = MENOR
      *sintaxe -> GREATER THAN OR EQUAL = maior que ou igual 5000