import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tunes_player_app/widgets/tune_item.dart';

import '../model/tune_model.dart';

class TuneView extends StatelessWidget {
  TuneView({super.key});
  final List<TuneModel> tunes =[
    TuneModel(color: Colors.teal, sound: 'note1.wav'),
    TuneModel(color: Colors.cyan, sound: 'note2.wav'),
    TuneModel(color: Colors.grey, sound: 'note3.wav'),
    TuneModel(color: Colors.indigo, sound: 'note4.wav'),
    TuneModel(color: Colors.brown, sound: 'note5.wav'),
    TuneModel(color: Colors.greenAccent, sound: 'note6.wav'),
    TuneModel(color: Colors.deepPurpleAccent, sound: 'note7.wav'),



  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Flutter Tune',style: TextStyle(color: Colors.white),),
        backgroundColor: Color(0xff253238),
        elevation: 0,
      ),
body: Column(
  children:
    tunes.map((e)=> TuneItem(tune: e),).toList(),

),
    );
  }

  // List<TuneItem> getTuneItems(){
  //   List<TuneItem> items = [];
  //   for(var color in tuneColor){
  //     items.add(TuneItem(color:color));
  //   }
  //   return items;
  }

