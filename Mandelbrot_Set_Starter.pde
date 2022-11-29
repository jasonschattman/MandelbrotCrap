float aMin = 0;
float aMax = 0.25;
float bMin = 0.40;
float bMax = 0.65;


void setup() {
  size(1000,1000);
  background(255);
  noStroke();
  noLoop();
}


void draw() {
  for(int x=0; x <= 1000; x++) {  //For every x value on my screen
    for(int y=0; y <= 1000; y++) {  //For every y value in the column belonging to x
      float a = getA(x);  //a = -1.17
      float b = getB(y);  //b = 0.85
      ComplexNum c = new ComplexNum(a,b);  //The complex number I want to test using the spreadsheet algorithm
      ComplexNum z = c; //z is going to change
      int n = 1;  //which row of the spreadsheet we're on
      
      while ( z.absoluteValue() < 2  && n < 200 ) {  //We'll need to code an absoluteValue() method 
        z = z.multiply(z).add(c);  //use the multiply() and add() methods from the ComplexNum class
        n++;
      }
      
      if (n >= 200 )
      {
        stroke(0);
        point(x,y);  //rect(x, y, 1, 1); or use point() 
      }
      
      else { //z got too big before we reached 200
        
      }
    }
    
  } 
}


float getA( float x ) {
  return x/width * (aMax-aMin) + aMin;
}


float getB( float y ) {
  return -y/height * (bMax-bMin) + bMax;
}
