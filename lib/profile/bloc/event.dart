// profile_event.dart
import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';




abstract class ProfileEvent extends Equatable {
  const ProfileEvent();
  
  @override
  List<Object> get props => [];
}

class LoadProfileData extends ProfileEvent {
  final int contactId;
  
  const LoadProfileData(this.contactId);
  
  @override
  List<Object> get props => [contactId];
}

class SaveProfileData extends ProfileEvent {
  final int contactId;
  final String imageBase64;
  final Map<String, dynamic> profileData;
  
  const SaveProfileData(this.contactId, this.imageBase64, this.profileData);
  
  @override
  List<Object> get props => [contactId, imageBase64, profileData];
}

class PickImage extends ProfileEvent {
  final ImageSource source;
  
  const PickImage(this.source);
  
  @override
  List<Object> get props => [source];
}

class CropImage extends ProfileEvent {
  final Uri imageUri;
  
  const CropImage(this.imageUri);
  
  @override
  List<Object> get props => [imageUri];
}

class SwitchViewState extends ProfileEvent {
  final bool isWriteMode;
  
  const SwitchViewState(this.isWriteMode);
  
  @override
  List<Object> get props => [isWriteMode];
}