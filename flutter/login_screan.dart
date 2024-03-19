import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/modules/login/register_screan.dart';
import 'package:untitled/shared/componets/componets.dart';

class LoginScrean extends StatelessWidget {
  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  var formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.pink,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Welcome Back!',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    'please login to your account',
                    style: TextStyle(
                        fontSize: 20,
                       // fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    onFieldSubmitted: (value){
                      print(value);
                    },
                    onChanged: (value){
                      print(value);
                    },
                    validator: (value){
                      if(value!.isEmpty)
                        {
                          return null;
                        }
                      else{
                        return 'email address must be empty';
                      }
                    },
                    decoration: InputDecoration(
                      labelText: 'Email Address',
                      prefixIcon: Icon(
                        Icons.email,
                      ),
                      border: OutlineInputBorder(),

                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    onFieldSubmitted: (value){
                      print(value);
                    },
                    obscureText: true,
                    onChanged: (value){
                      print(value);
                    },
                    validator: (value)
                    {
                      if(value!.isEmpty)
                        {
                          return null;
                        }
                      else{
                        return 'password must be not empty';
                      }
                    },
                    decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(
                        Icons.lock,
                      ),
                      suffixIcon: Icon(
                       Icons.remove_red_eye,
                      ),
                      border: OutlineInputBorder(),

                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  defaultButton(
                    text: 'Login',
                    function: (){
                      if(formKey.currentState?.validate() ??true)
                        {
                          print(emailController.text);
                          print(passwordController.text);
                        }

                    },
                    width: double.infinity,
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      TextButton.icon(onPressed: (){}, icon: Icon(Icons.facebook,), label: Text('login with facebook')),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account?'
                      ),
                      TextButton(onPressed: (){}, child: Text(
                        'Register Now',
                      ),),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
