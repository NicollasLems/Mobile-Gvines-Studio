import 'package:flutter/material.dart';
import 'package:mobile_gvines/sobreJogo.dart';
import 'package:mobile_gvines/empresa.dart';
import 'package:mobile_gvines/personagens.dart';
import 'package:mobile_gvines/cenarios.dart';

void main() {
  runApp(const MaterialApp(title: "App", home: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                      MaterialPageRoute(builder: (context) => const MainApp()),
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
          child: GridView.count(
            crossAxisCount: 2, // Define duas colunas
            children: <Widget>[
              // Primeira linha
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SobreJogo()),
                  );
                },
                child: Card(
                  color: Color.fromARGB(255, 152, 38, 175),
                  elevation: 4.0, // Adiciona uma sombra
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "SOBRE O JOGO", // <-- Edite o texto aqui
                      style: TextStyle(
                        color: Colors.white, // cor do texto
                        fontSize: 18, // tamanho da fonte
                        fontWeight: FontWeight.bold, // negrito
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Cenarios()),
                  );
                },
                child: Card(
                  color: Color.fromARGB(255, 152, 38, 175),
                  elevation: 4.0, // Adiciona uma sombra
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "CENÁRIOS", // <-- Edite o texto aqui
                      style: TextStyle(
                        color: Colors.white, // cor do texto
                        fontSize: 18, // tamanho da fonte
                        fontWeight: FontWeight.bold, // negrito
                      ),
                    ),
                  ),
                ),
              ),
              // Segunda linha
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Personagens(),
                    ),
                  );
                },
                child: Card(
                  color: Color.fromARGB(255, 152, 38, 175),
                  elevation: 4.0, // Adiciona uma sombra
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "PERSONAGENS", // <-- Edite o texto aqui
                      style: TextStyle(
                        color: Colors.white, // cor do texto
                        fontSize: 18, // tamanho da fonte
                        fontWeight: FontWeight.bold, // negrito
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Empresa()),
                  );
                },
                child: Card(
                  color: Color.fromARGB(255, 152, 38, 175),
                  elevation: 4.0, // Adiciona uma sombra
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "EMPRESA", // <-- Edite o texto aqui
                      style: TextStyle(
                        color: Colors.white, // cor do texto
                        fontSize: 18, // tamanho da fonte
                        fontWeight: FontWeight.bold, // negrito
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
