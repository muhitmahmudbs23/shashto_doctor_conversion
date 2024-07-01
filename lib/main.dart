import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path/path.dart';
import 'package:shashto_doctor_conversion/database/app_database.dart';
import 'package:shashto_doctor_conversion/database/dao/tags.dart';
import 'package:shashto_doctor_conversion/forgot_password/bloc/forgot_password_bloc.dart';
import 'package:shashto_doctor_conversion/forgot_password/repo/forgot_password_repo.dart';
import 'package:shashto_doctor_conversion/service/api/client.dart';
import 'package:shashto_doctor_conversion/sign_in/bloc/sign_in_bloc.dart';
import 'package:shashto_doctor_conversion/sign_in/repo/sign_in_repo.dart';

import 'package:shashto_doctor_conversion/sign_in/view/sign_in_view.dart';
import 'package:sqflite/sqflite.dart';


import 'service/api/api.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  final instance = await AppDatabase.getInstance(join(await getDatabasesPath(), 'shashto_doctor.db'));
  //ensure binding

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<SignInBloc>(
          create: (context) => SignInBloc(authenticationRepository: UserRepository(
            tagsDao: instance.tagsDao,
          )),
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
    API.dioClient = DioClient().dio;
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

