void setup(){
  size(1600,500);
}
void draw(){
  clear();
  rect(30,450,30,100);
  if(shoot){
  skraakast();
}
  ellipse(x,y,30,30);   
  }
void mousePressed(){
 L = dist(mouseX,mouseY,x,y); 
 println(L);
 shoot = true;
}

void skraakast() {
    if(y<490){
  t = t +0.07;
  
  }
    stroke(255);
  ellipse(x0,y0,10,10);
  line(mouseX,mouseY,x0,y0);
  float a = mouseY - y0;
  float b = mouseX - x0; 
  float v = -atan(a/b);
  float l = dist(mouseX, mouseY,x0,y0);
  text("a=" + a + "b =" + b,10,10);
  text("v = " + degrees(v),10,20);
   text("l = " + l,10,30);
   
   
    u0 = sqrt(2*E/m*(1+A*A));
    v0 = A * sqrt(2*E/m+(1+A*A));
    x = u0 * t + x0;
    y = -0.5 * g * t * t + v0 * t + y0;
 
   //println(x,y);
   if(y>500 || x>500){
   }  
}
