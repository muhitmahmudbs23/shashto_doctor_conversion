part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

class HomeInitialState extends HomeState {}

class HomeLoading extends HomeState {}

class UserProfileFetched extends HomeState {
  final UserProfile profile;

  UserProfileFetched(this.profile);
}

class NotificationsFetched extends HomeState {
  final int notificationCount;

  NotificationsFetched(this.notificationCount);
}

class AppointmentsFetched extends HomeState {
  final List<Appointment> appointments;

  AppointmentsFetched(this.appointments);
}

class PasswordChanged extends HomeState {}

class LogoutSuccess extends HomeState {}

class HomeError extends HomeState {
  final String message;

  HomeError(this.message);
}