import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:spanishnumberaudio/number_audio.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AudioCache _audioCache = AudioCache();

  List<NumberAudio> _numberAudioList = [
    NumberAudio(
        audioUri: "one.wav", buttonColor: Colors.red, buttonText: "One"),
    NumberAudio(
        audioUri: "two.wav", buttonColor: Colors.blue, buttonText: "Two"),
    NumberAudio(
        audioUri: "three.wav", buttonColor: Colors.green, buttonText: "Three"),
    NumberAudio(
        audioUri: "four.wav", buttonColor: Colors.pink, buttonText: "Four"),
    NumberAudio(
        audioUri: "five.wav", buttonColor: Colors.brown, buttonText: "Five"),
    NumberAudio(
        audioUri: "six.wav", buttonColor: Colors.blueGrey, buttonText: "Six"),
    NumberAudio(
        audioUri: "seven.wav", buttonColor: Colors.teal, buttonText: "Seven"),
    NumberAudio(
        audioUri: "eight.wav", buttonColor: Colors.grey, buttonText: "Eight"),
    NumberAudio(
        audioUri: "nine.wav", buttonColor: Colors.orange, buttonText: "Nine"),
    NumberAudio(
        audioUri: "ten.wav", buttonColor: Colors.purple, buttonText: "Ten"),
  ];

  play(String uri) {
    _audioCache.play(uri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spanish Number with Audio'),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Image(
                image: AssetImage('images/logo.png'),
              ),
              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.all(10.0),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 2.0,
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                  ),
                  itemCount: _numberAudioList.length,
                  itemBuilder: (context, index) => SizedBox(
                    width: 100.0,
                    height: 30.0,
                    child: MaterialButton(
                      color: _numberAudioList[index].buttonColor,
                      child: Text(
                        _numberAudioList[index].buttonText,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        play(_numberAudioList[index].audioUri);
                      },
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
