import '../../Presentation/widgets/username.dart';
import 'package:flutter/material.dart';
import './HomePage.dart';
import './AdminPageTransfer.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  String _userType = 'User';
  bool _isDarkMode = false;

  void _handleUserTypeChange(String? value) {
    setState(() {
      _userType = value!;
    });
  }

  void _handleLogin() {
    if (_userType == 'Admin') {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => AdminPageTransfer()));
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ShaderMask(
          shaderCallback: (bounds) => const LinearGradient(
            colors: [Colors.black, Colors.black12],
            begin: Alignment.bottomCenter,
            end: Alignment(0, 0.5),
          ).createShader(bounds),
          blendMode: BlendMode.darken,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/one.JPG"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.black12, BlendMode.darken),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _header(context),
                  _inputField(context),
                  _signup(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _header(context) {
    return const Column(
      children: [
        Text(
          "Welcome Back",
          style: TextStyle(
              fontSize: 40, fontWeight: FontWeight.bold, color: Colors.blue),
        ),
        Text(
          "Enter your credential to login",
          style: TextStyle(color: Color.fromARGB(184, 231, 190, 190)),
        ),
      ],
    );
  }

  _inputField(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Radio(
                value: 'Admin',
                groupValue: _userType,
                onChanged: _handleUserTypeChange,
              ),
              const Text(
                'Admin',
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white), // Change text color to white
              ),
              Radio(
                value: 'User',
                groupValue: _userType,
                onChanged: _handleUserTypeChange,
              ),
              const Text(
                'User',
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white), // Change text color to white
              ),
            ],
          ),
        ),
        const UsernameTextField(),
        const SizedBox(height: 10),
        TextField(
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: "Password",
            hintStyle: TextStyle(color: Colors.blue.withOpacity(0.6)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none),
            fillColor: Colors.purple.withOpacity(0.1),
            filled: true,
            prefixIcon: const Icon(
              Icons.password,
              color: Color.fromARGB(134, 218, 213, 213),
            ),
          ),
          obscureText: true,
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: _handleLogin,
          style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            padding: const EdgeInsets.symmetric(vertical: 16),
            backgroundColor: Colors.purple,
          ),
          child: const Text(
            "Login",
            style: TextStyle(
                fontSize: 20, color: Color.fromARGB(255, 255, 255, 255)),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/forgot_password');
          },
          child: Text(
            "Forgot password?",
            style: TextStyle(
                color: Colors.purple,
                backgroundColor: Colors.black12.withOpacity(0.1)),
          ),
        ),
      ],
    );
  }

  _signup(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Dont have an account? ",
          style: TextStyle(color: Color.fromARGB(185, 238, 238, 238)),
        ),
        TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/signup');
            },
            child: const Text(
              "Sign Up",
              style: TextStyle(color: Color.fromARGB(255, 217, 0, 255)),
            ))
      ],
    );
  }
}
