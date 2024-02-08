import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginpagewithfirebase/auth.dart';
import 'package:loginpagewithfirebase/home.dart';
import 'package:loginpagewithfirebase/login_page.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    final key=GlobalKey<FormState>();
    TextEditingController Emailcontroller = TextEditingController();
    TextEditingController Passwordcontroller = TextEditingController();
    TextEditingController Namecontroller = TextEditingController();

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink,
        body: Container(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              const Center(
                child: Text("Sign UP",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
              ),
              const SizedBox(
                height: 5,
              ),
              const Center(
                child: Text("please Register Your Account"),
              ),
              SizedBox(height: 20,)
              ,              Padding(
                padding: const EdgeInsets.all(20),

                child: Expanded(

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      SingleChildScrollView(
                        child: Form(
                            key:key,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Padding(
                                      padding:
                                      EdgeInsets.only(left: 30, right: 30)),
                                  TextFormField(
                                    controller: Namecontroller,
                                    validator: (val){
                                      if(val==null || val.isEmpty ) {
                                        return "Your Name is must not be empty";
                                      }},
                                    decoration: const InputDecoration(

                                        prefixIcon:
                                        Icon(Icons.perm_contact_cal_outlined),
                                        border: OutlineInputBorder(),
                                        label: Text("Enter Your Name"),
                                        hintText: "Enter Your Name"),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  TextFormField(
                                    controller: Emailcontroller,
                                    validator: (val){
                                      if(val==null || val.isEmpty ) {
                                        return "Email is must not be empty";
                                      }},
                                    decoration: const InputDecoration(

                                        prefixIcon:
                                        Icon(Icons.perm_contact_cal_outlined),
                                        border: OutlineInputBorder(),
                                        label: Text("Enter Your Email"),
                                        hintText: "Enter Your Emial"),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  TextFormField(
                                      controller: Passwordcontroller,
                                      validator: (val){
                                        if(val==null || val.isEmpty ) {
                                          return "password is must not be empty";
                                        }},
                                      decoration: const InputDecoration(

                                          border: OutlineInputBorder(

                                          ),
                                          prefixIcon: Icon(Icons.fingerprint),
                                          label: Text("Enter Your Password"),
                                          hintText: "Enter Your Password")),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  TextButton(onPressed: (){
                                    Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginPage()));
                                  }, child: Text("Already account Please LogIn")),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Container(
                                    width: 200,
                                    child: OutlinedButton(
                                        onPressed: ()async{
                                          if(key.currentState!.validate()){
                                            // Map<String,dynamic> status= await Auth().register(Emailcontroller.text, Passwordcontroller.text);
//                                             if(status['status']){
// Navigator.push(context,MaterialPageRoute(builder: (context)=>Home()) );
//                                             }
                                          }
                                        }, child: const Text("SignUp",style: TextStyle(color: Colors.white),)),
                                  ),
                                ])),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
