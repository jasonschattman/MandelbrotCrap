class ComplexNum {
  //FIELDS
  float realPart; 
  float imagPart; 
  
  //CONSTRUCTOR
  ComplexNum( float rp, float ip ) {
    this.realPart = rp;
    this.imagPart = ip;
  }
  
  //METHODS
  void printMe() {
    println( this.realPart + "+" + this.imagPart + "i" );  //For now this is fine.
  }
  
  
  float absoluteValue() {  // |z| = sqrt(a^2 + b^2)
    return sqrt( pow(this.realPart,2) + pow(this.imagPart,2) ) ;
  }
  
  
  ComplexNum add( ComplexNum other ) {
    float newReal = this.realPart + other.realPart;
    float newImag = this.imagPart + other.imagPart;
    
    ComplexNum newCN = new ComplexNum(newReal, newImag);
    
    return newCN;
  }
  
  
  ComplexNum multiply( ComplexNum other ) {
    float newRealPart = this.realPart*other.realPart - this.imagPart*other.imagPart;
    float newImagPart =  this.realPart*other.imagPart + this.imagPart*other.realPart;
    
    ComplexNum answer = new ComplexNum( newRealPart, newImagPart);    
    
    return answer;
  }
}
