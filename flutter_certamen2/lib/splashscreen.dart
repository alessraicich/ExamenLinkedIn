import 'package:flutter/material.dart';
import 'package:flutter_certamen2/Perfil.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(const Duration(seconds: 2)),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          
          return  HomeScreen();
        } else {
          
          return Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/logo.png', 
                    width: 150, 
                    height: 150,
                  ),
                  const SizedBox(height: 16),
                  const CircularProgressIndicator(
                    color: Colors.white, 
                  ),
                ],
              ),
            ),
          );
        }
     },
);
}
}