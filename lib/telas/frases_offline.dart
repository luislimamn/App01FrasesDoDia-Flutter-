import 'dart:math';
import 'package:flutter/material.dart';

import '../widgets/block_button.dart';

class FrasesOffline extends StatefulWidget {
  const FrasesOffline({super.key, required this.title});
  final String title;
  @override
  State<FrasesOffline> createState() => _FrasesOfflineState();
}

class _FrasesOfflineState extends State<FrasesOffline> {
  var _fraseGerada = "Clique para gerar nova Frase!";
  final _frases = [
    "A coragem não é ausência do medo; é a persistência apesar do medo.",
    "O futuro pertence àqueles que acreditam na beleza de seus sonhos.",
    "O preço da perfeição é a prática constante.",
    "Teste da Versão 2025.",
    "Só erra quem produz, mas só produz quem não tem medo de errar.",
    "O sucesso é ir de fracasso em fracasso sem perder o entusiasmo.",
    "No meio da dificuldade encontra-se a oportunidade.",
    "O importante não é vencer todos os dias, mas lutar sempre.",
    "O medo de perder tira a vontade de ganhar.",
    "É melhor conquistar a si mesmo do que vencer mil batalhas.",
    "Há três coisas na vida que nunca voltam atrás: a flecha lançada, a palavra pronunciada e a oportunidade perdida.",
    "O rio só atinge o seu objetivo porque aprendeu a contornar os obstáculos.",
    "Sucesso não é obter todas as riquezas do mundo e sim focar nas coisas que te fazem feliz.",
    "Mantenha seu coração e sua mente na direção certa e não terá que se preocupar com seus pés."
  ];
  void gerarFrases(){
    var numeroSorteado = Random().nextInt(_frases.length);
    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("images/logo.png"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.normal,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: BlockButton(
                icon: Icons.add_circle_outline,
                label: 'Nova Frase',
                onPressed: gerarFrases,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
