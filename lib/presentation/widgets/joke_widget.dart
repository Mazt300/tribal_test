import 'package:flutter/material.dart';
import 'package:technical_test/domain/entity/category_entity.dart';

class JokeWidget extends StatelessWidget {
  const JokeWidget({
    super.key,
    required this.categoriesEntity
  });

  final List<CategoryEntity>  categoriesEntity;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: categoriesEntity.map((joke) => Card(
          elevation: 5,
          color: Colors.white,
          child: ListTile(
            horizontalTitleGap: 6,
            contentPadding: const EdgeInsets.all(20),
            leading: Image.network(
              joke.iconUrl,
              errorBuilder: (context, error, stackTrace) {
                return Icon(
                  Icons.error,
                  color: Colors.red.withOpacity(0.5),
                  size: 48,
                );
              },
            ),
            title: Text(joke.value),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(joke.createdAt.toLocal().toString()),
            ),
          ),
        )).toList(),
      ),
    );
  }
}