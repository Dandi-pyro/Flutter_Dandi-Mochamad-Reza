import 'package:flutter/widgets.dart';
import 'package:task1/model/api/foods_api.dart';
import 'package:task1/model/foods_model.dart';

enum FoodViewState {
  none,
  loading,
  error,
}

class FoodViewModel with ChangeNotifier {
  FoodViewState _state = FoodViewState.none;
  FoodViewState get state => _state;

  List<Food> _foods = [];
  List<Food> get foods => _foods;

  changeState(FoodViewState s) {
    _state = s;
    notifyListeners();
  }

  getAllFoods() async {
    changeState(FoodViewState.loading);
    
    try {
        final f = await FoodAPI.getFoods();
      _foods = f;
      notifyListeners();
      changeState(FoodViewState.none);
    } catch (e) {
      changeState(FoodViewState.error);
    }
  }
}