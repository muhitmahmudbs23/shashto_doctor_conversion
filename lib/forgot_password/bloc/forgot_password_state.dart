part of 'forgot_password_bloc.dart';

// forgot_password_state.dart
abstract class ForgotPasswordState {}

class InitialState extends ForgotPasswordState {}

class OTPSentState extends ForgotPasswordState {}

class PasswordChangedState extends ForgotPasswordState {}

class LoadingState extends ForgotPasswordState {}

class ErrorState extends ForgotPasswordState {
  final String message;

  ErrorState(this.message);
}

class PasswordStrengthState extends ForgotPasswordState {
  final int strength;

  PasswordStrengthState(this.strength);
}

