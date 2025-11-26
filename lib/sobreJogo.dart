import 'package:flutter/material.dart';
import 'package:mobile_gvines/empresa.dart';
import 'package:mobile_gvines/main.dart';
import 'package:mobile_gvines/personagens.dart';
import 'package:mobile_gvines/cenarios.dart';

void main() {
  runApp(const SobreJogo());
}

class SobreJogo extends StatelessWidget {
  const SobreJogo({super.key});

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

        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset('assets/img/capa.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Odisseia Solar',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Kibo então embarca em uma aventura à procura do objeto descrito como a esperança daquele mundo. Neste desafio, o jovem semideus precisa superar desafios e criaturas sombrias para salvar o mundo de sua terrível infecção. Como sua fiel aliada, Kibo possui Eclipse, uma lira mágica que com notas específicas se transforma em um arco, tornando notas musicais em ataques especiais, o presente de sua falecida mãe é a chave para superar criaturas hostis ao longo do caminho, bem como iluminar sua jornada e garantir sua chegada no Templo do Deus do Sol, o epicentro da infecção das sombras. Será que Kibo e sua música serão capazes de superar as barreiras do luto, da dor e das sombras para trazer de volta o brilho do Sol, ou maiores sacrifícios deverão ser feitos em prol da segurança de um mundo que a cada segundo perde mais a sua força?',
                  style: TextStyle(
                    fontSize: 17,
                    color: Color.fromARGB(255, 0, 0, 0),
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
