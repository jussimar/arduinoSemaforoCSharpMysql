const byte LEDVERDE = 9;
const byte LEDAMARELO = 10;
const byte LEDVERMELHO = 11;

void setup()
{
 Serial.begin(9600);
 pinMode(LEDVERDE, OUTPUT);
 pinMode(LEDAMARELO, OUTPUT);
 pinMode(LEDVERMELHO, OUTPUT);
}

void loop()
{
  if(Serial.available()){
    char estado = Serial.read();
    
    if(estado == '1'){
      digitalWrite(LEDVERDE, HIGH);

      digitalWrite(LEDAMARELO, LOW);
      digitalWrite(LEDVERMELHO, LOW);
    }
    if(estado == '2'){
      digitalWrite(LEDAMARELO, HIGH);

      digitalWrite(LEDVERDE, LOW);
      digitalWrite(LEDVERMELHO, LOW);
    }
    if(estado == '3'){
      digitalWrite(LEDVERMELHO, HIGH);

      digitalWrite(LEDAMARELO, LOW);
      digitalWrite(LEDVERDE, LOW);
    }
    if(estado == '0'){
      digitalWrite(LEDVERDE, LOW);
      digitalWrite(LEDAMARELO, LOW);
      digitalWrite(LEDVERMELHO, LOW);
    }
  }    
}
