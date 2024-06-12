import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shashto_doctor_conversion/api/API.dart';
import 'package:shashto_doctor_conversion/forgot_password/repo/forgot_password_repo.dart';


part 'forgot_password_event.dart';
part 'forgot_password_state.dart';

class ForgotPasswordBloc extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  final ForgotPasswordRepository repository;

  ForgotPasswordBloc(this.repository) : super(ForgotPasswordInitial()) {
    on<SendOtpEvent>((event, emit) async {
      emit(LoadingState());
      try {
        final  data = await repository.sendOtp(event.userId);
        if (data['error'] == null) {
          emit(OtpSentSuccessState(data['otp']));
        } else {
          emit(ErrorState("Failed to send OTP."));
        }
      } catch (e) {
        emit(ErrorState(e.toString()));
      }
    });

    on<VerifyOtpEvent>((event, emit) async {
      emit(LoadingState());
      if(event.otp == event.code.toString()) {
        emit(OtpVerifySuccessState("OTP verified successfully."));
      }else {
        emit(ErrorState("Invalid OTP."));
      }
    });

    on<PasswordChangedEvent>((event, emit) {
      int strength = _calculatePasswordStrength(event.password);
      emit(PasswordStrengthState(strength));
    });
  }

  int _calculatePasswordStrength(String password) {
    // Implement password strength calculation logic
    return password.length;  // Simplified example
  }
}