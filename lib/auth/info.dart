import 'package:flutter/material.dart';
import 'package:uber/pages/home.dart';

class Info extends StatefulWidget {
  const Info({super.key});

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Whats your name?",
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
              ),
               Padding(
                 padding: EdgeInsets.all(8.0),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                          "let us know how to properly address you",
                          style: TextStyle(
                              color: Color.fromARGB(255, 81, 80, 80)),
                        )
                  ],
                               ),
                               
               ),
               SizedBox(height: 18,),
               Padding(
                 padding: EdgeInsets.symmetric(horizontal: 8.0),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Text("First name",style: TextStyle(fontSize: 18),),
                   ],
                 ),
               ),
               Padding(
                 padding: EdgeInsets.symmetric(horizontal: 8.0),
                 child: Container(
                  color: Color.fromARGB(255, 241, 239, 239),
                   child: TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)
                      ),
                      border: InputBorder.none,
                      hintText: 'Enter first name'
                    ),
                   ),
                 ),
               ),
               SizedBox(height: 18,),
               Padding(
                 padding: EdgeInsets.symmetric(horizontal: 8.0),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Text("Last name",style: TextStyle(fontSize: 18),),
                   ],
                 ),
               ),
               Padding(
                 padding: EdgeInsets.symmetric(horizontal: 8.0),
                 child: Container(
                  color: Color.fromARGB(255, 241, 239, 239),
                   child: TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)
                      ),
                      border: InputBorder.none,
                      hintText: 'Enter Last name'
                    ),
                   ),
                 ),
               ),
               Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 17.0),
              child: Container(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_back_sharp,
                          size: 40,
                        )),
                   
                    IconButton(
                        onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>Home()));
                        },
                        icon: const Icon(
                          Icons.arrow_forward,
                          
                          size: 40,
                        )),
                   
                  ],
                ),
              ),
            ))

          ],
        ),
      ),
    );
  }
}