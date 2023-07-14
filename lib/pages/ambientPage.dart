import 'package:flutter/material.dart';
class AmbientPage extends StatelessWidget
{
  const AmbientPage({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context)
  {
    return const Scaffold
    (
      backgroundColor: Colors.transparent,
      body: SizedBox.expand
      (
        child: Center
        (
          child: Column
          (
            mainAxisAlignment: MainAxisAlignment.center,
            children:
             [
              FlutterLogo
              (
                size: 60
              ),
              SizedBox
              (
                height: 10
              ),
              Text
              (
                "Pantalla ambiente",
                style: TextStyle
                (
                  color: Colors.white54,
                  fontSize: 10
                )
              )
            ]
          )
        ),
      )
    );
  }
}