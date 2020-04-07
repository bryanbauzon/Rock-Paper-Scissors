// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gamelogic.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GameLogic on _GameLogic, Store {
  Computed<int> _$aIPickedComputed;

  @override
  int get aIPicked =>
      (_$aIPickedComputed ??= Computed<int>(() => super.aIPicked)).value;
  Computed<int> _$aIUpdatedScoreComputed;

  @override
  int get aIUpdatedScore =>
      (_$aIUpdatedScoreComputed ??= Computed<int>(() => super.aIUpdatedScore))
          .value;
  Computed<int> _$humanUpdatedScoreComputed;

  @override
  int get humanUpdatedScore => (_$humanUpdatedScoreComputed ??=
          Computed<int>(() => super.humanUpdatedScore))
      .value;

  final _$aIAtom = Atom(name: '_GameLogic.aI');

  @override
  int get aI {
    _$aIAtom.context.enforceReadPolicy(_$aIAtom);
    _$aIAtom.reportObserved();
    return super.aI;
  }

  @override
  set aI(int value) {
    _$aIAtom.context.conditionallyRunInAction(() {
      super.aI = value;
      _$aIAtom.reportChanged();
    }, _$aIAtom, name: '${_$aIAtom.name}_set');
  }

  final _$humanAtom = Atom(name: '_GameLogic.human');

  @override
  int get human {
    _$humanAtom.context.enforceReadPolicy(_$humanAtom);
    _$humanAtom.reportObserved();
    return super.human;
  }

  @override
  set human(int value) {
    _$humanAtom.context.conditionallyRunInAction(() {
      super.human = value;
      _$humanAtom.reportChanged();
    }, _$humanAtom, name: '${_$humanAtom.name}_set');
  }

  final _$aiScoreAtom = Atom(name: '_GameLogic.aiScore');

  @override
  int get aiScore {
    _$aiScoreAtom.context.enforceReadPolicy(_$aiScoreAtom);
    _$aiScoreAtom.reportObserved();
    return super.aiScore;
  }

  @override
  set aiScore(int value) {
    _$aiScoreAtom.context.conditionallyRunInAction(() {
      super.aiScore = value;
      _$aiScoreAtom.reportChanged();
    }, _$aiScoreAtom, name: '${_$aiScoreAtom.name}_set');
  }

  final _$humanScoreAtom = Atom(name: '_GameLogic.humanScore');

  @override
  int get humanScore {
    _$humanScoreAtom.context.enforceReadPolicy(_$humanScoreAtom);
    _$humanScoreAtom.reportObserved();
    return super.humanScore;
  }

  @override
  set humanScore(int value) {
    _$humanScoreAtom.context.conditionallyRunInAction(() {
      super.humanScore = value;
      _$humanScoreAtom.reportChanged();
    }, _$humanScoreAtom, name: '${_$humanScoreAtom.name}_set');
  }

  final _$resultAtom = Atom(name: '_GameLogic.result');

  @override
  String get result {
    _$resultAtom.context.enforceReadPolicy(_$resultAtom);
    _$resultAtom.reportObserved();
    return super.result;
  }

  @override
  set result(String value) {
    _$resultAtom.context.conditionallyRunInAction(() {
      super.result = value;
      _$resultAtom.reportChanged();
    }, _$resultAtom, name: '${_$resultAtom.name}_set');
  }

  final _$_GameLogicActionController = ActionController(name: '_GameLogic');

  @override
  void gameResult() {
    final _$actionInfo = _$_GameLogicActionController.startAction();
    try {
      return super.gameResult();
    } finally {
      _$_GameLogicActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setHumanValue(int humanValue) {
    final _$actionInfo = _$_GameLogicActionController.startAction();
    try {
      return super.setHumanValue(humanValue);
    } finally {
      _$_GameLogicActionController.endAction(_$actionInfo);
    }
  }

  @override
  bool resetScore() {
    final _$actionInfo = _$_GameLogicActionController.startAction();
    try {
      return super.resetScore();
    } finally {
      _$_GameLogicActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'aI: ${aI.toString()},human: ${human.toString()},aiScore: ${aiScore.toString()},humanScore: ${humanScore.toString()},result: ${result.toString()},aIPicked: ${aIPicked.toString()},aIUpdatedScore: ${aIUpdatedScore.toString()},humanUpdatedScore: ${humanUpdatedScore.toString()}';
    return '{$string}';
  }
}
