import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget{
  var emailController=TextEditingController();
  var passController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text('Login',style: TextStyle(fontSize:35 ,fontWeight:FontWeight.bold),),
                ),

                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'E-mail',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.mail)
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: passController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye_outlined)
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('don\'t have an account',style: TextStyle(fontSize: 18),),
                    TextButton(onPressed: (){
                      print('hi');
                    },
                        child: Text('Register now',style: TextStyle(fontSize: 18),))
                  ],
                ),
                MaterialButton(onPressed: (){
                  print(emailController.text);
                  print(passController.text);
                },child: Text('Login'),
                  color: Colors.blue,
                  minWidth: double.infinity,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

}