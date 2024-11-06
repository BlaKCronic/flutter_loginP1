import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State <LoginScreen> createState() =>  _LoginScreenState();
}

class  _LoginScreenState extends State <LoginScreen> {

  bool isloading = false;

  @override
  Widget build(BuildContext context) {

    final txtUser = TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        hintText: 'Email User',
        fillColor: Colors.blueGrey,
        filled: true,
        border: OutlineInputBorder()
      ),
    );

    final txtPwd = TextFormField(
      keyboardType: TextInputType.text,
      decoration: const InputDecoration(
        hintText: 'Password User',
        fillColor: Colors.blueGrey,
        filled: true,
        border: OutlineInputBorder()
      ),
    );

    final conCredencials = Positioned(
      bottom: 120,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30)
        ),
        width: 350,
        height: 200,
        child: ListView(
          children: [
            txtUser,
            const SizedBox(height: 10,),
            txtPwd
          ],
        ),
      ),
    );

    final imgLogo = Positioned(
      top: 120,
      child: Image.asset('assets/HaloLogo.png', height: 200,),
      );

      final imgBt = Positioned(
        bottom: 70,
        child: GestureDetector(
          onTap: (){
            isloading = true;
            setState(() {});
            Future.delayed(const Duration(seconds: 3)).then(
            (value) {
              isloading = false;
              setState(() {
              });
              Navigator.pushNamed(context, '/dash');}
            );

          },
          child: Image.asset('assets/btJeilo.png', height: 100,)),
      );

      const progress = Positioned(
        top: 280,
        child: CircularProgressIndicator(),
      );

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/jeilo.jpg')
            )
        ),
        child:  Stack(
          alignment: Alignment.bottomCenter,
          children: [
            imgLogo,
            isloading ? progress: Container(),
            imgBt,
            conCredencials
          ],
        ),
      ),
    );
  }
}