import 'package:flutter/material.dart';

class Description extends StatefulWidget {
  const Description({super.key});

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,

        body:
            Padding(
              padding: const EdgeInsets.all(20.0),
              child:
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.only(top:140.0),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: CircleAvatar(
                              radius: 100,
                              backgroundImage:AssetImage("images/girl.jpeg",),
                            ),
                          ),
                        ),

                      ],
                    ),
                    Text("Welcome Alucard",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white)),
                    SizedBox(height: 20),
                    Text("Lorem ipsum dolor sit amet consectetur adipiscing elit. Donec hendrerit condimentum mauris id tempor. Present eu commodolacus. Praesent eget mi sed liberoeleifend tempor. Sed at fringillaipsum. Duis malesuada feugiat urna vitae convallis. Aliquam eulibero arcu",style: TextStyle(fontSize: 20,color: Colors.white)),


                  ]
              ),

            )

    );

  }
}
