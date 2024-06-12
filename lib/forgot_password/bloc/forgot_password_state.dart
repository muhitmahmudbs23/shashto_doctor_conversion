part of 'forgot_password_bloc.dart';

abstract class ForgotPasswordState {}

class ForgotPasswordInitial extends ForgotPasswordState {}

class LoadingState extends ForgotPasswordState {}

class OtpSentSuccessState extends ForgotPasswordState {
  
  final int code;

  OtpSentSuccessState(this.code);
}

class OtpVerifySuccessState extends ForgotPasswordState {
  final String message;

  OtpVerifySuccessState(this.message);
}

class ErrorState extends ForgotPasswordState {
  final String error;

  ErrorState(this.error);
}

class PasswordStrengthState extends ForgotPasswordState {
  final int strength;

  PasswordStrengthState(this.strength);
}
