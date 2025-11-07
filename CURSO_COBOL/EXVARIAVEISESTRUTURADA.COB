       IDENTIFICATION        DIVISION.
       PROGRAM-ID. EXVARIAVEISESTRUTURADA.
      * COMENTARIO   
       ENVIRONMENT           DIVISION.
       CONFIGURATION         SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT     IS COMMA.    

       DATA                  DIVISION. 
       WORKING-STORAGE       SECTION.
      *----variavel estruturada  
       01  REGISTRO.
           05 REG-AGENCIA    PICTURE X(04).
           05 REG-CONTA      PICTURE X(05).
           05 REG-NOME       PICTURE X(30).
           05 REG-GERENTE    PICTURE X(03).
           05 REG-TIPO-CONTA PICTURE 9(01).
           05 REG-SALDO      PICTURE 9(10)V99.
      *----V99 = recebe duas casas decimais idependente do valor. 
      
      *----LAYOUT = 55 POSICOES----*
       
      *----AGENCIA  CONTA  NOME       GERENTE  TIPO-CONTA  SALDO
      *---- 2344    45645  KIKO        003      1          15000
       
       01  WRK-CONTADOR      PICTURE 9(03) USAGE COMP.
           
       PROCEDURE             DIVISION

       0100-PRINCIPAL        SECTION.
           PERFORM  0200-INICIAR. 
           PERFORM  0300-PROCESSAR.
           PERFORM  0400-FINALIZAR.
           STOP  RUN.


       0100-FIM. EXIT.
       
      *----------------------- INICIAR
       0200-INICIAR          SECTION.
           DISPLAY "DIGITE SEU NOME ". 
               ACCEPT REG-NOME.
           DISPLAY "QUAL TIPO DE CONTA (1-FISICA 2-JURIDICA 9-SAIR) ? ". 
               ACCEPT REG-TIPO-CONTA.
           DISPLAY "DIGITE SEU SALDO ". 
               ACCEPT REG-SALDO. 
           DISPLAY "=========================" .
       0200-FIM. EXIT.

      *----------------------- PROCESSAR
       0300-PROCESSAR        SECTION.
            IF REG-SALDO GREATER THAN OR EQUAL  5000  AND 
              (REG-TIPO-CONTA EQUAL 1  OR  REG-TIPO-CONTA EQUAL 2 )

              DISPLAY REGISTRO.

           ELSE
                 EVALUATE TRUE
                    WHEN REG-SALDO LESS 5000
                       DISPLAY "SALDO NAO COMPATIVEL" 
                    WHEN REG-TIPO-CONTA NOT EQUAL 1 OR
                         REG-TIPO-CONTA NOT EQUAL 2  
                        DISPLAY "TIPO DE CONTA NAO EXISTE" 
                 END-EVALUATE    
           END-IF.

             PERFORM  0200-INICIAR.

       0300-FIM. EXIT.

      *----------------------- FINALIZAR
       0400-FINALIZAR        SECTION.
           DISPLAY "----------------------".
           DISPLAY "--- ESTATISTICA  -----".
           DISPLAY "CLIENTES LIDOS: "  WRK-CONTADOR.


       0400-FIM. EXIT.

  