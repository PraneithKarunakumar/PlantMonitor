#include <Adafruit_Sensor.h>
#include <DHT.h>
#include <DHT_U.h>

#define DHT11_PIN 4    
#define DHTTYPE DHT11  
#define MOISTURE_PIN A1 

DHT dht(DHT11_PIN, DHTTYPE);
int red = 5;
int green = 7;

void setup() {
  pinMode(red, OUTPUT);
  pinMode(green, OUTPUT);
  Serial.begin(9600); 
  dht.begin(); 
  
}

void loop() {
 
  float temperature = dht.readTemperature();
  float humidity = dht.readHumidity();
  int moistureValue = analogRead(MOISTURE_PIN);

  Serial.print(temperature);
  Serial.print(",");
  Serial.print(humidity);
  Serial.print(",");
  Serial.println(moistureValue);

  
  if (moistureValue >= 0 && moistureValue <= 299) {
    digitalWrite(green, HIGH);
    digitalWrite(red, LOW);
  } 
  else if (moistureValue >= 700 && moistureValue <= 1023) {
    digitalWrite(red, HIGH);
    digitalWrite(green, LOW);
  }
  else {
    digitalWrite(red, LOW);
    digitalWrite(green, LOW);
  }


  delay(5000);
}
