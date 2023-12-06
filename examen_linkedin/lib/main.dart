import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:examen_linkedin/theme.dart';
import 'items.dart';
import 'splashscreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme(),
      home: const SplashScreen(),
    );
  }
}

class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                title: Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: Icon(Icons.account_circle),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8.0),
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: Colors.grey[600],
                            ),
                            const SizedBox(width: 8.0),
                            Text(
                              'Buscar',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.sms_rounded),
                      onPressed: () {
                        if (kDebugMode) {
                          print('Icono de más opciones presionado!');
                        }
                      },
                    ),
                  ],
                ),
                floating: true,
                pinned: false,
                expandedHeight: 40.0,
              ),
              const SliverToBoxAdapter(
                child: Column(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
                          child: Card1(
                            titulo: 'Ripley Chile',
                            subtitulo: '247.294 seguidores',
                            subtitulo2: '1 semana',
                            texto: 'En Ripley Chile alcanzamos la voz para decir NO  a la violencia.',
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
                          child: Card1(
                            titulo: 'KUNA | Alpaca & Vicuna',
                            subtitulo: '2.079 seguidores',
                            subtitulo2: '1 semana - Editado',
                            texto: 'Colección Flora Chile',
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
                          child: Card1(
                            titulo: 'Mediclic',
                            subtitulo: '7.560 seguidores',
                            subtitulo2: '3 semanas',
                            texto: 'La implementación de la telemedicina en empresas abre nuevos horizontes para el acceso de los',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          CustomScrollView(
            slivers: [
              SliverAppBar(
                title: Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: Icon(Icons.account_circle),
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 224, 224, 224),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: Colors.grey[600],
                            ),
                            const SizedBox(width: 8.0),
                            Text(
                              'Buscar',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.sms_rounded),
                      onPressed: () {
                        if (kDebugMode) {
                          print('Icono de más opciones presionado!');
                        }
                      },
                    ),
                  ],
                ),
                floating: true,
                pinned: false,
                expandedHeight: 40.0,
              ),
              SliverToBoxAdapter(
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Amplía tu red',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 4, 157, 32),
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        'Ponte al día',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  padding:
                      EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Invitaciones',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 8.0),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  padding:
                      EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Gestionar mi red',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 8.0),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, top: 16, bottom: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Busca empleo eficazmente',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 8.0),
                          Icon(Icons.close),
                        ],
                      ),
                      const SizedBox(height: 8.0),
                      const Text(
                        'Texto adicional',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      const Row(
                        children: [
                          Icon(Icons.join_right),
                          SizedBox(width: 8.0),
                          Text('Texto'),
                        ],
                      ),
                      const SizedBox(height: 8.0),
                      Container(
                        padding: const EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        child: const Text(
                          'Probar un mes gratis',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      const Text(
                        'texto',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  padding: EdgeInsets.only(left: 16, top: 8, bottom: 16),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Texto'),
                      SizedBox(height: 8.0),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              personas(nombre: 'Nombre Apellido', area: 'Area Especialidad Medica'),
                              personas(nombre: 'Nombre Apellido', area: 'Area Especialidad Diseño',),
                            ],
                          ),
                          SizedBox(
                              height:
                                  16.0), // Ajusta el espacio entre las filas
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              personas(nombre: 'Nombre Apellido', area: 'Area Especialidad Cheff',),
                              personas(nombre: 'Nombre Apellido', area: 'Area Especialidad Leyes',),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {
                          // Lógica para volver a la pantalla 0
                        },
                      ),
                      const CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Icon(Icons.person),
                      ),
                      SizedBox(width: 16.0),
                      Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Text('Cualquiera'),
                      ),
                      const Spacer(),
                      Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        child: Text('Publicar'),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '¿Sobre qué quieres hablar?',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  height: 400,
                  color: Colors.white,
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            radius: 30.0,
                            child: Icon(Icons.image_outlined),
                          ),
                          SizedBox(height: 8.0),
                          Text('Contenido'),
                          SizedBox(height: 8.0),
                          Text('multimedia'),
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            radius: 30.0,
                            child: Icon(Icons.space_dashboard_outlined),
                          ),
                          SizedBox(height: 8.0),
                          Text('Plantilla'),
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            radius: 30.0,
                            child: Icon(Icons.more_horiz),
                          ),
                          SizedBox(height: 8.0),
                          Text('Más'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          CustomScrollView(
            slivers: [
              SliverAppBar(
                title: Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: Icon(Icons.account_circle),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8.0),
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: Colors.grey[600],
                            ),
                            const SizedBox(width: 8.0),
                            Text(
                              'Buscar',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.settings),
                      onPressed: () {
                        if (kDebugMode) {
                          print('Icono de más opciones presionado!');
                        }
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.sms_rounded),
                      onPressed: () {
                        if (kDebugMode) {
                          print('Icono de más opciones presionado!');
                        }
                      },
                    ),
                  ],
                ),
                floating: true,
                pinned: false,
              ),
              SliverToBoxAdapter(
                child: Container(
                  padding: const EdgeInsets.only(top: 8, bottom: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(24.0),
                                ),
                                child: const Text(
                                  'Todo',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(width: 8.0),
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(24.0),
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: const Text(
                                  'Mis publicaciones',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(width: 8.0),
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(24.0),
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: const Text(
                                  'Menciones',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Lista(texto: 'Diseño de usuarios: 8 puestos.', tiempo: '21 horas'),
                          Lista(texto: 'Diseño de producto: 1 puesto. ', tiempo: '14 horas'),
                          Lista(texto: 'Pascal Infante Sol vio tu perfil.', tiempo: '3 horas'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          CustomScrollView(
            slivers: [
              SliverAppBar(
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                  },
                ),
                title: const Text('Mis empleos', style: TextStyle(fontWeight: FontWeight.bold),),
                floating: true,
                pinned: false,
              ),
              SliverToBoxAdapter(
                child: Container(
                  padding: const EdgeInsets.only(top: 8, bottom: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(24.0),
                                ),
                                child: const Text(
                                  'Guardados',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(width: 8.0),
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(24.0),
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: const Text(
                                  'Solicitados',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(width: 8.0),
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(24.0),
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: const Text(
                                  'Archivado',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const ListaEmpleos(puesto: 'Practica Diseño - Marketing', empresa: 'KPMG Chile', lugar: 'Las Condes (Hibrido)', estado: 'Se uno de los primeros solicitantes', tiempo: 'hace 1 día'),
                          const ListaEmpleos(puesto: 'Communication and Esperience Intern', empresa: 'AFP Cuprum', lugar: 'Santiago (Hibrido)', estado: 'En busca de personal', tiempo: 'hace 2 días'),
                          const ListaEmpleos(puesto: 'Influencer Research Outreach VA CL', empresa: 'SellerPlex', lugar: 'Chile(En remoto)', estado: 'Tu perfil se ajusta a este empleo', tiempo: 'hace 3 días'),
                          const ListaEmpleos(puesto: 'Sales: Intern Opportunities Students', empresa: 'Microsoft', lugar: 'Santiago (Hibrido)', estado: 'En busca de personal', tiempo: 'hace 4 días'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
        onPageChanged: (index) {
          setState(() {
            _currentPage = index;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPage,
        onTap: (index) {
          _pageController.jumpToPage(index);
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Mi Red',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: 'Pulicación',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notificaciones',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Empleos',
          ),
        ],
     ),
);
}
}