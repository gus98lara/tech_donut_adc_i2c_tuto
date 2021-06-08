#include <Wire.h>

byte in;
int out;

void setup(){
 Wire.begin();
 Serial.begin(9600);
}

void loop(){
    /*    
    while(!Serial.available()>0){;}
    in=Serial.read()-'0';
    Serial.print("Enviando al FPGA: ");
    Serial.println(in);
    */
    
    Wire.beginTransmission(0x3);
    Wire.write("H");
    Wire.endTransmission();
    
    delay(1);
    
    Wire.requestFrom(3,1);
    while(!Wire.available()){;}
    out=Wire.read();
    out = out << 8;
    
    Wire.beginTransmission(0x3);
    Wire.write("L");
    Wire.endTransmission();
    
    delay(1);
    
    Wire.requestFrom(3,1);
    while(!Wire.available()){;}
    out=Wire.read() | out;

    Serial.print("Recibido del FPGA: ");
    Serial.println(out,HEX);        
    
    delay(1000);
}

