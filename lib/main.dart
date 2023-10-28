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

void main() {
  runApp(
    const MaterialApp(
      title: 'Flutter Demo',
      home: DemoApp(),
    ),
  );
}
