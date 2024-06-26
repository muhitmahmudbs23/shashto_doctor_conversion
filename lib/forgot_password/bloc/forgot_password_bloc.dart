import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shashto_doctor_conversion/service/api/api.dart';
import 'package:shashto_doctor_conversion/forgot_password/repo/forgot_password_repo.dart';


part 'forgot_password_event.dart';
part 'forgot_password_state.dart';


class ForgotPasswordBloc extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  final ForgotPasswordRepository repository;

  ForgotPasswordBloc({required this.repository}) : super(InitialState()) {
    on<SendOtpEvent>(_onSendOtpEvent);
    on<ChangePasswordEvent>(_onChangePasswordEvent);
  }

  Future<void> _onSendOtpEvent(SendOtpEvent event, Emitter<ForgotPasswordState> emit) async {
    emit(LoadingState());
    try {
      log(event.username.toString());
      final response = await repository.sendOtp(event.username);
      log(response.toString());
      emit(OTPSentState());
    } catch (e) {
      emit(ErrorState(e.toString()));
    }
  }

  Future<void> _onChangePasswordEvent(ChangePasswordEvent event, Emitter<ForgotPasswordState> emit) async {
    emit(LoadingState());
    try {
      final data = {
        'userId': event.userId,
        'otp': event.otp,
        'password': event.password,
      };
      final response = await repository.verifyOtp(otp: event.otp, newPassword: event.password, username: event.userId);
      log(response.toString());
      emit(PasswordChangedState());
    } catch (e) {
      emit(ErrorState(e.toString()));
    }
  }
}
