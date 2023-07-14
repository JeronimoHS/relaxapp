import 'package:audio_application/pages/ambientPage.dart';
import 'package:audio_application/pages/relax_menu.dart';
import 'package:flutter/material.dart';
import 'package:wear/wear.dart';
class MainPage extends StatelessWidget
{
  final screenHeight;
  final screenWidth;
  const MainPage(this.screenHeight, this.screenWidth,{ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context)
  {
    return AmbientMode
    (
      builder: (context, mode, child)=>mode==WearMode.active?UserPage(screenHeight, screenWidth):const AmbientPage()
    );
    /*return Scaffold
    (
      body: SizedBox.expand
      (
        child: Center
        (
          child: Column
          (
            mainAxisAlignment: MainAxisAlignment.center,
            children:
            const [
              Text('Pagina principal')
            ],
          ),
        ),
      ),
    );*/
  }
}
class UserPage extends StatelessWidget
{
  final screenHeight;
  final screenWidth;
  const UserPage(this.screenHeight, this.screenWidth, { Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      body: Center
      (
        child: SizedBox
        (
          height: screenHeight,
          width: screenWidth,
          child: Column
          (
            mainAxisAlignment: MainAxisAlignment.center,
            children:
            [
               InkWell
              (
                child: const Row
                (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                   [
                    Icon(Icons.arrow_back),
                    //Image.asset('outline_arrow.png', scale: 1.8,),
                    Text
                    (
                      'Regresar',
                      style: TextStyle
                      (
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
                onTap: () 
                {
                  Navigator.of(context).pop();
                },
              ),
              const Text('Relax Application', style: TextStyle( fontSize: 15)),
              const FlutterLogo(size: 50),
              ElevatedButton
              (
                onPressed: ()
                {
                  Navigator.of(context)
                  .push(
                    MaterialPageRoute(builder: (context){
                      return RelaxView(screenHeight,screenWidth);
                    })
                  );
                },
                child:const Text('Start',
                style: TextStyle(color: Colors.white54, fontSize: 15),
                )
              )
            ],
          ),
        ),
      )
    );
  }
}