import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LayoutBasico(),
    );
  }
}

class LayoutBasico extends StatefulWidget {
  const LayoutBasico({super.key});

  @override
  State<LayoutBasico> createState() => _LayoutBasicoState();
}

 class _LayoutBasicoState extends State<LayoutBasico> {
    @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
     title: const Text('Minha AppBar'),
  ),
  body: Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween, // Divisão vertical
    children: [
      const Text('Conteúdo no topo'),
      Expanded( //Quando usar Column e MainAxisAlignment, deve-se usar Expanded para conseguir centralizar o conteúdo.
        child: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Botão Central'),
        ),
      ),
      )
      
    ],
  ),
  bottomNavigationBar: Padding(
    padding: const EdgeInsets.all(16.0),
    child: ElevatedButton(
      onPressed: () {},
      child: const Text('Botão no Rodapé'),
    ),
  ),
);
  }
}

 


  