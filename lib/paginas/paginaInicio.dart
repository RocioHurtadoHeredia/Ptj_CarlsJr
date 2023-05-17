import 'package:flutter/material.dart';

import '../widgets/Hamburguesas.dart';
import '../widgets/Categoria.dart';

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  State<Inicio> createState() => _HomePageState();
}

class _HomePageState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000000),
      appBar: AppBar(
        title: const Text('Carls Jr'),
        centerTitle: true,
        backgroundColor: const Color(0xff000000),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 24,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Color(0xc4ffffff),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_month_outlined,
              color: Color(0xc4ffffff),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_bubble_outline,
              color: Color(0xc4ffffff),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_none_outlined,
              color: Color(0xc4ffffff),
            ),
            label: '',
          ),
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Hola,",
                    style: TextStyle(
                      color: Color(0xb1ffffff),
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Rocio Hurtado",
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
              const CircleAvatar(
                radius: 30,
                backgroundColor: Colors.grey,
                child: CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage("assets/usuario.jpg"),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
            decoration: BoxDecoration(
              color: const Color(0x9ef6d725),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "assets/famous.png",
                  width: 92,
                  height: 100,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "¿Cuál prefieres?",
                      style: TextStyle(
                          color: Color(0xddffffff),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const SizedBox(
                      width: 120,
                      child: Text(
                        "Encuentra cualquier hamburgiesa que desees",
                        style: TextStyle(
                          color: Color(0xddffffff),
                          fontSize: 12,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 150,
                      height: 35,
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          color: const Color(0xffffaf00),
                          borderRadius: BorderRadius.circular(12.0)),
                      child: const Center(
                        child: Text(
                          "Iniciar",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.only(left: 16),
            height: 64,
            decoration: BoxDecoration(
              color: const Color(0x9effffff),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: const [
                Icon(
                  Icons.search,
                  size: 32,
                  color: Colors.black54,
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  "Escribe el nombre del producto",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                Categoria(
                  imagenNombre: "assets/famous.png",
                  imagen: "Hamurgue.",
                ),
                SizedBox(
                  width: 8,
                ),
                Categoria(
                  imagenNombre: "assets/Bibidas.png",
                  imagen: "Bebidas",
                ),
                SizedBox(
                  width: 8,
                ),
                Categoria(
                  imagenNombre: "assets/papas.png",
                  imagen: "Papas",
                ),
                SizedBox(
                  width: 8,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Hamburguesas",
                style: TextStyle(
                  color: Color(0xffffffff),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                "Ver Todo",
                style: TextStyle(
                  color: Color(0xa1ffffff),
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                Hamburguesas(
                  imagen: "assets/Captura.jpg",
                  nombre: "Famous Star",
                  hamburguesa: "Hamburguesa",
                ),
                Hamburguesas(
                  imagen: "assets/Captura2.jpg",
                  nombre: "Bacon Swiss",
                  hamburguesa: "Hamburguesa",
                ),
              ],
            ),
          )
        ],
        // ),
        //),
      ),
    );
  }
}
