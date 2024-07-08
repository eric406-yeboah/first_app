import 'package:first_app/pages/home_page.dart';
import 'package:flutter/material.dart';
class IntroPage extends StatelessWidget{
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(children: [
        // logo
       Padding(
        padding: const EdgeInsets.only(
          left: 80.0,right: 80,bottom: 80,top: 160
        ),
        child:Image.asset('lib/images/avocado.png'),
        ),

        // we deliver groceries at your doorstep
        const Padding(
           padding: EdgeInsets.all(24.0),
           child:Text(
            "we deliver groceries at your doorstep",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
           ),
        ),
        // fresh item everyday
        Text(
          "fresh item everyday",
          textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16,
                color: Colors.grey[700],
              ),

        ),

         const SizedBox(height: 24),

        // const Spacer(),
        // get started button
         GestureDetector(
              onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const HomePage();
                  },
                ),
              ),
        child:Container(
          decoration: BoxDecoration(
            color:Colors.deepPurple,
            borderRadius: BorderRadius.circular(12)
          ),
          padding: const EdgeInsets.all(24),
          child:const Text(
            "Get Started",
            style: TextStyle(color: Colors.white),
          ),
        ),
       ),
      
      ],
      ),
    );
  }
}