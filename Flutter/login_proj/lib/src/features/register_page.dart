import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:login_proj/src/features/main_page.dart';
import 'package:login_proj/src/features/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late final TextEditingController _usernameController;
  late final TextEditingController _useremailController;
  late final TextEditingController _userpassController;
  final GlobalKey<FormState>_formkey=GlobalKey<FormState>();
  bool _isPassHidden =true;

  @override
  void initState() {
    _usernameController=TextEditingController();
    _useremailController=TextEditingController();
    _userpassController=TextEditingController();
    super.initState();
  }
  @override
  void dispose() {
    _usernameController.dispose();
    _useremailController.dispose();
    _userpassController.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register Page'),
        
      ),
       
      body:  SingleChildScrollView(
        child: Center(
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
        height: 100,
       ),
               const Text('REGISTER',
               style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,),
               ),
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
                    if(value==null||value.isEmpty){
                      return 'Please Enter a Email Address';
                    }else if (!RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$').hasMatch(value)){
                      return 'Please Enter a Valid Email Address';
        
                    }else{
                      return null;
                    }
                  },
                  controller: _useremailController,
                  decoration: const InputDecoration(
                    border:OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter Your Email',
                    prefixIcon: Icon(Icons.email),
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
                height: 15,
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
                child: const Text('REGISTER',
                style: TextStyle(
                  fontSize: 18,
        
                ),)),
        
               const SizedBox(
                height: 180,
               ),
        
               RichText(text:  TextSpan(
                text: 'Already Registered?',
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  children: [
                    TextSpan(
                      text: 'Login',
                      style: const  TextStyle(
                        fontSize: 18,
                        color: Colors.blueGrey,
                      ),
                       recognizer: TapGestureRecognizer()
                      ..onTap=(){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const LoginPage(),));
                      },
                    )
                  ]
               )),
        
              ],
            
            ),
          )),
      ),
    );
  }
}