import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:prs/screen/gamelogic.dart';

void main() => runApp(MyApp());

final gameLogic = GameLogic();

final index = [1,2,3];

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: GameApp(),
    );
  }
}

class GameApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar:AppBar(
      //   title:Text("Game")
      // ),
      body:Center(
        child: Container(
          child:Row(
            children: <Widget>[
                Expanded(
                  child:GestureDetector(
                      onTap: (){
                        gameLogic.setHumanValue(1);
                         Navigator.push(context, MaterialPageRoute(builder: (_)=>Clash("1",'images/rock.png')));
                      },
                    child:Hero(
                      tag:'1',
                      child:Image.asset('images/rock.png',width: 150,height: 150,)   
                    )
                  )
                ),
                Expanded(
                  child:GestureDetector(
                     onTap: (){
                       gameLogic.setHumanValue(2);
                         Navigator.push(context, MaterialPageRoute(builder: (_)=>Clash("2",'images/paper.png')));
                     } ,

                    child:Hero(
                      tag:'2',
                      child: Image.asset('images/paper.png',width: 150,height: 150,),
                    )
                  )
                ),
                Expanded(
                  child:GestureDetector(
                     onTap: () {
                        gameLogic.setHumanValue(3);
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>Clash("3",'images/scissors.png')));
                     }, 
                    child:Hero(
                      tag:'3',
                      child:Image.asset('images/scissors.png',width: 150,height: 150,)
                    )
                  )
                ),
          
            ],
          )
        )
      
      )
    );
  }

}

class Clash extends StatelessWidget{
  final String tag;
  final String image;

  Clash(this.tag,this.image);

  aiPicked(){
    if(gameLogic.aIPicked == 1)return 'images/rock.png';
    if(gameLogic.aIPicked == 2)return 'images/paper.png';
    return 'images/scissors.png';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:GestureDetector(
        onTap:(){
            Navigator.pop(context);
        },
        child:ListView(
          padding: const EdgeInsets.only(top:30),
          children: <Widget>[
              Image.asset(aiPicked(),width: 150,height: 150,),
              
              Divider(),
              
              Text("${gameLogic.result}",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontFamily: 'Verdana'),),
              
              Divider(),

              Hero(
                  child: Image.asset(image,width: 150,height: 150,),
                  tag:tag
              ),
              
            ],
          
          
        )
      )
      )
    );

  }
  
}