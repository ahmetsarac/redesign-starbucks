import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../theme/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FA),
      body: SingleChildScrollView(
        child: Container(
          padding:
              const EdgeInsets.symmetric(horizontal: 20.0, vertical: 126.0),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/splash_screen_bg.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/login_screen_logo.png'),
              const SizedBox(height: 41.32),
              Text(
                'Welcome back!',
                style: Theme.of(context).textTheme.headline1,
              ),
              const SizedBox(height: 11.0),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit sed do eiusmod tempor',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              const SizedBox(height: 38.0),
              const TextField(
                decoration: InputDecoration(hintText: 'E-Mail'),
              ),
              const SizedBox(height: 15.0),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Password',
                    suffixIcon: Image.asset('assets/icons/visibility.png')),
              ),
              const SizedBox(height: 32.0),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  child: Text(
                    'Forgot your password?',
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(color: GreyColors.darkGrey),
                  ),
                  onPressed: () {},
                ),
              ),
              const SizedBox(height: 32.0),
              ElevatedButton(
                style: AppTheme.primaryButtonStyle,
                onPressed: () {},
                child: const Text('Login'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
