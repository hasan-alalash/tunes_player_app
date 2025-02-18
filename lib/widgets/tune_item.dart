import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tunes_player_app/model/tune_model.dart';

class TuneItem extends StatefulWidget {
   TuneItem({super.key, required this.tune});
final TuneModel tune;

  @override
  State<TuneItem> createState() => _TuneItemState();
}

class _TuneItemState extends State<TuneItem> {
  bool isPlaying = false;

  void togglePlay() {
    setState(() {
      isPlaying = true; // تشغيل الأيقونة

      // بعد 3 ثوانٍ، ترجع للأيقونة الأولى
      Future.delayed(Duration(seconds: 2,), () {

        setState(() {
          isPlaying = false;
        });
      });
    });

    // هنا يمكنك تشغيل الصوت عند الضغط
    // tune.playSound();
    widget.tune.playSound();
  }
  @override
  Widget build(BuildContext context) {
    return Expanded(child:


            Container(
             width: double.infinity,
             color: widget.tune.color,
             child:  IconButton(
               onPressed: togglePlay,
               icon: Icon(

                 isPlaying ? Icons.pause : Icons.play_arrow,
                 color: Colors.white,
                 size: 58,
               ),
             )
           ),



    );
  }
}
