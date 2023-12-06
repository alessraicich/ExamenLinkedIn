import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

Widget createCustomCard(BuildContext context, String groupName) {
  void showBottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 180,
          color: Colors.white,
          child: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('BottomSheet'),
              ],
            ),
          ),
        );
      },
    );
  }

  return Card(
    elevation: 1,
    margin: const EdgeInsets.all(0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(0),
    ),
    child: Container(
      height: 460,
      color: Colors.grey,
      child: Column(
        children: [
          Container(
            color: Colors.white,
            height: 72,
            padding: const EdgeInsets.only(left: 10),
            child: ListTile(
              contentPadding: const EdgeInsets.fromLTRB(2, 4, 8, 4),
              leading: const CircleAvatar(
                //backgroundColor: Colors.grey,
                backgroundImage:
                    AssetImage('assets/1.jpg'), // Ruta de tu imagen '1.jpg'
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Card Uno',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.more_vert),
                    onPressed: () {
                      showBottomSheet(context);
                    },
                    padding: const EdgeInsets.only(top: 12),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image:
                      AssetImage('assets/pa.jpg'), // Ruta de tu imagen '2.jpg'
                  fit: BoxFit.cover,
                ),
              ),
              child: SingleChildScrollView(
                child: Container(
                  color: Colors.grey,
                  padding: const EdgeInsets.all(0),
                ),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            height: 100,
            child: Container(
              margin: const EdgeInsets.only(top: 12),
              alignment: Alignment.topLeft,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 16),
                  Icon(
                    Icons.favorite_outline,
                    color: Colors.black,
                  ),
                  SizedBox(width: 12),
                  Icon(
                    Icons.chat_bubble_outline,
                    color: Colors.black,
                  ),
                  SizedBox(width: 12),
                  Icon(
                    Icons.send,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

// ignore: must_be_immutable
class Card1 extends StatelessWidget {
  final String titulo;
  final String subtitulo;
  final String subtitulo2;
  final String texto;

  const Card1(
      {Key? key,
      required this.titulo,
      required this.subtitulo,
      required this.subtitulo2,
      required this.texto})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      margin: const EdgeInsets.symmetric(horizontal: 0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.white,
            height: 90,
            padding: const EdgeInsets.only(left: 16, bottom: 8),
            child: ListTile(
              contentPadding: const EdgeInsets.fromLTRB(2, 0, 8, 4),
              leading: const CircleAvatar(
                backgroundColor: Color.fromARGB(255, 161, 158, 158),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    titulo,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    subtitulo,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(255, 43, 43, 43),
                    ),
                  ),
                  Text(
                    subtitulo2,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(255, 43, 43, 43),
                    ),
                  ),
                ],
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.more_vert),
                    onPressed: () {},
                    padding: const EdgeInsets.only(top: 12, bottom: 8),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {},
                    padding: const EdgeInsets.only(top: 12, bottom: 8),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.white,
            height: 30,
            padding: const EdgeInsets.only(left: 16),
            child: Text(texto),
          ),
          Container(
            height: 400,
            color: Color.fromARGB(255, 131, 130, 130),
          ),
          Container(
            color: Colors.white,
            height: 50,
            padding: EdgeInsets.only(),
            child: const Row(
              children: [
                Icon(
                  Icons.join_right,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                SizedBox(width: 8.0),
                Text(
                  'Texto',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            height: 80,
            padding: EdgeInsets.only(top: 4),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(Icons.thumb_up_outlined, color: Colors.black),
                    SizedBox(height: 4.0),
                    Text('Me gusta', style: TextStyle(fontSize: 12.0)),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.chat_outlined, color: Colors.black),
                    SizedBox(height: 4.0),
                    Text('Comentario', style: TextStyle(fontSize: 12.0)),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.autorenew, color: Colors.black),
                    SizedBox(height: 4.0),
                    Text('Compartir', style: TextStyle(fontSize: 12.0)),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.send, color: Colors.black),
                    SizedBox(height: 4.0),
                    Text('Enviar', style: TextStyle(fontSize: 12.0)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class personas extends StatelessWidget {
final String nombre;
final String area;

  const personas({
    Key? key, required this.nombre, required this.area
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      margin: const EdgeInsets.symmetric(horizontal: 0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        padding: EdgeInsets.all(12.0),
        width: 200,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          children: [
            const CircleAvatar(
              backgroundColor: Colors.white,
              radius: 40.0,
            ),
            SizedBox(height: 8.0),
            Text(nombre),
            Text(area),
            Text('En función de tu perfil'),
            SizedBox(height: 8.0),
            Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(24.0),
              ),
              child: const Text(
                'Conectar',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class Lista extends StatelessWidget {
  final String texto;
  final String tiempo;

  const Lista({Key? key, required this.texto, required this.tiempo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 161, 158, 158),
                radius: 30.0,
              ),
            ),
            SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    texto,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24.0),
                    border: Border.all(color: Colors.blue)
                  ),
                  child: const Text(
                    'Ver empleo',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 80),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 4.0),
                  child: Text(
                    tiempo,
                    style: const TextStyle(
                      fontSize: 12.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Icon(Icons.more_horiz),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ListaEmpleos extends StatelessWidget {
  final String puesto;
  final String empresa;
  final String lugar;
  final String estado;
  final String tiempo;

  const ListaEmpleos({Key? key, required this.puesto, required this.empresa, required this.lugar, required this.estado, required this.tiempo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 161, 158, 158),
                radius: 30.0,
              ),
            ),
            SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: Text(
                    puesto,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: Text(
                    empresa,
                    style: const TextStyle(
                      fontSize: 12.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: Text(
                    lugar,
                    style: const TextStyle(
                      fontSize: 12.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: Text(
                    estado,
                    style: const TextStyle(
                      fontSize: 12.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: Text(
                    tiempo,
                    style: const TextStyle(
                      fontSize: 12.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 120),
            const Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 0),
                  child: Icon(Icons.more_horiz),
                )
              ],
            ),
          ],
        ),
     ),
);
}
}