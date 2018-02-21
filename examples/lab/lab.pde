import tech.lity.rea.colorconverter.ColorConverter;

ColorConverter converter;

void settings() {
    size(640, 480, P3D);
}

void setup(){
    converter = new ColorConverter();
}

void draw(){
    background(0);

    int x = constrain(mouseX - 200, -128, 128);
    int y = constrain(mouseY - 200, -128, 128);
    int[] rgb1 = converter.LABtoRGB(50, x, y );
    
    println("rgb: " + rgb1[0] + "  "  +rgb1[1]  + " " + rgb1[2]);
    fill(rgb1[0], rgb1[1], rgb1[2]);
    rect(20, 20, 100, 100);
}
