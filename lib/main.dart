import 'package:flutter/material.dart';

// Demo App
// Hot Reloadで変更を即時反映する為のWrapper
class DemoApp extends StatelessWidget {
  const DemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Column Widget Example
    // 縦並びにする為のWidget
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        TextExample('Text Example'),
        RowExample(),
        StackExample(),
        ContainerExample(),
      ],
    );
  }
}

// Text Widget Example
// 文字列を表示する為のWidget
class TextExample extends StatelessWidget {
  const TextExample(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        letterSpacing: 2,
        wordSpacing: 2,
        locale: Locale('ja', 'JP'),
        decoration: TextDecoration.none,
        fontFamily: 'Roboto',
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

// Row Widget Example
// 横並びにする為のWidget
class RowExample extends StatelessWidget {
  const RowExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        TextExample('Row01'),
        TextExample('Row02'),
        TextExample('Row03'),
      ],
    );
  }
}

// Stack Widget Example
// 重ねて表示する為のWidget
class StackExample extends StatelessWidget {
  const StackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: <Widget>[
        Container(
          width: 120,
          height: 100,
          color: Colors.red,
        ),
        Container(
          width: 10,
          height: 120,
          color: Colors.green,
        ),
        Container(
          width: 80,
          height: 80,
          color: Colors.blue,
        ),
      ],
    );
  }
}

class ContainerExample extends StatelessWidget {
  const ContainerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 80,
      color: Colors.red,
      alignment: AlignmentDirectional.bottomEnd,
      padding: const EdgeInsets.all(10),
      transform: Matrix4.rotationZ(0.30),
      child: const TextExample('Container'),
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      title: 'Flutter Demo',
      home: DemoApp(),
    ),
  );
}
