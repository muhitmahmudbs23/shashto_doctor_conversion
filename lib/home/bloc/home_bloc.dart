import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shashto_doctor_conversion/home/modals/appointments.dart';
import 'package:shashto_doctor_conversion/home/modals/user_profile.dart';
import 'package:shashto_doctor_conversion/home/repo/home_repo.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository repository;

  HomeBloc(this.repository) : super(HomeInitialState()) {
    //   on<FetchUserProfile>((event, emit) async {
    //     emit(HomeLoading());
    //     try {
    //       final profile = await repository.fetchUserProfile();
    //       emit(UserProfileFetched(profile));
    //     } catch (e) {
    //       emit(HomeError(e.toString()));
    //     }
    //   });

    //   on<FetchNotifications>((event, emit) async {
    //     emit(HomeLoading());
    //     try {
    //       final count = await repository.fetchNotifications();
    //       emit(NotificationsFetched(count));
    //     } catch (e) {
    //       emit(HomeError(e.toString()));
    //     }
    //   });

    //   on<FetchAppointments>((event, emit) async {
    //     emit(HomeLoading());
    //     try {
    //       final appointments = await repository.fetchAppointments(event.date, event.isCurrentSlot);
    //       emit(AppointmentsFetched(appointments));
    //     } catch (e) {
    //       emit(HomeError(e.toString()));
    //     }
    //   });

    //   on<ChangePassword>((event, emit) async {
    //     emit(HomeLoading());
    //     try {
    //       await repository.changePassword(event.newPassword, event.oldPassword);
    //       emit(PasswordChanged());
    //     } catch (e) {
    //       emit(HomeError(e.toString()));
    //     }
    //   });

    //   on<Logout>((event, emit) async {
    //     emit(HomeLoading());
    //     try {
    //       await repository.logout();
    //       emit(LogoutSuccess());
    //     } catch (e) {
    //       emit(HomeError(e.toString()));
    //     }
    //   });
    // }
  }
}
