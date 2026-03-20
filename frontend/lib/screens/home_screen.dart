import 'package:flutter/material.dart';
import 'package:frontend/shared/widgets/custom_app_bar.dart';
import 'package:frontend/shared/widgets/app_choice.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Pedra, Papel, Tesoura'),
      body: Padding(
        padding: EdgeInsetsGeometry.only(top: 16.0),
        child: Center(
          child: Column(
            children: [
              AppChoice(imagePath: 'images/padrao.png'),
              SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      'images/pedra.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      'images/papel.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      'images/tesoura.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
