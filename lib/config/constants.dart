import 'package:flutter/material.dart';

class Constants {
  static const Duration smallDelay = Duration(milliseconds: 1500);
  static const Duration mediumDelay = Duration(milliseconds: 3000);

  static const mediumAnimationSpeed = Duration(milliseconds: 400);

  static const email = 'haxhijag645@gmail.com';
  static const phoneNumber = '+355 677514201';
  static const githubUsername = 'haxgert';
  static const address = 'Bulevardi Zogu I Pare, Shkoder, Albania';

  static const linkedInUrl = 'https://www.linkedin.com/in/gert-haxija0212';
  // static const xUrl = 'https://x.com/gerthaxhija';
  static const githubUrl = 'https://github.com/haxgert/';
  static const resumeURl =
      'https://drive.google.com/file/d/1-osZ9hupjMoSD0dJzQ7iuQtGHxCUhbG8/view?usp=sharing';

  static outLinedText(BuildContext context, {double strokeWidth = 1}) {
    return Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..color = Theme.of(context).colorScheme.secondary;
  }
}
