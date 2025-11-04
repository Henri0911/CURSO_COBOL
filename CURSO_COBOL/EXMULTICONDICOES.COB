       IDENTIFICATION      DIVISION.
       PROGRAM-ID. EXMULTICONDICOES.
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
       01  WRK-TIPO-CONTA  PICTURE 9.
      
       PROCEDURE           DIVISION.
           DISPLAY "DIGITE SEU NOME ".
               ACCEPT WRK-NOME.
           DISPLAY "DIGITE SEU SALDO ".
               ACCEPT WRK-SALDO.
           DISPLAY "QUAL TIPO DE CONTA (1-FISICA | 2-JURIDICA) ? ".
               ACCEPT WRK-TIPO-CONTA.
    
           IF WRK-SALDO GREATER THAN OR EQUAL 5000
      * comeco do if saldo maior ou igual 5000
               DISPLAY WRK-NOME       
               MOVE WRK-SALDO TO WRK-SALDO-ED
               DISPLAY "SALDO " WRK-SALDO-ED
                   EVALUATE WRK-TIPO-CONTA
      * avaliar uma condição se é 1 ou 2
                       WHEN 1
                        DISPLAY "CONTA FISICA"
      * opcao 1
                       WHEN 2
                        DISPLAY "CONTA JURIDICA"
      * opcao 2
                       WHEN OTHER
                        DISPLAY "TIPO DE CONTA NAO EXISTE"
      * nenhuma opcao
                   END-EVALUATE
      * fim da avaliacao
           ELSE
      * fim do if else
               DISPLAY "SALDO NAO COMPATIVEL"
           END-IF.
    
       STOP RUN.

      * EVALUATE -> avaliar