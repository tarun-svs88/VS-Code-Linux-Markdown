#UART Serial Communication
```wavedrom
{signal: [
{name:"clk",wave:"p............."},
{name: "Without Parity",wave:"1..0333344441",data:["D0","D1","D2","D3","D4","D5","D6","D7"]},
{name: "With Parity",wave:"1..0333344441",data:["D0","D1","D2","D3","D4","D5","D6","P"]},
{name:"Reference",wave:"2..23...4...22.",data:["Idle State","Start","LSB Data","MSB Data","Stop","Idle State"]},
]}
``` 
#$I^2 C$ Serial Communication
```wavedrom 
{signal: [
{name:"SCL",wave:"10p........1."},
{name:"Acknowledge",wave:"1.0333344440.1.",data:["D7","D6","D5","D4","D3","D2","D1","D0"]},
{name:"No Acknowledge",wave:"1.0333344441...",data:["D7","D6","D5","D4","D3","D2","D1","D0"]},
{name:"Reference",wave:"2.23...4...2.22",data:["Idle State","Start","MSB Date","LSB Date","ACK","Stop","Idle"]},
{name:"Write(M-S)",wave:"25..678..78..72",data:["Start","Address(7)","W`","A(S)","Data(8)","A(S)","Data(8)","A(S)","Stop"]},
{name:"Read(M-S)",wave:"25..678..98..92",data:["Start","Address(7)","R","A(S)","Data(8)","A(M)","Data(8)","A(M)","Stop"]},
{name:"Write/Read(M-S)",wave:"25..678..728..678..48.",data:["Start","Address(7)","W`","A(S)","Data(8)","A(s)","S r","Address(7)","R","A(S)","Data(8)","A(M)","Data(8)"]},
  ]}
```
#SPI Serial Communication
```wavedrom
{signal: [
{name:"SS`",wave:"10..........1."},
{name:"SCK",wave:"0..p.......0.."},
['Data',{name:"MOSI (M-S)",wave:"1.3....4...1..",data:["MSB","LSB"]},
{name:"MISO (S-M)",wave:"1.3....4...1..",data:["MSB","LSB"]}],
]}
```