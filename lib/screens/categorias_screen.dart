import 'package:flutter/material.dart';

import 'item_description_screen.dart';
import 'menu_item_model.dart';

class CategoryItemsScreen extends StatelessWidget {
  final String categoryTitle;
  final List<MenuItem> items;

  const CategoryItemsScreen({
    super.key,
    required this.categoryTitle,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(categoryTitle)),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];

          return ListTile(
            leading: Image.asset(item.image, width: 60, height: 60),
            title: Text(item.name),
            subtitle: Text(item.weight),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (context) => ItemDescriptionScreen(
                        item: item as Map<String, dynamic>,
                      ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
