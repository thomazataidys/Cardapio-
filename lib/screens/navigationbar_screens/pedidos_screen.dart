// pedidos_screen.dart
import 'package:appmaisgostoso/screens/menu_item_model.dart';
import 'package:flutter/material.dart';

class PedidoScreen extends StatelessWidget {
  final List<MenuItem> cartItems;

  const PedidoScreen({super.key, required this.cartItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pedidos')),
      body: cartItems.isEmpty
          ? const Center(child: Text('Seu carrinho está vazio.'))
          : ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final item = cartItems[index];
                return ListTile(
                  leading: Image.asset(item.image, width: 60, height: 60),
                  title: Text(item.name),
                  subtitle: Text("R\$ ${item.price.toStringAsFixed(2)}"),
                  trailing: const Icon(Icons.delete),
                  onTap: () {
                    // Lógica para remover do carrinho
                  },
                );
              },
            ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {
            // Lógica para finalizar o pedido
          },
          child: const Text('Finalizar Pedido'),
        ),
      ),
    );
  }
}
