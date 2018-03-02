int numCols=8; 
int numRows=8; 
 
int [] saborColor = new int [3];     
{
  saborColor[0]=color(255, 0, 0); 
  saborColor[1]=color(0, 0, 255); 
  saborColor[2]=color(255, 0, 255);
}
 
void setup () { 
  size(2000, 2000); 
  background(0); 
  noStroke(); 
  smooth(); 
  println(saborColor.length);
} 
 

void draw () { 
  for (float x=width/numCols; x<width; x+= (width/numCols)) { 
    for (float y=height/numCols; y<height; y+= (height/numCols)) {
 
      pushMatrix(); // position of sabor
      translate(x, y);  //draw at x & y location 

        fill(255, 255, 255);
        rotate(-180);
        rect(50, 50, 5, 30);
        rect(40, 50, 5, 30);
        rect(60, 50, 40, 30);
        rect(85, 55, 20, 20);
        
        fill(saborColor[int(random(saborColor.length))]);
        rect(-170, 50, 200, 30, 70);
        rect( 10, 50, 20, 30);
        
      popMatrix();
    }
  }
  

  
// Stops redrawing 
  noLoop();
  //saveFrame("movie.tif"); //Saves img it creates
}

void mousePressed () {
  //call loop once here to run through draw again and generate a new
  //random composition
  loop();
} 