import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text('Flutter Project'),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Container(
               height: 50,
               width: 50,
               color: Colors.red,
               
               
             ),
             const SizedBox(
              height: 16,
             ),
             Container(
              height: 50,
               width: 50,
               color: Colors.blue,
             ),
             const SizedBox(
              height: 16,
             ),
             ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow,
                foregroundColor: Colors.black,
                side: const BorderSide(color: Colors.red),
                shape:const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8))
                )
              ),
              onPressed: (){
              print('Button Tapped');
             },
              child: const Text('Tap Me'))
          ],
        ),
      ), 
    
      // body: Center(
      //   child: Container(
      //     height: 200,
      //     width: 200,
      //     //color: Colors.orange,
      //     decoration:const BoxDecoration(
      //       color: Colors.orange,
      //       //shape: BoxShape.circle,
      //       // border: Border.all(
      //       //   color:Colors.black,
      //       // borderRadius: BorderRadius.all(Radius.circular(8))
      //       borderRadius: BorderRadius.only(
      //         topLeft: Radius.circular(16),
      //         bottomRight: Radius.circular(16),
      //       )
      //       ),
      //       child: const Center(
      //         child: Text(
      //           'Apple',
      //           style: TextStyle(
      //             fontSize: 20,
      //             fontWeight: FontWeight.bold,
      //             color: Colors.green,
      //           ),)),
      //     ),
      //   )
        );
      // body:const Center(
      //   child: Text(
      //     'Hello World',
      //     style: TextStyle(
      //       fontSize: 18,
      //       fontWeight: FontWeight.bold,
      //       color: Colors.orange,
      //       backgroundColor: Colors.red,
      //     ),
      //   )),
    
  }
}