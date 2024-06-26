part of 'sign_in_bloc.dart';


abstract class SignInState {}

class SignInInitial extends SignInState {}

class SignInLoading extends SignInState {}

class SignInSuccess extends SignInState {
  final DoctorInfo user;

  SignInSuccess({required this.user});
}

class SignInFailure extends SignInState {
  final String error;

  SignInFailure({required this.error});
}

class OtpSent extends SignInState {}

class OtpSendFailure extends SignInState {
  final String error;

  OtpSendFailure({required this.error});
}