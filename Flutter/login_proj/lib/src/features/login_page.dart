import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:login_proj/src/features/main_page.dart';
import 'package:login_proj/src/features/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final TextEditingController _usernameController;
  late final TextEditingController _userpassController;
  final GlobalKey<FormState>_formkey=GlobalKey<FormState>();
  bool _isPassHidden=true;

  @override
  void initState() {
    _usernameController=TextEditingController();
    _userpassController=TextEditingController();
    super.initState();
  }
  @override
  void dispose() {
    _usernameController.dispose();
    _userpassController.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body:  SingleChildScrollView(
        child: Center(
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 120,
                ),
               const Text('LOGIN', 
               style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
               ),),
               const SizedBox(
                height: 18,
               ),
        
               SizedBox(
                width: 350,
                 child: TextField(
                  controller: _usernameController,
                  decoration: const InputDecoration(
                    border:OutlineInputBorder(),
                    labelText: 'Username',
                    hintText: 'Enter Your Username',
                     prefixIcon: Icon(Icons.person),
                  ),
                 
                 ),
               ),
               const SizedBox(
                height: 15,
               ),
          SizedBox(
                width: 350,
                 child: TextFormField(
                  validator: (value){
                    if(value==null ||value.isEmpty){
                      return 'Please Enter Password';
                    }else{
                      return null;
                    }
                  },
                  controller: _userpassController,
                  obscureText: _isPassHidden,
                  decoration:  InputDecoration(
                    border:const OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter Your Password',
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon:Icon(
                        _isPassHidden? Icons.visibility_off: Icons.visibility,
                      ),
                      onPressed: (){
                        setState(() {
                           _isPassHidden = !_isPassHidden;
                        });
                      },)
                  ),
                 
                 ),
               ),
               const SizedBox(
                height: 18,
               ),
               ElevatedButton(
                 style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    foregroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16))
                    ),
                  ),
                onPressed: (){
                if(_formkey.currentState!.validate()){
                        Navigator.of(context).push(MaterialPageRoute(
                           builder: (context) =>  MainPage(
                            name: _usernameController.text,
                            password: _userpassController.text,
                           )));
                      //Navigator.of(context).pushNamed(AppRoutes.second);
        
                      }
               },
                child: const Text('LOGIN',
                style: TextStyle(
                  fontSize: 18,
        
                ),)),
        
               const SizedBox(
                height: 220,
               ),
        
               RichText(text:  TextSpan(
                text: 'Not yet Registered?',
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  children: [
                    TextSpan(
                      text: 'Register',
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.blueGrey,
                      ),
                      recognizer: TapGestureRecognizer()
                      ..onTap=(){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const RegisterPage(),));
                      },
                    ),
                  ]
               )),
               
        
              ],
            
            ),
          )),
      ),
    );
  }
}