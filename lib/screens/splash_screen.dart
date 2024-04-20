import 'package:flutter/material.dart';
import 'package:view_hub/screens/home.dart';


class SplaceScreen extends StatelessWidget {
  const SplaceScreen({super.key});

  @override
  Widget build(BuildContext context) {

    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => const HomePage()
        ), (route) => false
      );
    });

    return Scaffold(
      body: Stack(children: [
        Image.asset(
          'assets/images/blob_splash2.png',
          fit: BoxFit.cover,
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/view_hub_logo.png',
                height: 50,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 16),
              RichText(text: const TextSpan(children: [
                TextSpan(text: "View ", style: TextStyle(fontWeight: FontWeight.w800)),
                TextSpan(text: "more in your "),
                TextSpan(text: "hub ", style: TextStyle(fontWeight: FontWeight.w800)),
              ], style: TextStyle(fontSize: 16)))
            ],
          ),
        ),
      ]),
    );
  }
}
