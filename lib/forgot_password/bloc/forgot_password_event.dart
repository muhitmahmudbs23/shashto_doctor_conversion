part of 'forgot_password_bloc.dart';

// forgot_password_event.dart
abstract class ForgotPasswordEvent {}

class SendOtpEvent extends ForgotPasswordEvent {
  final bool isResend;
  final String username;
  SendOtpEvent(this.isResend, {required this.username});
}

class ChangePasswordEvent extends ForgotPasswordEvent {
  final String userId;
  final String otp;
  final String password;

  ChangePasswordEvent({required this.userId, required this.otp, required this.password});
}

class PasswordTextChangedEvent extends ForgotPasswordEvent {
  final String password;

  PasswordTextChangedEvent(this.password);
}
