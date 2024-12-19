import 'package:flutter/material.dart';
import 'package:nav_proj/src/features/second_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final TextEditingController _usernameController;
  late final TextEditingController _useremailController;
  late final TextEditingController _userpasswordController;
  final GlobalKey<FormState> _formkey=GlobalKey<FormState>();
  @override
  void initState() {
    _usernameController=TextEditingController();
    _useremailController=TextEditingController();
    _userpasswordController=TextEditingController();
    super.initState();
  }
  @override
  void dispose() {
    _usernameController.dispose();
    _useremailController.dispose();
    _userpasswordController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Center(
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('LOGIN',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,


              ),),
              const SizedBox(
                height: 4,
              ),
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  labelText: 'username',
                  hintText: 'Enter Your Name',
          
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              TextFormField(
                validator: (value) {
                  if(value==null||value.isEmpty){
                    return 'Please Enter a Email Address';
                  }else if (!RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$').hasMatch(value)){
                    return 'Please Enter a Valid Email Address';

                  }else{
                    return null;
                  }
                },
                controller: _useremailController,
                decoration:  InputDecoration(
                  
                  border:  OutlineInputBorder(
                    
                 borderRadius: BorderRadius.circular(12),
                  ),
                  labelText: 'Email',
                  hintText: 'Enter Your Mail',
          
                ),
              ),
               const SizedBox(
                height: 6,
              ),
              TextFormField(
                validator: (value){
                  if(value==null || value.isEmpty){
                    return 'This Field is Reuired';
                  }else{
                    return null;
                  }
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: _userpasswordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  labelText: 'Password',
                  hintText: 'Enter Your Password',
          
                ),
              ),
          const SizedBox(
                height: 6,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  foregroundColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16))
                  ),
                ),
                  onPressed: () {
                    if(_formkey.currentState!.validate()){
                      Navigator.of(context).push(MaterialPageRoute(
                         builder: (context) =>  SecondPage(
                          name: _usernameController.text,
                          email: _useremailController.text,
                          password: _userpasswordController.text,
                         )));
                    //Navigator.of(context).pushNamed(AppRoutes.second);

                    }
                     
                  },
                  child: const Text('LOGIN')),

                 
                  const Text("Don't have account?Sign Up",
                  style: TextStyle(
                    fontSize: 17,
                  ),),
                 
              
            ],
          ),

        ),
      ),
    );
  }
}