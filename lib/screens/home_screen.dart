import 'package:appmaisgostoso/data/quantidade_itens_home.dart';
import 'package:appmaisgostoso/screens/categoria_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDDD1D),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Stack(
          children: [
            Column(
              children: [
                _buildHeader(),
                const SizedBox(height: 2),
                Expanded(child: _buildCategoryList()),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomBar(),
    );
  }

  Widget _buildHeader() {
    return Stack(
      children: [
        Container(
          height: 130,
          decoration: const BoxDecoration(
            color: Color(0xFFEDDD1D),
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
        ),
        Positioned(
          top: 20,
          left: 0,
          right: 0,
          child: Center(
            child: Image.asset('assets/images/hatchef.png', height: 110),
          ),
        ),
        Positioned(
          top: 35,
          right: 16,
          child: Padding(
            padding: const EdgeInsets.all(6),
            child: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFF4EEE1),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF757575).withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: Offset(3, 3),
                  ),
                ],
              ),
              child: IconButton(
                padding: EdgeInsets.zero,
                icon: const Icon(
                  Icons.notifications_none_outlined,
                  color: Color(0xFF252810),
                  size: 23,
                ),
                onPressed: () {},
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCategoryList() {
    final categorias = [
      {'title': 'Refeições', 'image': 'assets/images/refeicao.png'},
      {'title': 'Lanches', 'image': 'assets/images/lanches.png'},
      {'title': 'Sobremesas', 'image': 'assets/images/sobremesas.png'},
      {'title': 'Bebidas', 'image': 'assets/images/bebidas.png'},
      {'title': 'Vegetariano', 'image': 'assets/images/vegetariano.png'},
    ];

    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFF4EEE1),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: ListView.builder(
        padding: const EdgeInsets.only(top: 5, bottom: 10),
        itemCount: categorias.length,
        itemBuilder: (context, index) {
          final category = categorias[index];
          return Stack(
            children: [
              Center(
                child: Container(
                  width: 306,
                  height: 121,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 15,
                  ),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(23),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 1,
                        color: Color(0xFF757575).withOpacity(0.3),
                        blurRadius: 4,
                        offset: const Offset(3, 4),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 52),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              category['title']!,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'COOPBL',
                                letterSpacing: 3,
                                color: Color(
                                  0xFF252810,
                                ), // Fonte principal da marca
                              ),
                            ),
                            Text(
                              "${quantidadePorCategoria[category['title']] ?? 0} itens",
                              style: const TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 13,
                                color: Color(0xFF252810),
                              ), // Fonte secundária
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 3,
                top: 20,
                child: Image.asset(category['image']!, height: 109, width: 109),
              ),
              Positioned(
                right: 32,
                top: 53,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF757575).withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: CircleAvatar(
                    backgroundColor: Color(0xFF252810),
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_forward,
                        color: Color(0xFFEDDD1D),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => CategoryItemsScreen(
                                  categoryTitle: category['title']!,
                                ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
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
      selectedItemColor: Color(0xFF252810),
      unselectedItemColor: Color(0xFF757575),
      backgroundColor: Color(0xFFFFFFFF),
      type: BottomNavigationBarType.fixed,
    );
  }
}
