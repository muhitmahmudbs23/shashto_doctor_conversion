part of 'forgot_password_bloc.dart';

abstract class ForgotPasswordEvent {}

class SendOtpEvent extends ForgotPasswordEvent {
  final String userId;

  SendOtpEvent(this.userId);
}

class VerifyOtpEvent extends ForgotPasswordEvent {
  final String otp;
  final int code;

  VerifyOtpEvent({required this.otp, required this.code});
}

class PasswordChangedEvent extends ForgotPasswordEvent {
  final String password;

  PasswordChangedEvent(this.password);
}
