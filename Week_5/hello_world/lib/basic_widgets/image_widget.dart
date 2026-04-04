import 'package:flutter/material.dart';

class MyImageWidget extends StatelessWidget {
  const MyImageWidget({Key? key}) : super(key: key);            // ignore: use_super_parameters

  @override
  Widget build(BuildContext context) {
    return const Image(image: AssetImage("logo_polinema.png")
    );
  }
}
