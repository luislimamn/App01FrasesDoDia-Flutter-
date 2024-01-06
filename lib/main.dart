import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _titulo = "Frases do Dia";
  var _fraseGerada = "Clique para gerar nova Frase!";
  var _frases = [
    "A coragem não é ausência do medo; é a persistência apesar do medo.",
    "O futuro pertence àqueles que acreditam na beleza de seus sonhos.",
    "O preço da perfeição é a prática constante.",
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
  void _gerarFrases(){
    var numeroSorteado = Random().nextInt(_frases.length);
    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titulo),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(width: 3, color: Colors.white)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/logo.png"),
            Text(
              _fraseGerada,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 25,
                fontStyle: FontStyle.italic,
                color: Colors.black
              ),
            ),
            ElevatedButton(
              child: const Text(
                "Nova Frase",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.green,
                  fontWeight: FontWeight.bold
                ),
              ),
              //color: Colors.orange,
              //padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
              onPressed: _gerarFrases,
            )
            /*
            RaisedButton(
              child: Text(
                "Nova Frase",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
              color: Colors.green,
              onPressed: _gerarFrases,
            )

             */
          ],
        ),
      ),
    );
  }
}
