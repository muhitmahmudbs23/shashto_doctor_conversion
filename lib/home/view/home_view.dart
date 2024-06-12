// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:shashto_doctor_conversion/api/API.dart';
// import 'package:shashto_doctor_conversion/home/bloc/home_bloc.dart';
// import 'package:shashto_doctor_conversion/home/repo/home_repo.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home'),
//       ),
//       body: BlocProvider(
//         create: (context) => HomeBloc(HomeRepository(
//           API(),
//         )),
//         child: BlocBuilder<HomeBloc, HomeState>(
//           builder: (context, state) {
//             if (state is HomeLoading) {
//               return const CircularProgressIndicator();
//             }
//             if (state is UserProfileFetched) {
//               // Build your home screen with user profile
//             }
//             if (state is HomeError) {
//               return Text('Error: ${state.message}');
//             }
//             return const Center(child: Text('Welcome to the Home Screen!'));
//           },
//         ),
//       ),
//     );
//   }

//   BlocProvider({required Function(dynamic context) create, required child}) {}
// }

import 'package:flutter/material.dart';
import 'package:shashto_doctor_conversion/sign_in/modals/user.dart';

class HomePage extends StatelessWidget {
  final Doctor user;
  const HomePage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Text('Welcome ${user.name}!'),
      ),
    );
  }
}
