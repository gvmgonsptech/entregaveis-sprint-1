
// DHT11
#include "DHT.h" //Usando a biblioteca DHT
#define dht_type DHT11  //define qual o tipo do sensor DHT que está utilizando
const int dht_pin = A2; //definindo a porta analogica do DHT
DHT dht_1 = DHT(dht_pin, dht_type); //Usando a biblioteca DHT


// LM35
const int sensorPin = A0; // Esse é o pino do Arduino que irá ler a saída do sensor
float valorSensor;        // Essa variável irá ser usada para armazenar o input do sensor
float tensaoSaida;        // Essa variável irá ser usada para armazenar a tensão do sensor
float temperaturaC, temperaturaF; // Variável que será usada para armazenar a temperatura em graus

// Configurando o setup
void setup() {
  
  pinMode(sensorPin, INPUT); // Declare o tipo de pino que está conectado na placa
  Serial.begin(9600); //Definindo o tamanho da entrada da porta serial
  dht_1.begin(); // Usando o objeto dht

}

void loop() 
{

  
  // CÓDIGO DO DHT11
  Serial.println(" -DHT11 ");
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

  /////////////////////////////////////////////////////////////////////////
  
  // CÓDIGO DO LM35
  Serial.println(" -LM35 ");
  // Insirindo o código principal aqui, para rodar repetidamente:
  valorSensor = analogRead(sensorPin);          // Leia o sensor analógico e armazene seu valor
  tensaoSaida = (valorSensor * 5000) / 1024;    //Cálculo para obter a tensão de saída do sensor
 
  // Calculando a temperatura para o LM35
  temperaturaC = tensaoSaida / 10;             // Convertendo a tensão em graus Celsius
  temperaturaF = (temperaturaC * 1.8) + 32;    // Convertendo para graus Fahrenheit
 
  Serial.print(" Temperatura(ºC): ");           // Printando em graus Celsius
  Serial.print(temperaturaC);
  Serial.print("  Temperatura(ºF): ");         // Printando em graus Fahrenheit
  Serial.print(temperaturaF);
  Serial.print("  Tensão(mV): ");              // Printando a tensão em miliVolts
  Serial.println(tensaoSaida);

  
  delay(2000); // Tempo em que o código vai voltar 
}
