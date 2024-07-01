// profile_bloc.dart
import 'package:bloc/bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../repo/profile_repo.dart';
import 'event.dart';
import 'states.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileRepository profileRepository;

  ProfileBloc(this.profileRepository) : super(ProfileInitial()) {
    on<LoadProfileData>(_onLoadProfileData);
    on<SaveProfileData>(_onSaveProfileData);
    on<PickImage>(_onPickImage);
    on<CropImage>(_onCropImage);
    on<SwitchViewState>(_onSwitchViewState);
  }

  Future<void> _onLoadProfileData(LoadProfileData event, Emitter<ProfileState> emit) async {
    emit(ProfileLoading());
    try {
      final profileData = await profileRepository.getContactInfo(event.contactId);
      final contactAddress = await profileRepository.getContactAddress(event.contactId);
      final doctorInfo = await profileRepository.getDoctorInfo(event.contactId);
      emit(ProfileLoaded(profileData: profileData!, contactAddress: contactAddress, doctorInfo: doctorInfo));
    } catch (error) {
      emit(ProfileError(error.toString()));
    }
  }

  Future<void> _onSaveProfileData(SaveProfileData event, Emitter<ProfileState> emit) async {
    emit(ProfileSaving());
    try {
      await profileRepository.saveData(event.contactId, event.imageBase64, event.profileData);
      emit(ProfileSaved());
    } catch (error) {
      emit(ProfileError(error.toString()));
    }
  }

  Future<void> _onPickImage(PickImage event, Emitter<ProfileState> emit) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: event.source);
    if (pickedFile != null) {
      emit(ProfileImagePicked(Uri.parse(pickedFile.path)));
    } else {
      emit(ProfileError("No image selected"));
    }
  }

  Future<void> _onCropImage(CropImage event, Emitter<ProfileState> emit) async {
    // Implement cropping functionality using a package like image_cropper
    // Here, we'll assume the image has been cropped and converted to base64
    final imageBase64 = await _cropImage(event.imageUri);
    emit(ProfileImageCropped(imageBase64));
  }

  void _onSwitchViewState(SwitchViewState event, Emitter<ProfileState> emit) {
    emit(ProfileViewStateSwitched(event.isWriteMode));
  }

  Future<String> _cropImage(Uri imageUri) async {
    // Implement actual image cropping logic
    // For simplicity, we'll return a placeholder base64 string
    return "base64EncodedString";
  }
}