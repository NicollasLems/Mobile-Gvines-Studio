import 'package:flutter/material.dart';
import 'package:mobile_gvines/sobreJogo.dart';
import 'package:mobile_gvines/main.dart';
import 'package:mobile_gvines/empresa.dart';
import 'package:mobile_gvines/person.dart';
import 'package:mobile_gvines/cenarios.dart';
import 'package:mobile_gvines/fase.dart';

final personagens = [
      Personagem(nome: "KIBO", imagem: "assets/img/kibo.jpg"),
      Personagem(nome: "LOXUS KHAM", imagem: "assets/img/loxus.jpg"),
      Personagem(nome: "NESSA", imagem: "assets/img/nessa.png"),
      Personagem(nome: "CARONTE", imagem: "assets/img/caronte.jpeg"),
      Personagem(nome: "UMBRA", imagem: "assets/img/umbra.jpg"),
      Personagem(nome: "FALSO ÍCTIO", imagem: "assets/img/falso.jpg"),
      Personagem(nome: "VENTI", imagem: "assets/img/venti.jpg"),
      Personagem(nome: "BADROCK", imagem: "assets/img/badrock.jpg"),
      Personagem(nome: "EREBOS", imagem: "assets/img/erebos.png"),
      // Adicione os outros aqui
    ];

void main() {
  runApp(const Personagens());
}

class Personagens extends StatelessWidget {
  const Personagens({super.key});

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
                  child: const Text('Empresa', style: TextStyle(fontSize: 20)),
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
        /*body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: GridView.count(
            crossAxisCount: 1,
            mainAxisSpacing: 50.0,
            crossAxisSpacing: 10.0,
            children: personagens.map((p) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Person(personagem: p),
                    ),
                  );
                },
                child: Card(
                  color: const Color.fromARGB(255, 152, 38, 175),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 4.0,
                  child: Center(
                    child: Text(
                      p.nome,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),*/
        body: Builder(
          builder: (context) => Padding(
            padding: const EdgeInsets.all(30.0),
            child: GridView.count(
              crossAxisCount: 1,
              mainAxisSpacing: 50.0,
              crossAxisSpacing: 10.0,
              children: personagens.map((p) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Person(personagem: p),
                      ),
                    );
                  },
                  child: Card(
                    color: const Color.fromARGB(255, 152, 38, 175),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 4.0,
                    child: Center(
                      child: Text(
                        p.nome,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
