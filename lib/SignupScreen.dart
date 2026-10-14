import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:go_router.dart';

class SignupScreen extends StatefulWidget{
  const SignupScreen({super.key})

  @override
  State<SignupScreen> createState()=> _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen>{

  final _nameController = TextEditingController();
  final _emailController = GlobalKey<FormState>();
  final _formKey = GlobalKey<FormState>();
  final _formKey = GlobalKey<FormState>();

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text('Create Your Profile'),),
      body: SafeArea(
          child:Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
              Key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller = _nameController,
                    decoration: const InputDecoration(


                  )
                ]
              )

            )

          )


      )



    )
  }

  class Validators{
    static String? validateName(String? value){

    }
    static String? validateEmail(String? value){

    }
    static String? validatePhone(String? value){

    }
    static String? validateGenre(String? value){
  }




}