// profile_state.dart
import 'package:equatable/equatable.dart';

abstract class ProfileState extends Equatable {
  const ProfileState();
  
  @override
  List<Object> get props => [];
}

class ProfileInitial extends ProfileState {}

class ProfileLoading extends ProfileState {}

class ProfileLoaded extends ProfileState {
  final Map<String, dynamic> profileData;
  final Map<String, dynamic>? contactAddress;
  final Map<String, dynamic>? doctorInfo;
  
  const ProfileLoaded({
    required this.profileData,
    this.contactAddress,
    this.doctorInfo,
  });
  
  @override
  List<Object> get props => [profileData, contactAddress as Object, doctorInfo as Object];
}

class ProfileSaving extends ProfileState {}

class ProfileSaved extends ProfileState {}

class ProfileError extends ProfileState {
  final String message;
  
  const ProfileError(this.message);
  
  @override
  List<Object> get props => [message];
}

class ProfileImagePicked extends ProfileState {
  final Uri imageUri;
  
  const ProfileImagePicked(this.imageUri);
  
  @override
  List<Object> get props => [imageUri];
}

class ProfileImageCropped extends ProfileState {
  final String imageBase64;
  
  const ProfileImageCropped(this.imageBase64);
  
  @override
  List<Object> get props => [imageBase64];
}

class ProfileViewStateSwitched extends ProfileState {
  final bool isWriteMode;
  
  const ProfileViewStateSwitched(this.isWriteMode);
  
  @override
  List<Object> get props => [isWriteMode];
}