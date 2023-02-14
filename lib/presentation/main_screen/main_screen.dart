import 'package:enabler/presentation/home_screen/home_screen.dart';
import 'package:enabler/presentation/main_screen/widgets/bottom_navigation_widget.dart';
import 'package:enabler/presentation/wallet_screen/wallest_screen.dart';
import 'package:enabler/presentation/works_screen/works_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final _pages = [
    const HomeScreen(),
     WorksScreen(),
    const WalletScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (context, int index, _) {
          return _pages[index];
        },
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
