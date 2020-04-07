
import 'dart:math';

import 'package:mobx/mobx.dart';
part 'gamelogic.g.dart';

class GameLogic = _GameLogic with _$GameLogic;


abstract class _GameLogic with Store{

    @observable
    int aI = Random().nextInt(3) + 1;

    @observable
    int human;

    @observable
    int aiScore;

    @observable
    int humanScore;

    @observable
    String result = "";

    @computed 
    int get aIPicked => aI;

    @computed
    int get aIUpdatedScore => aiScore;

    @computed 
    int get humanUpdatedScore => humanScore;

    @action
    void gameResult(){
      final String win = "YOU WIN!";
      final String lose = "YOU LOSE!";
      final String draw = "DRAW!";
      
      if((human == 1) && (aI == 1) ||  (human == 2) && (aI == 2) || (human == 3) && (aI == 3)){
        result = draw;
      }
      
      if((human == 1) && (aI == 2) || (human == 3) && (aI == 1) || (human == 2) && (aI == 3)){
         result = lose;
         aiScore++;
      }

      if((human == 2) && (aI == 1) || (human == 1) && (aI == 3) || (human == 3) && (aI == 2)){
        result = win;
        humanScore++;
      }
        print("AI - $aI");
        print("HUMAN - $human");
        print("RESULT - $result");
    }
    

    @action
    void setHumanValue(int humanValue){
        human = humanValue;
        aI = Random().nextInt(3) + 1;
        gameResult();
    }

}