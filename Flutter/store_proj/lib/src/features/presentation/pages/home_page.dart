import 'package:flutter/material.dart';
import 'package:store_proj/src/features/presentation/pages/second_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final TextEditingController _usernameController;
  late final TextEditingController _userpassController;
  final GlobalKey<FormState>_formkey=GlobalKey<FormState>();
  bool _isPassHidden=true;
  


  // storeData(String username, String password) async {
  //   // final prefs = await SharedPreferences.getInstance();
  //   await prefs.setString('username', username);
  //   await prefs.setString('password', password);
  // }


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
      body:  Center(
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             const Text('LOGIN'),
             const SizedBox(
              height: 8,
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
              height: 8,
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
              height: 10,
             ),
             ElevatedButton(
               style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  foregroundColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16))
                  ),
                ),
              onPressed: ()  {
                  // if (_formkey.currentState!.validate()) {
                  //    storeData(
                  //     _usernameController.text,
                  //     _userpassController.text,
                  //   );
                  //   Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (context) => const SecondPage(),
                  //   ));
              //       //Navigator.of(context).pushNamed(AppRoutes.second);

                //  }
             },
              child: const Text('LOGIN',
              style: TextStyle(
                fontSize: 18,

              ),)),

             const SizedBox(
              height: 90,
             ),

             RichText(text:  const TextSpan(
              text: 'Not yet Registered?',
                  style:  TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                children: [
                  TextSpan(
                    text: 'Register',
                    style:  TextStyle(
                      fontSize: 18,
                      color: Colors.blueGrey,
                    ),
                    // recognizer: TapGestureRecognizer()
                    // ..onTap=(){
                    //   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const RegisterPage(),));
                    // },
                  ),
                ]
             )),
             

            ],
          
          ),
        )),
    );
  }
}