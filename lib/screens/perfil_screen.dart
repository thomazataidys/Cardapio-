import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF252810), // Fundo externo preto
      body: SafeArea(
        child: Column(
          children: [
            // Cabeçalho amarelo com avatar e nome
            Container(
              decoration: const BoxDecoration(
                color: Color(0xFFEDDD1D),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(20),
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    color: Color(0xFF252810),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(width: 10),
                  const CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage('assets/images/user.jpg'),
                  ),
                  const SizedBox(width: 14),
                  const Text(
                    'Thomáz Jefferson',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF252810),
                    ),
                  ),
                ],
              ),
            ),

            // Lista de itens
            Expanded(
              child: Container(
                color: const Color(0xFFF4EEE1),
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: ListView(
                  children: const [
                    ProfileItem(
                      icon: Icons.favorite_border,
                      label: 'Favoritos',
                    ),
                    ProfileItem(
                      icon: Icons.notifications_none,
                      label: 'Notificações',
                    ),
                    ProfileItem(
                      icon: Icons.location_on_outlined,
                      label: 'Endereços',
                    ),
                    ProfileItem(
                      icon: Icons.description_outlined,
                      label: 'Dados da conta',
                    ),
                    ProfileItem(
                      icon: Icons.credit_card_outlined,
                      label: 'Pagamentos',
                    ),
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

class ProfileItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const ProfileItem({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Color(0xFF252810)),
      title: Text(
        label,
        style: const TextStyle(
          fontSize: 16,
          fontFamily: 'Montserrat',
          color: Color(0xFF252810),
        ),
      ),
      trailing: const Icon(Icons.arrow_forward_ios_rounded,
          size: 16, color: Color(0xFF757575)),
      onTap: () {
        // Ação ao tocar
      },
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
    );
  }
}
