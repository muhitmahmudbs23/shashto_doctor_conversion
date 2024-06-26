import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shashto_doctor_conversion/forgot_password/view/forgot_passward_view.dart';
import 'package:shashto_doctor_conversion/home/view/home_view.dart';
import 'package:shashto_doctor_conversion/sign_in/bloc/sign_in_bloc.dart';
import 'package:shashto_doctor_conversion/sign_in/repo/sign_in_repo.dart';

class SignInPage extends StatelessWidget {
  final TextEditingController _userIdController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  SignInPage({super.key});

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<SignInBloc, SignInState>(
        listener: (context, state) {
          if (state is SignInFailure) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(SnackBar(
                  content: Text(state.error), backgroundColor: Colors.red));
          } else if (state is SignInSuccess) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(
                  user: state.user,
                ),
              ),
            ); // Assuming '/home' is the route for the home page
          }
        },
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.teal.shade300,
                Colors.teal.shade600,
                Colors.teal.shade900,
              ],
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: BlocBuilder<SignInBloc, SignInState>(
                builder: (context, state) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset('assets/logo.png', height: 80),
                      const SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 22.0),
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.teal.shade100,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('User Id',
                                    style: TextStyle(
                                      color: Colors.grey.shade800,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    )),
                                const SizedBox(height: 10),
                                _userIdField(),
                                const SizedBox(height: 20),
                                Text('Password',
                                    style: TextStyle(
                                        color: Colors.grey.shade800,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18)),
                                const SizedBox(height: 10),
                                _passwordField(),
                                const SizedBox(height: 20),
                                _signInButton(context, state is SignInLoading),
                                const SizedBox(height: 20),
                                Align(
                                  alignment: Alignment.center,
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                 ForgotPasswordScreen()),
                                      );
                                    },
                                    child: const Text('Forgot your password?',
                                        style: TextStyle(
                                            color: Colors.blueAccent)),
                                  ),
                                ),
                                if (state is SignInLoading)
                                  const Center(
                                      child: CircularProgressIndicator()),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _userIdField() {
    return TextFormField(
      controller: _userIdController,
      validator: (value) {
        if (_validateUserId(value ?? '')) {
          return null;
        } else {
          return 'User ID cannot be empty';
        }
      },
      decoration: const InputDecoration(
        hintText: 'Type your user id',
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  Widget _passwordField() {
    return TextFormField(
      controller: _passwordController,
      obscureText: true,
      validator: (value) {
        if (_validatePassword(value ?? '')) {
          return null;
        } else {
          return 'Password cannot be empty';
        }
      },
      decoration: const InputDecoration(
        hintText: 'Enter your password',
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  Widget _signInButton(
    BuildContext context,
    bool isLoading,
  ) {
    return Align(
      alignment: Alignment.center,
      child: ElevatedButton(
        onPressed: isLoading
            ? null
            : () {
                if (_formKey.currentState!.validate()) {
                  BlocProvider.of<SignInBloc>(context).add(SignInRequested(
                    username: _userIdController.text,
                    password: _passwordController.text,
                  ));
                }
              },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
                isLoading ? Colors.grey : Colors.blue)),
        child: const Text(
          'Sign in',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  bool _validateUserId(String userId) {
    return userId.isNotEmpty;
  }

  bool _validatePassword(String password) {
    return password.isNotEmpty;
  }
}
