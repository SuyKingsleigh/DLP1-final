#Comunicação serial entre duas placas

##FPGA 1 (Transmissor assincrono)

 Entrada Mensagens input;
 TX (Saída mensangens);

Entrada Mensanges => Display 7 segmentos x N;
 Quando transmite FPGA 1 -> FPGA2 N=8, quando for local (FPGA1 -> fpga1) N= 4;
Mensagens = Vetor ASCII (String);
* Fazer um componente para conversão; 

* Fazer um conversor paralelo-serial OK
* Fazer um parity checker

* Entrada Mensagens -> Conversor paralelo-serial + Paridade(Par e impar)  -> Saída TX 
* Assíncrona; 
        
* 2 stop bits; 
        
* Gerador de baudrate; 
        
* Config (input), define quantos bits vai 
                transmitir por segundo; 
                
* CLK 50MHz; 
                
* Será feito com um divisor de clock; 
* Deve ter pelo menos 4 faixas de transmissão diferentes

> N precisa ser simultaneo;
> A mensagem a ser transmitida deve ser mostrada no Display

>>>>> Conversor Paralelo Serial <<<<<
* Shift register
