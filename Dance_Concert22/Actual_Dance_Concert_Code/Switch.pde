void ChangeS(PImage x){
 
  int[][] pixelArray = getPixelArray(x);

    int[][] newArray = Switch(pixelArray);

  //int[][] newArray2 = threshold(newArray);

  setPixelArray(x, newArray);

}


void Change(PImage x) {
  int[][] pixelArray = getPixelArray(x);

 // int[][] newArray2 = threshold(pixelArray);

  setPixelArray(x, pixelArray);
}


int[][] threshold(int[][] pixelArray) {

  int low = 0x000000;
  int high = 0xaa0000;
  int[][] newArray = new int[pixelArray.length][pixelArray[0].length];

  int h = pixelArray.length;    // number of rows
  int w = pixelArray[0].length; // length of row

  for (int i=0; i<h; i++) 
  for (int j=0; j<w; j++)
  {
    int c = newArray[i][j] & 0xffffff; // 0xaarrggbb
    if (c < low || c > high)
      newArray[i][j] = 0;
    else
      newArray[i][j] = 0xffffffff;
  }

  return newArray;
}


int[][] Switch(int[][] pixelArray){
    int[][] newArray = new int[pixelArray.length][pixelArray[0].length];

    int w = pixelArray[0].length; // length of row

    for (int i=0; i<pixelArray.length; i++)
    for (int j=0; j<w; j++)
    {
        newArray[i][j] = pixelArray[i][w-1-j] ;
    }

    return newArray;
}


int[][] getPixelArray(PImage img){
    img.loadPixels();
    int[][] newArray = new int[img.height][img.width];
    
    if (img.width * img.height != img.pixels.length)
        println("[getPixelArray] Something's wrong!");

    for (int i=0; i<img.height; i++){
    for (int j=0; j<img.width; j++)
    {
        newArray[i][j]= img.pixels[i*img.width + j];
    }}
    
    return newArray;
}


void setPixelArray(PImage img, int[][] newArray){
    img.loadPixels();

    if (newArray.length* newArray[0].length != img.pixels.length)
        println("[setPixelArray] Something's wrong!");

    for (int i=0; i<img.height; i++)
    for (int j=0; j<img.width; j++)
    {
        img.pixels[i*img.width + j] = newArray[i][j];
    }
         
    img.updatePixels();
}
