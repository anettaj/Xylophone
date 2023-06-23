import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main(){
  runApp(
      Xylophone()
  );
}
class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

void playSound( int n){
  final player = AudioPlayer();
  player.play(AssetSource('note$n.wav'),);
}

Expanded buildKey({required Color color,required int soundNumber}){

  return Expanded(
    child: Container(
      color: color,
      child: TextButton(
        onPressed: () {
          playSound(soundNumber);
        },
        child:SizedBox(height:5.0 ,),
      ),
    ),
  );

}



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.stretch ,
              children: [
              buildKey(color:Colors.red ,soundNumber:1),
                buildKey(color:Colors.orange ,soundNumber:2),
                buildKey(color:Colors.yellow ,soundNumber:3),
                buildKey(color:Colors.green ,soundNumber:4),
                buildKey(color:Colors.teal ,soundNumber:5),
                buildKey(color:Colors.blue ,soundNumber:6),
                buildKey(color:Colors.deepPurple ,soundNumber:7),


            ],
          ),
        ),
      ),
    );
  }
}
