String string;
PFont font;
PImage img;

colorMode(RGB);
size(1200, 600);
string = "The purpose of this tutorial is to explain how to connect Website to MySQL DataBase based on APM Method. Also, instead of php server script language, you can use other language such as python and perl. Python used 3 method in this repo as CGI, mod_python and WSGI. This tutorial is based on APM method. At first, user fills data in Website made by html source. Then php receive data from html as form and submit tag method. Php received data store it to MySQL DataBase after connection DataBase for admin rights. Open MySQl Workbench, you can check data in table for root account. (It works in localhost, but not yet check it works completely in webserver.)";
font = loadFont("Arial-Black-48.vlw");
img = loadImage("W9_Project.png");
image(img, 0, 0, width/2, height);
img = get(0, 0, width/2, height);
background(0);  
image(img, width/2, 0, width/2, height);

int index=0; 
color c;
for (int i=0; i<=width/2; i+=width/120)
{
  for (int j=0; j<=height; j+=height/70)
  {
    c = img.get(i, j);
    float d = map(brightness(c), 0, 255, 7, 12);
    textFont(font, d);
    fill(c);
    text(string.charAt((index++)%string.length()), i, j);
  }
}
