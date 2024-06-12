part of 'sign_in_bloc.dart';

abstract class SignInEvent {}

class SignInRequested extends SignInEvent {
  final String username;
  final String password;

  SignInRequested({required this.username, required this.password});
}

class SendOtpRequested extends SignInEvent {
  final String userId;

  SendOtpRequested({required this.userId});
}