import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shashto_doctor_conversion/forgot_password/bloc/forgot_password_bloc.dart';
import 'package:shashto_doctor_conversion/forgot_password/repo/forgot_password_repo.dart';
import 'package:shashto_doctor_conversion/sign_in/bloc/sign_in_bloc.dart';
import 'package:shashto_doctor_conversion/sign_in/repo/sign_in_repo.dart';

import 'package:shashto_doctor_conversion/sign_in/view/sign_in_view.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<SignInBloc>(
          create: (context) => SignInBloc(authenticationRepository: UserRepository()),
        ),
        BlocProvider(create: (context) => ForgotPasswordBloc(repository: ForgotPasswordRepository())),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  SignInPage(),
    );
  }
}

