import 'package:flutter/material.dart';
 // Import the flutter_svg package


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _selectedIndex = 3; // Index for the "Perfil" tab

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDDD1D), // Yellow background
      body: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          children: [
<<<<<<< HEAD
            _buildHeader(),
            const SizedBox(height: 2),
            Expanded(child: _buildProfileOptionsList()),
=======
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
                    'Thomaz Jefferson',
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
>>>>>>> 5939fc464c4e6ed4a85c0cbfb9f226a4fb65b47b
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomBar(),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 20), // Reduced bottom padding
      decoration: const BoxDecoration(
        color: Color(0xFFEDDD1D),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back, color: Color(0xFF252810)),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              const Spacer(), // Add spacer to center the following elements
              // Profile Image
              Container(
                width: 80, // Increased size
                height: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color(0xFF252810), // Dark border color
                    width: 2,
                  ),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/profile_picture.png'), // Replace with your profile image path
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Spacer(), // Add spacer to center the following elements
              const SizedBox(width: 48), // Add some spacing so that the row is balanced.
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            "Thomáz Jefferson", // Profile Name
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              fontFamily: 'COOPBL', // Use the same font.
              color: Color(0xFF252810),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileOptionsList() {
    final profileOptions = [
      {
        'title': 'Favoritos',
        'icon': 'assets/icons/heart.svg', // Use SVG for icons
      },
      {
        'title': 'Notificações',
        'icon': 'assets/icons/bell.svg',
      },
      {
        'title': 'Endereços',
        'icon': 'assets/icons/location_pin.svg',
      },
      {
        'title': 'Dados da conta',
        'icon': 'assets/icons/document.svg',
      },
      {
        'title': 'Pagamentos',
        'icon': 'assets/icons/credit_card.svg',
      },
    ];

    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFF4EEE1), // Light background
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: ListView.separated( // Use ListView.separated for dividers
        padding: const EdgeInsets.symmetric(vertical: 10),
        itemCount: profileOptions.length,
        separatorBuilder: (context, index) => const Divider(
          color: Color(0xFF757575), // Divider color
          height: 1,
          indent: 20, // Add indent for spacing
          endIndent: 20,
        ),
        itemBuilder: (context, index) {
          final option = profileOptions[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20), // Increased vertical padding
            child: Row(
              children: [
                Image.asset(  // Use SvgPicture to display the SVG
                  option['icon']!,
                  height: 24, // Increased icon size
                  width: 24,
                  color: const Color(0xFF252810), // Icon color
                ),
                const SizedBox(width: 20),
                Text(
                  option['title']!,
                  style: const TextStyle(
                    fontSize: 18, // Increased font size
                    fontFamily: 'Montserrat',
                    color: Color(0xFF252810),
                  ),
                ),
                const Spacer(),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF252810),
                  size: 20, // Reduced arrow size
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildBottomBar() {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Início'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Busca'),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: 'Pedidos',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
      ],
      selectedItemColor: const Color(0xFF252810),
      unselectedItemColor: const Color(0xFF757575),
      backgroundColor: const Color(0xFFFFFFFF),
      type: BottomNavigationBarType.fixed,
    );
  }
}
