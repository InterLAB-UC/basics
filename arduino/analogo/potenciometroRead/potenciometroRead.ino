//lectura de potenciómetro básico

//variables

const int POTENCIOMETRO = A0; // PIN de conexión al potenciómetro

int valorPotenciometro; // almacena el valor (0 a 1023) del potenciómetro

void setup() {

  Serial.begin(9600);

}

void loop() {

  valorPotenciometro = analogRead(POTENCIOMETRO); //lee y almacena la variable
  Serial.println(valorPotenciometro); // imprime en el monitor serie el valor
  delay(1); // espara un milisegundo entre lectura y lectura

}
