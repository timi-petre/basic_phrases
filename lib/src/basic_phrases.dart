import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import 'choice_brain.dart';

class BasicPhrases extends StatefulWidget {
  const BasicPhrases({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  _BasicPhrasesState createState() => _BasicPhrasesState();
}

class _BasicPhrasesState extends State<BasicPhrases> {
  final ChoiceBrain choiceBrain = ChoiceBrain();
  Future<void> playerS(int index) async {
    final AudioPlayer player = AudioPlayer();
    player.setAsset(choiceBrain.choose[index].audio);
    player.play();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: GridView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: choiceBrain.choose.length,
          padding: const EdgeInsetsDirectional.all(16.0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16.0,
            crossAxisSpacing: 16.0,
          ),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  playerS(index);
                });
              },
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: <Color>[
                      Colors.white,
                      Colors.lightBlueAccent,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  choiceBrain.choose[index].text,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          }),
    );
  }
}
