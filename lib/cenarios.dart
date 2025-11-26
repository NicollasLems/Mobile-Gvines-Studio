import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:mobile_gvines/sobreJogo.dart';
import 'package:mobile_gvines/main.dart';
import 'package:mobile_gvines/empresa.dart';
import 'package:mobile_gvines/personagens.dart';
import 'package:mobile_gvines/info.dart';
import 'package:mobile_gvines/fase.dart';

void main() {
  runApp(const Cenarios());
}

class Cenarios extends StatefulWidget {
  const Cenarios({super.key}); /*Talvez apagar essa linha*/

  @override
  _CenariosState createState() => _CenariosState();
}

class _CenariosState extends State<Cenarios> {
  List<Fase> fases = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    final String response = await rootBundle.loadString('assets/assets.json');
    final List<dynamic> data = json.decode(response);
    setState(() {
      fases = List<Fase>.from(data.map((model) => Fase.fromJson(model)));
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /*Talvez mudar para return Scaffold*/
      home: Scaffold(
        /*talvez apagar caso mude em cima*/
        appBar: AppBar(
          title: Image.asset('assets/img/logo.png', height: 70, width: 150),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 152, 38, 175),
          leading: Builder(
            builder: (context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                color: Color.fromARGB(255, 255, 255, 255),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 152, 38, 175),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/img/logo.png', height: 100, width: 200),
                  ],
                ),
              ),
              ListTile(
                title: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SobreJogo(),
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 152, 38, 175),
                    foregroundColor: Color.fromARGB(255, 255, 255, 255),
                    minimumSize: Size(300, 61),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Sobre o jogo',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              ListTile(
                title: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Cenarios()),
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 152, 38, 175),
                    foregroundColor: Color.fromARGB(255, 255, 255, 255),
                    minimumSize: Size(300, 61),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text('Cenários', style: TextStyle(fontSize: 20)),
                ),
              ),
              ListTile(
                title: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Personagens(),
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 152, 38, 175),
                    foregroundColor: Color.fromARGB(255, 255, 255, 255),
                    minimumSize: Size(300, 61),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Personagens',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              ListTile(
                title: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Empresa()),
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 152, 38, 175),
                    foregroundColor: Color.fromARGB(255, 255, 255, 255),
                    minimumSize: Size(300, 61),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Empresa',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),

        bottomNavigationBar: BottomAppBar(
          color: Color.fromARGB(255, 152, 38, 175),
          shape: const CircularNotchedRectangle(),
          notchMargin: 5.0,
          clipBehavior: Clip.antiAlias,
          child: SizedBox(
            height: kBottomNavigationBarHeight,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  color: Color.fromARGB(255, 255, 255, 255),
                  icon: const Icon(Icons.home),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MainApp(),
                      ),
                    );
                  },
                ),
                IconButton(
                  color: Color.fromARGB(255, 255, 255, 255),
                  icon: const Icon(Icons.group),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Empresa()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
            ),
            itemCount: fases.length,
            itemBuilder: (context, index) {
              final fase = fases[index]; // Carrega a fase
              return InkWell(
                onTap: () {
                  // Navega para a tela de Info, passando a fase selecionada
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Info(fase: fase)),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(70.0),
                  child: Card(
                    color: Color.fromARGB(255, 152, 38, 175),
                    elevation: 4.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        fase.nomef,
                        textAlign: TextAlign.center, // Exibe o nome da fase
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
