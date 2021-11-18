import 'package:flutter/material.dart';

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
  final List<String> data = [
    'da',
    'nu',
    'fix',
    'da',
    'nu',
    'fix',
    'da',
    'nu',
    'fix',
    'da',
    'nu',
    'fix',
  ];
  int index = 0;

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
            return Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(data[index]),
            );
          }),
    );
  }
}
