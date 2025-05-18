import 'package:flutter/material.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF252810), // Cor de fundo externa
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.yellow[700],
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      'https://i.pravatar.cc/150?img=3', // Avatar fictício
                    ),
                  ),
                  const SizedBox(width: 16),
                  const Text(
                    'Thomáz Jefferson',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: const Color(0xFFF6F0E6), // Cor do fundo interno
                child: ListView(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  children: const [
                    ListTile(
                      leading: Icon(Icons.favorite_border),
                      title: Text('Favoritos'),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.notifications_none),
                      title: Text('Notificações'),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.location_on_outlined),
                      title: Text('Endereços'),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.description_outlined),
                      title: Text('Dados da conta'),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.credit_card_outlined),
                      title: Text('Pagamentos'),
                    ),
                    Divider(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
