//librerias........
import processing.serial.*;
import cc.arduino.*;

Arduino arduino;
int btnCirculo=6, btnCuadrado=5, btnTriangulo=4, btnLinea=3; //pines de botones

void setup(){
  //arduino entradas y salidas
  arduino = new Arduino(this, Arduino.list()[0], 57600);
  arduino.pinMode(btnCirculo, Arduino.INPUT);
  arduino.pinMode(btnCuadrado, Arduino.INPUT);
  arduino.pinMode(btnTriangulo, Arduino.INPUT);
  arduino.pinMode(btnLinea, Arduino.INPUT);
  
  //processing se crea ventana con fondo blanco y se especifica un ancho de 4 pixeles
  size(800,800); //tamaño de ventana
  background(255); //fondo blanco
  strokeWeight(4); //la linea linea tiene un ancho de 4 pixeles
}

void draw(){
  //Dependiendo del boton que es presionado se muestra la figura seleccionada
  if(arduino.digitalRead(btnLinea)==Arduino.HIGH)  {
  line(278,350,317,350);
  }
  if(arduino.digitalRead(btnCirculo)==Arduino.HIGH){
  fill(0, 255, 0);// se define el color de fondo ..
  ellipse(300, 300, 50, 50); 
  }
  if(arduino.digitalRead(btnCuadrado)==Arduino.HIGH){
  fill(0, 255, 0);
  rect(200, 200, 200, 200);
  }
  if(arduino.digitalRead(btnTriangulo)==Arduino.HIGH){
  fill(0, 255, 0);
  triangle(220,270,260,270,240,240);
  triangle(320,270,360,270,340,240);
  }
}