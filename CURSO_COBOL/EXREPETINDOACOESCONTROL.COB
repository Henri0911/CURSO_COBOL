       IDENTIFICATION        DIVISION.
       PROGRAM-ID. EXREPETINDOACOESCONTROL.
      * COMENTARIO
       ENVIRONMENT           DIVISION.
       CONFIGURATION         SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT     IS COMMA.
           
       DATA                  DIVISION.
       WORKING-STORAGE       SECTION.
       01  WRK-NOME                PICTURE X(20)   VALUE SPACES.
       01  WRK-SALDO               PICTURE S9(10)  COMP VALUE ZEROS.
       01  WRK-SALDO-ED            PICTURE Z.ZZZ.ZZZ.ZZ9,99.
       01  WRK-TIPO-CONTA          PICTURE 9.
       01  WRK-CONTADOR            PICTURE 9(03) USAGE COMP.
       01  WRK-CONTADOR-VALIDO     PICTURE 9(03) USAGE COMP.
       01  WRK-CONTADOR-INVALIDO   PICTURE 9(03) USAGE COMP.

       PROCEDURE             DIVISION.
       0100-PRINCIPAL        SECTION.
           PERFORM  0200-INICIAR.
           PERFORM  0300-PROCESSAR VARYING WRK-CONTADOR FROM 0 BY 1 
                                   UNTIL WRK-TIPO-CONTA EQUAL 9.
      * VARYING = contado add mais 1 a cada loop 

           PERFORM  0400-FINALIZAR.         
           STOP RUN.

       0100-FIM. EXIT.

      *----------------------INICIAR
       0200-INICIAR          SECTION.
       DISPLAY "DIGITE SEU NOME "
               ACCEPT WRK-NOME.
           DISPLAY "DIGITE SEU SALDO "
               ACCEPT WRK-SALDO.
           DISPLAY "QUAL TIPO DE CONTA (1-FISICA 2-JURIDICA 9-SAIR) ? ".
               ACCEPT WRK-TIPO-CONTA.
           DISPLAY "===============================".
       0200-FIM. EXIT.

      *----------------------PROCESSAR
       0300-PROCESSAR        SECTION.
       IF WRK-SALDO GREATER THAN OR EQUAL  5000  AND
             (WRK-TIPO-CONTA EQUAL 1 OR WRK-TIPO-CONTA EQUAL 2 )
              DISPLAY WRK-NOME
              MOVE WRK-SALDO TO WRK-SALDO-ED
              DISPLAY "SALDO " WRK-SALDO-ED
              ADD 1 TO WRK-CONTADOR-VALIDO
           ELSE
              EVALUATE TRUE
               WHEN WRK-SALDO LESS 5000
                   DISPLAY "SALDO NAO COMPATIVEL"
               WHEN WRK-TIPO-CONTA NOT EQUAL 1 OR
                    WRK-TIPO-CONTA NOT EQUAL 2
                   DISPLAY "TIPO DE CONTA NAO EXISTE"
                   ADD 1 TO WRK-CONTADOR-INVALIDO
              END-EVALUATE
           END-IF.
       0300-FIM. EXIT.

      *----------------------FINALIZAR
       0400-FINALIZAR        SECTION.
       DISPLAY "-----------------------".
       DISPLAY "----- ESTATISTICA -----".
       DISPLAY "CLIENTES LIDOS: " WRK-CONTADOR.
       DISPLAY "CLIENTE VALIDOS: " WRK-CONTADOR-VALIDO.
       DISPLAY "CLIENTE INVALIDOS: " WRK-CONTADOR-INVALIDO.
       DISPLAY "-----------------------".
       DISPLAY "--- FIM DE PROGRAMA ---".
       0400-FIM. EXIT.  
