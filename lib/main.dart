import 'package:flutter/material.dart';
import 'package:hurtado/paginas/iniciar.dart';

void main() {
  runApp(const AppCarlsJr());
}

class AppCarlsJr extends StatelessWidget {
  const AppCarlsJr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StartedPage(),
    );
  }
}
