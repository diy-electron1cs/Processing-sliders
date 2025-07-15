[![Foo](https://img.shields.io/badge/ПОДПИСАТЬСЯ-НА%20ТГК%20DIY%20ELECTRONICS-brightgreen.svg?style=social&logo=telegram&color=blue)](https://t.me/diy_electron1cs)  
[![Foo](https://img.shields.io/badge/ПОДПИСАТЬСЯ-НА%20ОБНОВЛЕНИЯ-brightgreen.svg?style=social&logo=telegram&color=blue)](https://t.me/de_libs)

# Processing-sliders
библиотека для создания слайдеров (ползунков) в Processing

![inteface](https://github.com/diy-electron1cs/Processing-sliders/blob/main/images/interface.png?raw=true)

## использование
Для использования нужно просто добавить файл [sliders.pde](https://github.com/diy-electron1cs/Processing-sliders/blob/main/sliders/sliders.pde) в свой проект (как вкладку).

### методы
```java
// конструктор
Sliders(int, int, int, int, int);     // координата X, координата Y, длина, ширина ползунка, высота ползунка

// методы
void rotate(boolean);     // поворот; false – горизонтально, true – вертикально
void setValue(int);       // установка начального положения ползунка
void style(color, color, color, int);     // стили; цвет фона, цвет слайдера, цвет ползунка, радиус скругления
void draw();              // отрисовка
int getValue();           // получить значение
void getMouse(int, int);  // вызывается в void mouseDragged() с параметрами getMouse(mouseX, mouseY)
```
### пример ([main.pde](https://github.com/diy-electron1cs/Processing-sliders/blob/main/example/main.pde))
```java
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
```
## обратная связь
По вопросам писать в [чат DIY electronics](https://t.me/diy_electronics_chat) или на [почту](mailto:diy-electronics@mail.ru).
