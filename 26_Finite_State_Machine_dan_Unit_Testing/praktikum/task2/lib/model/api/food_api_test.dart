import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:task2/model/api/food_api.dart';
import 'package:task2/model/api/food_api_test.mocks.dart';
import 'package:task2/model/food_model.dart';
import 'package:test/test.dart';

@GenerateMocks([FoodAPI])
void main() {

  group('Contact API', () {
    FoodAPI foodAPI = MockFoodAPI();

    test('get all contacts returns data', () async {
      when(foodAPI.getFoods()).thenAnswer(
        (_) async => <Food>[
          Food(id: 1, name: 'a'),
        ],
      );
      var contacts = await foodAPI.getFoods();
      expect(contacts.isNotEmpty, true);
    });
  });
}