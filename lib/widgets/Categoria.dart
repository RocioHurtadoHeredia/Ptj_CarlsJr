import 'package:flutter/material.dart';

class Categoria extends StatelessWidget {
  final String imagenNombre;
  final String imagen;
  const Categoria({
    Key? key,
    required this.imagenNombre,
    required this.imagen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(95, 179, 173, 173),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Row(
        children: [
          Image.asset(
            imagenNombre,
            width: 32,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            imagen,
            style: const TextStyle(fontSize: 14),
          )
        ],
      ),
    );
  }
}
