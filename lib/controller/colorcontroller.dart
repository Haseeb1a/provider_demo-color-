import 'package:flutter/material.dart';
class colorprovider with ChangeNotifier{
  final List<Color> _color = [
    Colors.black,
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
  ];
  int _index = 0;
  Color get currentColor => _color[_index];

  void changeColors() {
    print(_index );
    _index = (_index + 1) % _color.length;
    print(_color.length);
    print('indes$_index');

    notifyListeners();
  }
}