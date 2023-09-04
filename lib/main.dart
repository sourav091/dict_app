import 'package:dict_app/data/dto/dict_dto.dart';
import 'package:dict_app/data/remote.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  late TextEditingController _controller;
  List<DictDto> _data = [];
  final RemoteClient clt = RemoteClient();

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void onClick(String word) async {
    List<DictDto> result = await clt.getMeaning(word);
    setState(() => _data = result);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dict app"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => onClick(_controller.text),
          child: Icon(Icons.search),
        ),
        body: ListView(
          children: [
            TextField(
              controller: _controller,
            ),
            ..._data.map(
              (e) => ListTile(
                title: Text(e.word),
                subtitle: Wrap(
                  children: [
                    ...e.meanings.map((e) => Text(e.synonyms.join(" , ")))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
