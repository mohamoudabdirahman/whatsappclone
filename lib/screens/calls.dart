import 'package:flutter/material.dart';

class callpage extends StatelessWidget {
  const callpage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.pink,
    );
  }
}