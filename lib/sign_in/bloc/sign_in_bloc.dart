import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shashto_doctor_conversion/service/local_storage/cache_service.dart';
import 'package:shashto_doctor_conversion/sign_in/modals/user.dart';
import 'package:shashto_doctor_conversion/sign_in/repo/sign_in_repo.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final UserRepository authenticationRepository;

  SignInBloc({required this.authenticationRepository})
      : super(SignInInitial()) {
    on<SignInRequested>((event, emit) async {
      emit(SignInLoading());
      try {
        var data = await authenticationRepository.login(
            event.username, event.password);

        if (data['error'] == null) {
          log(data.toString());
          final response = LoginResponse.fromJson(data);
          
          emit(SignInSuccess(user: response.doctorInfo));
        } else {
          emit(SignInFailure(error: 'Invalid username or password'));
        }
      } catch (e) {
        emit(SignInFailure(error: e.toString()));
      }
    });

    // on<SendOtpRequested>((event, emit) async {
    //   try {
    //     bool isOtpSent = await authenticationRepository.sendOTP(event.userId);
    //     if (isOtpSent) {
    //       emit(OtpSent());
    //     } else {
    //       emit(OtpSendFailure(error: 'Failed to send OTP'));
    //     }
    //   } catch (e) {
    //     emit(OtpSendFailure(error: e.toString()));
    //   }
    // });
  }
}
