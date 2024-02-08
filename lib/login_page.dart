import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginpagewithfirebase/signin_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final key=GlobalKey<FormState>();
    TextEditingController Emailcontroller = TextEditingController();
    TextEditingController Passwordcontroller = TextEditingController();

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink,
        body: Container(
          child: Column(
            children: [
              const SizedBox(
                height: 200,
              ),
              const Center(
                child: Text("Login",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
              ),
              const SizedBox(
                height: 5,
              ),
              const Center(
                child: Text("please Login"),
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
                                    Navigator.pop(context);
                                  }, child: Text("Creat New Account")),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Container(
                                    width: 200,
                                    child: OutlinedButton(
                                        onPressed: (){
                                          if(key.currentState!.validate()){}
                                        }, child: const Text("Login",style: TextStyle(color: Colors.white),)),
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
