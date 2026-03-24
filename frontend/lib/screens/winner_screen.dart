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
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    String userChoice = args['userChoice']!;
    String appChoice = args['appChoice']!;

    dynamic verifyWinner() {
      List<String> winnerInfo = [];

      if (userChoice == appChoice) {
        winnerInfo.add('assets/images/icons8-aperto-de-maos-100.png');
        winnerInfo.add('Empatou');
        return winnerInfo;
      }

      if ((userChoice == 'Rock' && appChoice == 'Scissor') ||
          (userChoice == 'Paper' && appChoice == 'Rock') ||
          (userChoice == 'Scissor' && appChoice == 'Paper')) {
        winnerInfo.add('assets/images/icons8-vitoria-48.png');
        winnerInfo.add('Você Ganhou');
        return winnerInfo;
      } else {
        winnerInfo.add('assets/images/icons8-perder-48.png');
        winnerInfo.add('Você Perdeu');
        return winnerInfo;
      }
    }

    dynamic loadImageBasedOnChoice(String choice) {
      switch (choice) {
        case 'Rock':
          return 'assets/images/pedra.png';
        case 'Paper':
          return 'assets/images/papel.png';
        case 'Scissor':
          return 'assets/images/tesoura.png';
      }
    }

    dynamic backToHomeScreen(BuildContext context) {
      Navigator.pop(context);
    }

    final List<String> winnerInfo = verifyWinner();

    return Scaffold(
      appBar: CustomAppBar(title: 'Pedra, Papel, Tesoura'),
      body: Padding(
        padding: EdgeInsetsGeometry.only(top: 16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AppChoice(imagePath: loadImageBasedOnChoice(appChoice)),

              // User Choice
              Column(
                children: [
                  Image.asset(
                    loadImageBasedOnChoice(userChoice),
                    width: 140,
                    height: 140,
                  ),
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
                    winnerInfo[0],
                    width: 140,
                    height: 140,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(height: 8),
                  Text(
                    winnerInfo[1],
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () => backToHomeScreen(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFF1F1F),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
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
