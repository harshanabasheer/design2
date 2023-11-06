
import 'package:design2/description.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/ben.jpeg'),
              SizedBox(height: 30,),
              Padding(
                  padding: const EdgeInsets.only(left:30.0,right: 30),
                  child: // Note: Same code is applied for the TextFormField as well
                   TextField(
                     keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1, color: Colors.black),
                              borderRadius: BorderRadius.circular(50.0),
                        ),
                        hintText: "E-Mail"
                    ),
                  )
              ),
              SizedBox(height: 30,),
              Padding(
                  padding: const EdgeInsets.only(left:30.0,right: 30),
                  child: // Note: Same code is applied for the TextFormField as well
                   TextField(
                     obscureText: true,
                     keyboardType: TextInputType.number,
                     decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1, color: Colors.black),
                              borderRadius: BorderRadius.circular(50.0),

                        ),
                        hintText: "Password"
                    ),
                  )

              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left:30.0,right: 30),
                child: ElevatedButton(onPressed: (){

                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Description()));
                },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightBlue,
                    padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                    shape: StadiumBorder(),
                    minimumSize: const Size.fromHeight(50),
                  ),
                  child: Text("Log In",style: TextStyle(fontSize: 20,color: Colors.white),),
                ),
              ),
              SizedBox(height: 30,),
              Text("Forgot Password?",style: TextStyle(fontSize: 15,color: Colors.black)),


            ],
          ),
        ),
      ),

    );
  }
}
