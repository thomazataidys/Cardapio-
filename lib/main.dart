import 'package:appmaisgostoso/screens/home_screen.dart';
import 'package:appmaisgostoso/screens/login_screen.dart';
import 'package:appmaisgostoso/screens/pagamento_screen.dart';
import 'package:appmaisgostoso/screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MaisGostoso());
}

class MaisGostoso extends StatelessWidget {
  const MaisGostoso({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '+Gostoso App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lime),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(initialIndex: 0),
        '/pedidos': (context) => const HomeScreen(initialIndex: 2),
        '/pagamento': (context) => const PagamentoScreen(),
        // futuramente: '/pagamento/pix': ..., '/pagamento/cartao': ...
      },
    );
  }
}
