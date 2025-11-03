       IDENTIFICATION                DIVISION.
       PROGRAM-ID. OLACOBOL.
      * este e um programa simples q exibe "OLA COBOL" 
      * COMENTARIO cobc -x OLACOBOL.COB compilador do cobol 
       PROCEDURE                     DIVISION.
           DISPLAY "OLA COBOL".  
           STOP RUN.
      * caso eu erre uma codificacao em alguma linha
      * programa ira acusar o erro na linha de baixo.  
      
      * 01 WRK-NOME     PIC X(20)     VALUE SPACES.
      * 01 WRK-SALDO    PIC 9(05)     VALUE ZEROS.
      * Esse “valor inicial” serve para limpar qualquer possibilidade de 
      * recebermos dentro da variável um valor residual da memória.    