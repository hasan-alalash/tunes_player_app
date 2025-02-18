import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
class TuneModel {
  final Color color;
  final String sound;
  TuneModel ({required this.color,required this.sound});

   playSound(){
     final player = AudioPlayer();
     player.play(AssetSource(sound));
   }
}
