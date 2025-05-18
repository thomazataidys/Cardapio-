import 'package:flutter/material.dart';

class ItemDescriptionScreen extends StatelessWidget {
  final Map<String, dynamic> item;

  const ItemDescriptionScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item['name'] ?? 'Item Descrição'),
        backgroundColor: const Color(0xFFECDD1D),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFF000000),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(item['image'] ?? ''),
              const SizedBox(height: 16),
              Text(
                item['name'] ?? '',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(item['desc'] ?? ''),
              const SizedBox(height: 8),
              Text('Peso: ${item['weight'] ?? ''}'),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                child: const Text('Adicionar ao Carrinho'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
