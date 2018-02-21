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

    int max = 128;
    fill(255);
    rect(0, 0, max *2, max*2);


    int x = constrain(mouseX - max, -max, max);
    int y = constrain(mouseY - max, -max, max);

    int l = 44;
    println("lab : " + l + " " + x + " " + y);
    int[] rgb1 = converter.LABtoRGB(l, x, y );
    
    println("rgb: " + rgb1[0] + "  "  +rgb1[1]  + " " + rgb1[2]);
    fill(rgb1[0], rgb1[1], rgb1[2]);
    rect(20, 20, 100, 100);
}
