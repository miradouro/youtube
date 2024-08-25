import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _indiceAtual = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset(
          "images/youtube.png",
          width: 100,
          height: 22,
        ),
        iconTheme: const IconThemeData(
          color: Colors.grey,
        ),
        actions: [
          IconButton(
            onPressed: (){
              print("videocam");
            },
            icon: const Icon(
              Icons.videocam,
            ),
          ),
          IconButton(
            onPressed: (){
              print("pesquisa");
            },
            icon: const Icon(
              Icons.search,
            ),
          ),
          IconButton(
            onPressed: (){
              print("conta");
            },
            icon: const Icon(
              Icons.account_circle,
            ),
          ),
        ],
      ),
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,
        currentIndex: _indiceAtual,
        onTap: (indice){
          setState(() {
            _indiceAtual = indice;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: "Inicio",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Em alta",
            icon: Icon(Icons.whatshot),
          ),
          BottomNavigationBarItem(
            label: "Inscrições",
            icon: Icon(Icons.subscriptions),
          ),
          BottomNavigationBarItem(
            label: "Biblioteca",
            icon: Icon(Icons.folder),
          ),
        ],
      ),
    );
  }
}
