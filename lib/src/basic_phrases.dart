import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

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
  Future<void> playerS() async {
    final AudioPlayer player = AudioPlayer();
    // final List<Future<Duration?>> duration = <Future<Duration?>>[
    //   player.setUrl('https://www.pacdv.com/sounds/voices/okay-7.wav'),
    // ];
    player.play();
  }

  final List<String> data = <String>['okay', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: GridView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: data.length,
          padding: const EdgeInsetsDirectional.all(16.0),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  playerS();
                });
              },
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  data[index],
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
