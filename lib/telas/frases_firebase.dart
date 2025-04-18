import 'package:flutter/material.dart';

class FrasesFirebase extends StatefulWidget {
  const FrasesFirebase({super.key, required this.title});
  final String title;
  @override
  State<FrasesFirebase> createState() => _FrasesFirebaseState();
}

class _FrasesFirebaseState extends State<FrasesFirebase> {
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: Text('Frases On Line'),
            ),
          ],
        ),
      ),
    );
  }
}
