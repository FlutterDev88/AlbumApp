import 'package:album_app/constants.dart';
import 'package:flutter/material.dart';

class ScaffoldedLoadingScreen extends StatelessWidget {
  final bool initial;

  const ScaffoldedLoadingScreen({this.initial = false, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final margin = size.width * 0.05;
    final width = size.width * 0.9;
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Container()),
            const CircularProgressIndicator(),
            if (initial) Container(height: kPadding6),
            if (initial)
              Container(
                margin: EdgeInsets.all(margin),
                child: const Text(
                  'Loading! It may take a few seconds.',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: kBodyFontSize3
                  ),
                  textAlign: TextAlign.center,
                ),
                width: width,
              ),
            Expanded(child: Container()),
          ],
        ),
      ),
    );
  }
}
