#include "DHT.h" //Usando a biblioteca DHT

#define dht_type DHT11  //define qual o tipo do sensor DHT que está utilizando

int dht_pin = A2; //definindo a porta analogica do DHT

DHT dht_1 = DHT(dht_pin, dht_type); //Usando a biblioteca DHT


void setup() {
  Serial.begin(9600); //Definindo o tamanho da entrada da porta serial
  dht_1.begin(); // Usando o objeto dht

}

void loop() 
{

  // Var de temperatura e humidade
  float umidade = dht_1.readHumidity(); //Pegando os valores da humidade
  float temperatura = dht_1.readTemperature(); //Pegando os valores da temperatura 

  //Validção de erro
  if (isnan(temperatura) or isnan(umidade)) 
  {
    Serial.println("Erro ao ler o DHT");  //Mensagem de erro ao ler o dht
  }
  // Se não estiver com os valores nulos então execute 
  else 
  {
    //Apresentando as mensagens com a temperatura e a humidade
    Serial.print("Umidade:");
    Serial.print(umidade);
    Serial.print(" % ");
    Serial.print(" Temperatura: ");
    Serial.print(temperatura); 
    Serial.println(" ºC");   
  }
  delay(2000); // Tempo em que o código vai voltar 
}
