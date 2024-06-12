import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shashto_doctor_conversion/forgot_password/bloc/forgot_password_bloc.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forgot Password'),
      ),
      body: const ForgotPasswordForm(),
    );
  }
}

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({super.key});

  @override
  ForgotPasswordFormState createState() => ForgotPasswordFormState();
}

class ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final TextEditingController _userIdController = TextEditingController();
  final TextEditingController _otpController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _userIdController.dispose();
    _otpController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ForgotPasswordBloc, ForgotPasswordState>(
      listener: (context, state) {
        if (state is ErrorState) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.error)));
        }else if(state is OtpVerifySuccessState){
          context.read<ForgotPasswordBloc>().add(PasswordChangedEvent(_passwordController.text));
        }
      },
      child: BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
        builder: (context, state) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                if (state is ForgotPasswordInitial || state is LoadingState) ...[
                  TextField(
                    controller: _userIdController,
                    decoration: const InputDecoration(labelText: 'User ID'),
                  ),
                  ElevatedButton(
                    onPressed: () => context.read<ForgotPasswordBloc>().add(SendOtpEvent(_userIdController.text)),
                    child: const Text('Send OTP'),
                  ),
                ],
                if (state is OtpSentSuccessState) ...[
                  TextField(
                    controller: _otpController,
                    decoration: const InputDecoration(labelText: 'OTP'),
                  ),
                  TextField(
                    controller: _passwordController,
                    onChanged: (value) => context.read<ForgotPasswordBloc>().add(PasswordChangedEvent(value)),
                    obscureText: true,
                    decoration: const InputDecoration(labelText: 'New Password'),
                  ),
                  TextField(
                    controller: _confirmPasswordController,
                    obscureText: true,
                    decoration: const InputDecoration(labelText: 'Confirm Password'),
                  ),
                  // if (state is ResendOtpTimerState && state.timer > 0)
                  //   Text("Resend OTP in ${state.timer} seconds"),
                  // ElevatedButton(
                  //   onPressed: state is ResendOtpTimerState && state.timer == 0 ? () {
                  //     context.read<ForgotPasswordBloc>().add(SendOtpEvent(_userIdController.text));
                  //   } : null,
                  //   child: const Text('Resend OTP'),
                  // ),
                  ElevatedButton(
                    onPressed: () {
                      context.read<ForgotPasswordBloc>().add(VerifyOtpEvent(
                        otp: _otpController.text,
                        code: state.code,
                      ));
                    },
                    child: const Text('Change Password'),
                  ),
                ],
              ],
            ),
          );
        },
      ),
    );
  }
}