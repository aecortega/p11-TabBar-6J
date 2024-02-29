import 'package:flutter/material.dart';

void main() => runApp(AppTabBar());

class AppTabBar extends StatelessWidget {
  const AppTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ejemplo TabBar",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MiPaginaInicial(),
    );
  }
}

class MiPaginaInicial extends StatefulWidget {
  const MiPaginaInicial({Key? key}) : super(key: key);

  @override
  State<MiPaginaInicial> createState() => _MiPaginaInicialState();
}

class _MiPaginaInicialState extends State<MiPaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("TabBar Cisneros Ortega"),
          bottom: const TabBar(
            tabs: [
              Tab(text: "Carrito", icon: Icon(Icons.flight)),
              Tab(text: "Usuario", icon: Icon(Icons.flight)),
              Tab(text: "Ropa", icon: Icon(Icons.flight)),
              Tab(text: "Carta", icon: Icon(Icons.flight)),
            ],
          ),
        ),
        body: TabBarView(
          children: const <Widget>[
            Center(
              child: Text("Opcion 1",
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 50)),
            ),
            Center(
              child: Text("Opcion 2",
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 50)),
            ),
            Center(
              child: Text("Opcion 3",
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 50)),
            ),
            Center(
              child: Text("Opcion 4",
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 50)),
            ),
          ],
        ),
      ),
    );
  }
}
