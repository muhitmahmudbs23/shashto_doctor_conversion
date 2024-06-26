import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shashto_doctor_conversion/forgot_password/bloc/forgot_password_bloc.dart';
import 'package:shashto_doctor_conversion/forgot_password/repo/forgot_password_repo.dart';

class ForgotPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ForgotPasswordBloc(
        repository: ForgotPasswordRepository(),
      ),
      child: ForgotPasswordView(),
    );
  }
}

class ForgotPasswordView extends StatefulWidget {
  @override
  _ForgotPasswordViewState createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {
  final _userIdController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _otpController = TextEditingController();
  bool passVisibility = false;
  bool confirmPassVisibility = false;
  final _tooltip = Tooltip(
    message: "Password must be at least 8 characters long.",
    padding: const EdgeInsets.all(8),
    textStyle: const TextStyle(color: Colors.white),
    decoration: BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.circular(4),
    ),
  );

  @override
  void initState() {
    super.initState();

    // KeyboardVisibilityNotification().addNewListener(
    //   onChange: (bool visible) {
    //     if (!visible) {
    //       _tooltip.();
    //     }
    //   },
    // );

    // _passwordController.addListener(() {
    //   BlocProvider.of<ForgotPasswordBloc>(context).add(
    //     PasswordTextChangedEvent(_passwordController.text),
    //   );
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forgot Password'),
      ),
      body: BlocListener<ForgotPasswordBloc, ForgotPasswordState>(
        listener: (context, state) {
          if (state is OTPSentState) {
            _showOTPVerificationLayout();
          } else if (state is PasswordChangedState) {
            Navigator.pop(context);
          } else if (state is ErrorState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message)),
            );
          } else if (state is PasswordStrengthState) {
            // Update password strength UI here
          }
        },
        child: BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
          builder: (context, state) {
            if (state is LoadingState) {
              return const Center(child: CircularProgressIndicator());
            }
            else if (state is InitialState) {
              return _buildInitialLayout();
            }else if (state is OTPSentState) {
              return _buildOTPVerificationLayout();
            }else{
              return _buildInitialLayout();
            }
            
          },
        ),
      ),
    );
  }

  Widget _buildInitialLayout() {
    return SingleChildScrollView(
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Enter your phone number to receive an OTP',
                style: TextStyle(fontSize: 18, color: Colors.black),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              TextField(
                controller: _userIdController,
                decoration: const InputDecoration(
                  labelText: 'User ID',
                  hintText: 'Enter your user ID',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.all(8.0),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  BlocProvider.of<ForgotPasswordBloc>(context).add(
                    SendOtpEvent(false, username: _userIdController.text),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  backgroundColor: Colors.blue,
                  textStyle: const TextStyle(fontSize: 16, color: Colors.white),
                ),
                child: const Text('Send OTP'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOTPVerificationLayout() {
    return SingleChildScrollView(
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text(
                'OTP has been sent to your registered mobile number.',
                style: TextStyle(fontSize: 18, color: Colors.black),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _otpController,
                decoration: const InputDecoration(
                  labelText: 'OTP',
                  hintText: 'Enter the OTP',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.all(8.0),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'New Password',
                  hintText: 'Enter your new password',
                  border: const OutlineInputBorder(),
                  contentPadding: const EdgeInsets.all(8.0),
                  suffixIcon: IconButton(
                    icon: Icon(passVisibility ? Icons.visibility_off : Icons.visibility),
                    onPressed: () {
                      setState(() {
                        passVisibility = !passVisibility;
                      });
                    },
                  ),
                ),
                obscureText: !passVisibility,
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _confirmPasswordController,
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  hintText: 'Confirm your new password',
                  border: const OutlineInputBorder(),
                  contentPadding: const EdgeInsets.all(8.0),
                  suffixIcon: IconButton(
                    icon: Icon(confirmPassVisibility ? Icons.visibility_off : Icons.visibility),
                    onPressed: () {
                      setState(() {
                        confirmPassVisibility = !confirmPassVisibility;
                      });
                    },
                  ),
                ),
                obscureText: !confirmPassVisibility,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  BlocProvider.of<ForgotPasswordBloc>(context).add(
                    ChangePasswordEvent(
                      userId: _userIdController.text,
                      otp: _otpController.text,
                      password: _passwordController.text,
                    ),
                  );
                },
                child: const Text('Change Password'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  backgroundColor: Colors.blue,
                  textStyle: const TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              TextButton(
                onPressed: () {
                  BlocProvider.of<ForgotPasswordBloc>(context).add(
                    SendOtpEvent(true, username: _userIdController.text),
                  );
                },
                child: const Text('Resend OTP'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showOTPVerificationLayout() {
    setState(() {
      // Show OTP verification layout
    });
  }
}
