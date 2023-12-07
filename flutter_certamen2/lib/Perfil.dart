import 'package:flutter/material.dart';

void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                title: Text('aless_raicich_'),
                actions: [
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.more_vert),
                    onPressed: () {},
                  ),
                ],
              ),
              SliverToBoxAdapter(
                child: Container(
                  padding: EdgeInsets.only(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage:
                              AssetImage('assets/profile_image.jpg'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          'Alessandra Raicich',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          'Diseño Digital UDD | Patinadora',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Text(
                                  '1234',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                  ),
                                ),
                                Text(
                                  'Publicaciones',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  '5678',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                  ),
                                ),
                                Text(
                                  'Seguidores',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  '9012',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                  ),
                                ),
                                Text(
                                  'Siguiendo',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Editar perfil'),
                        ),
                      ),
                      Divider(),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  height: 80,
                  color: Colors.white,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(left: index == 0 ? 16.0 : 8.0),
                        child: const CircleAvatar(
                          radius: 32,
                          backgroundColor: Colors.grey,
                        ),
                      );
                    },
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.red,
                            height: 150,
                            alignment: Alignment.center,
                            child: Text('1',
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.green,
                            height: 150,
                            alignment: Alignment.center,
                            child: Text('2',
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.blue,
                            height: 150,
                            alignment: Alignment.center,
                            child: Text('3',
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.yellow,
                            height: 150,
                            alignment: Alignment.center,
                            child: Text('4',
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.orange,
                            height: 150,
                            alignment: Alignment.center,
                            child: Text('5',
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.purple,
                            height: 150,
                            alignment: Alignment.center,
                            child: Text('6',
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.teal,
                            height: 150,
                            alignment: Alignment.center,
                            child: Text('7',
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.pink,
                            height: 150,
                            alignment: Alignment.center,
                            child: Text('8',
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.indigo,
                            height: 150,
                            alignment: Alignment.center,
                            child: Text('9',
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
     ),
);
}
}