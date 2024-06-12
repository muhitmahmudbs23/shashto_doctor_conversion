part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class FetchUserProfile extends HomeEvent {}

class FetchNotifications extends HomeEvent {}

class FetchAppointments extends HomeEvent {
  final DateTime date;
  final bool isCurrentSlot;

  FetchAppointments(this.date, {this.isCurrentSlot = false});
}

class ChangePassword extends HomeEvent {
  final String newPassword;
  final String oldPassword;

  ChangePassword(this.newPassword, this.oldPassword);
}

class Logout extends HomeEvent {}
