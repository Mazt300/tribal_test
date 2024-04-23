import 'package:flutter/material.dart';
import 'package:technical_test/domain/entity/category_entity.dart';
import 'package:technical_test/presentation/manager_actions/category_actions.dart';
import 'package:technical_test/presentation/widgets/joke_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: FutureBuilder<List<CategoryEntity>>(
          future: CategoryActions().getRandomEntityCategories(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasData) {
                return JokeWidget(
                  categoriesEntity: snapshot.data!
                );
              }
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (snapshot.hasError) {
              return const Text('Sorry we had error');
            }

            return const SizedBox.shrink();
          }
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}