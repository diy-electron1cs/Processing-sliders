final color background = #98AFAD;

// инициализэйшн
Sliders slider1 = new Sliders(50, 100, 300, 60, 30);
Sliders slider2 = new Sliders(100, 200, 200, 50, 50);
Sliders slider3 = new Sliders(100, 300, 300, 60, 60);
Sliders slider4 = new Sliders(300, 300, 300, 40, 80);

void setup() {
  size(400, 700);
  textSize(20);

  slider1.rotate(false);      // горизонтальный
  slider1.setValue(150);      // по центру

  slider2.rotate(false);      // горизонтальный
  slider2.setValue(0);        // слева
  slider2.style(#000000, #FFCC00, #0000FF, 0);  // чёрный, жёлтый, синий, 0

  slider3.rotate(true);       // вертикальный
  slider3.setValue(0);        // сверху
  slider3.style(#DB0FC7, #621A5B, #E89DE1, 30);  // сиреневый, тёмно-сиреневый, розовый, 30

  slider4.rotate(true);       // вертикальный
  slider4.setValue(150);      // по центру
  slider4.style(#000000, #1C1C1C, #B7B7B7, 10);  // чёрный, тёмно-серый, серый, 10

  background(background);
}

void draw() {
  slider1.draw();    // цвет по умолчанию
  slider2.draw();
  slider3.draw();
  slider4.draw();


  fill(background);
  rect(40, 650, 400, 200);
  fill(#004D0C);
  text("1: " + slider1.getValue() + ",   2: " + slider2.getValue() + ",   3: " + slider3.getValue() + ",   4: " + slider4.getValue(), 50, 675);
}

void mouseDragged() {
  slider1.getMouse(mouseX, mouseY);
  slider2.getMouse(mouseX, mouseY);
  slider3.getMouse(mouseX, mouseY);
  slider4.getMouse(mouseX, mouseY);
}
