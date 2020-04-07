import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:prs/screen/gamelogic.dart';

void main() => runApp(MyApp());

final gameLogic = GameLogic();

int human = 0;
int ai = 0;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blueGrey,
        backgroundColor: Colors.blue
      ),
      home: GameApp(),
    );
  }
}

class GameApp extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
           title:Text("ROCK - PAPER - SCISSORS",style: TextStyle(fontFamily: 'Courier'),)
      ),
      body:Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
        
            Text("HUMAN VS. AI",style: TextStyle(fontSize:30,fontWeight:FontWeight.bold,fontFamily:'Courier'),),
            Divider(),
            Row(
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
          ),
          Divider()
          ],
          
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

    Color changeColor(){
      if(gameLogic.result.toLowerCase() == "you win!")return Colors.lightGreen;
      if(gameLogic.result.toLowerCase() == "you lose!")return Colors.red;
      return Colors.blue;
    }

    return Scaffold(
      appBar:AppBar(
        title:Text((gameLogic.aIUpdatedScore > gameLogic.humanUpdatedScore)?"AI - ${gameLogic.aIUpdatedScore} | HUMAN - ${gameLogic.humanUpdatedScore} ":"HUMAN - ${gameLogic.humanUpdatedScore} | AI - ${gameLogic.aIUpdatedScore}",textAlign: TextAlign.center,style: TextStyle(fontFamily: 'Courier'),),
        automaticallyImplyLeading: false,
      ),
      body:Center(
        child:GestureDetector(
        onTap:(){
            Navigator.pop(context);
        },
          child: ListView(
          padding: const EdgeInsets.only(top:70,bottom: 50),
          children: <Widget>[
              Image.asset(aiPicked(),width: 150,height: 150,),
              Container(
                margin: const EdgeInsets.only(left:20,right:20,bottom: 40,top:40),
                child:Text("${gameLogic.result}",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,color:  changeColor(),fontFamily: 'Courier',fontSize: 50,),),
              ),
              Hero(
                  child: Image.asset(image,width: 150,height: 150,),
                  tag:tag,
              ),
            ],
        ),
      )
      )
    );

  }
  
}