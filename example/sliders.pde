class Sliders {
  int _value = 0;
  int _x, _y, _l;
  int _border = 10;
  int _w, _h;
  int _thickness = 10;
  boolean _vertical = true;
  color _backgroundColor = #7F7F7F;
  color _sliderColor = #000000;
  color _knobColor = #FFFFFF;

  //координата X, координата Y, длина, ширина ползунка, высота ползунка
  Sliders(int x, int y, int l, int w, int h) {
    _x = x;
    _y = y;
    _l = l;
    _w = w;
    _h = h;
  }

  void rotate(boolean rotate) {
    _vertical = rotate;
  }

  void style(color backgroundColor, color sliderColor, color knobColor, int border) {
    _backgroundColor = backgroundColor;
    _sliderColor = sliderColor;
    _knobColor = knobColor;
    _border = border;
  }

  void draw() {
    int sBorder = _thickness / 2;
    noStroke();
    fill(_backgroundColor);
    if (_vertical) {
      rect(_x - (_h / 2), _y - (_w / 2), _h, _l + _w, _border, _border, _border, _border);
    } else {
      rect(_x - (_w / 2), _y - (_h / 2), _l + _w, _h, _border, _border, _border, _border);
    }
    fill(_sliderColor);
    if (_vertical) {
      rect(_x - (_thickness / 2), _y, _thickness, _l, sBorder, sBorder, sBorder, sBorder);
    } else {
      rect(_x, _y - (_thickness / 2), _l, _thickness, sBorder, sBorder, sBorder, sBorder);
    }
    fill(_knobColor);
    if (_vertical) {
      rect(_x - (_h / 2), _value - (_w / 2), _h, _w, _border, _border, _border, _border);
    } else {
      rect(_value - (_w / 2), _y - (_h / 2), _w, _h, _border, _border, _border, _border);
    }
  }

  void getMouse(int X, int Y) {
    if (_vertical) {
      if (X >= _x - (_thickness / 2) - (_h / 2) && X <= _x + (_thickness / 2) + (_h / 2) && Y >= _y && Y <= _y + _l) {
        _value = constrain(Y, _y, _y + _l);
      }
    } else {
      if (X >= _x && X <= _x + _l && Y >= _y - (_h / 2) && Y <= _y + (_h / 2)) {
        _value = constrain(X, _x, _x + _l);
      }
    }
  }

  void setValue(int value) {
    if (_vertical) {
      _value = constrain(value + _y, _y, _y + _l);
    } else {
      _value = constrain(value + _x, _x, _x + _l);
    }
  }

  int getValue() {
    if (_vertical) {
      return _value - _y;
    } else {
      return _value - _x;
    }
  }
}
