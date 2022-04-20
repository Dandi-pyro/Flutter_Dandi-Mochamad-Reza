import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task2/screen/food/food_view_model.dart';

class FoodScreen extends StatefulWidget {
  const FoodScreen({ Key? key }) : super(key: key);

  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) async {
      var viewModel = Provider.of<FoodViewModel>(context, listen: false);
      await viewModel.getAllFoods();
    });
  }

  @override
  Widget build(BuildContext context) {
    FoodViewModel viewModel = Provider.of<FoodViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Foods'),
      ),
      body: body(viewModel),
    );
  }

  Widget body(FoodViewModel viewModel) {
    final isLoading = viewModel.state == FoodViewState.loading;
    final isError = viewModel.state == FoodViewState.error;

    if (isLoading) {
      return const Center(child: CircularProgressIndicator(),);
    }

    if (isError) {
      return const Center(child: Text('Gagal mengambil data.'),);
    }

    return listView(viewModel);
  }

  Widget listView(FoodViewModel viewModel) {
    return ListView.separated(
      itemCount: viewModel.foods.length,
      itemBuilder: (context, index) {
        final food = viewModel.foods[index];
        return ListTile(
          title: Text(food.name),
          leading: Text('${food.id}'),
        );
      }, 
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}