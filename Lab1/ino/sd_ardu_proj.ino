// Define Arduino Uno pin numbers
#define A0 2
#define A1 3
#define A2 4 
#define A3 5
#define F_IN 6
#define F_OUT 10
#define VALID 11

// Setup and initialization 
void setup() {
  //Setup pin signal directions
  pinMode(A0, INPUT);
  pinMode(A1, INPUT);  
  pinMode(A2, INPUT);  
  pinMode(A3, INPUT);  
  pinMode(F_IN, INPUT);
  pinMode(F_OUT, OUTPUT);
  pinMode(VALID, OUTPUT);

  // Initialize serial port
  Serial.begin(115200);
  Serial.println(F("Starting SD program"));

}

void loop() {
  //Variable declaration
  bool a0, a1, a2, a3, f_in, f_out, valid;
  char buf[200];

  // Read input pins
  a0 = digitalRead(A0);
  a1 = digitalRead(A1);
  a2 = digitalRead(A2);
  a3 = digitalRead(A3);
  f_in = digitalRead(F_IN);

  f_out = (a0) && (!a1 || !a2 && a3); // Home circuit

  valid = f_in == f_out;

  //Update output pin values
  digitalWrite(F_OUT, f_out); 
  digitalWrite(VALID, valid); 
  
  sprintf(buf, "A3:%d A2:%d A1:%d A0:%d F_IN:%d----- F_OUT:%d Valid:%d\n", a3, a2, a1, a0, f_in, f_out, valid);
  Serial.print(buf);

  delay(500);

}
