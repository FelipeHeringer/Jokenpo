import 'package:flutter/material.dart';
import 'package:frontend/shared/widgets/app_choice.dart';
import 'package:frontend/shared/widgets/custom_app_bar.dart';

class WinnerScreen extends StatefulWidget {
  const WinnerScreen({super.key});

  @override
  State<WinnerScreen> createState() => _WinnerScreenState();
}

class _WinnerScreenState extends State<WinnerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Pedra, Papel, Tesoura'),
      body: Padding(
        padding: EdgeInsetsGeometry.only(top: 16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AppChoice(imagePath: 'images/papel.png'),

              // User Choice
              Column(
                children: [
                  Image.asset('images/pedra.png', width: 140, height: 140),
                  SizedBox(height: 8),
                  Text(
                    'Sua Escolha',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),

              Column(
                children: [
                  Image.asset(
                    'images/icons8-perder-48.png',
                    width: 140,
                    height: 140,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Você Perdeu/Venceu',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFF1F1F),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                ),
                child: Text(
                  'Jogar Novamente',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
