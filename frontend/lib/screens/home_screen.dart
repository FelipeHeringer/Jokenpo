import 'dart:math';

import 'package:flutter/material.dart';
import 'package:frontend/shared/widgets/custom_app_bar.dart';
import 'package:frontend/shared/widgets/app_choice.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _userChoice = '';
  List<String> choices = ['Rock', 'Paper', 'Scissor'];

   dynamic _setUserChoice(String choice) {
    setState(() {
      _userChoice = choice;
    });

    Random random = Random();
    String appChoice = choices[random.nextInt(choices.length)];

    Navigator.pushNamed(context, '/winner', arguments: {'userChoice': _userChoice, 'appChoice': appChoice});
  }

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
                    onTap: () => _setUserChoice(choices[0]),
                    child: Image.asset(
                      'images/pedra.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _setUserChoice(choices[1]),
                    child: Image.asset(
                      'images/papel.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _setUserChoice(choices[2]),
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
