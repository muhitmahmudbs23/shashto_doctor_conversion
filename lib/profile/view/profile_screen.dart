import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shashto_doctor_conversion/service/local_storage/cache_service.dart';

import '../bloc/bloc.dart';
import '../bloc/event.dart';
import '../bloc/states.dart';
import '../repo/profile_repo.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileBloc(ProfileRepository()),
      child: const ProfileView(),
    );
  }
}

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  void initState() {
    BlocProvider.of<ProfileBloc>(context).add( const LoadProfileData(
      99
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          if (state is ProfileLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is ProfileLoaded) {
            return ProfileContent(state.profileData, state.contactAddress, state.doctorInfo);
          } else if (state is ProfileViewStateSwitched) {
            return state.isWriteMode ? const ProfileEditForm() : const ProfileReadView();
          } else {
            return const Center(child: Text('Something went wrong!'));
          }
        },
      ),
      floatingActionButton: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          if (state is ProfileLoaded || state is ProfileViewStateSwitched) {
            return FloatingActionButton(
              onPressed: () {
                final isWriteMode = state is ProfileViewStateSwitched ? state.isWriteMode : false;
                context.read<ProfileBloc>().add(SwitchViewState(!isWriteMode));
              },
              child: const Icon(Icons.edit),
            );
          }
          return Container();
        },
      ),
    );
  }
}

class ProfileContent extends StatelessWidget {
  final Map<String, dynamic> profileData;
  final Map<String, dynamic>? contactAddress;
  final Map<String, dynamic>? doctorInfo;

  const ProfileContent(this.profileData, this.contactAddress, this.doctorInfo, {super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Profile image and basic info
          CircleAvatar(
            radius: 50,
            backgroundImage: profileData['profile_photo'] == null ? null : NetworkImage(profileData['profile_photo']),
          ),
          Text(profileData['name'], style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          // Profile details
          ProfileDetailItem(label: 'Email', value: profileData['email']),
          ProfileDetailItem(label: 'Date of Birth', value: profileData['date_of_birth']),
          ProfileDetailItem(label: 'Gender', value: profileData['gender']),
          ProfileDetailItem(label: 'Phone', value: profileData['phone']),
          ProfileDetailItem(label: 'Zip Code', value: contactAddress?['zip_code'] ?? ''),
          ProfileDetailItem(label: 'City', value: contactAddress?['city'] ?? ''),
          ProfileDetailItem(label: 'Country', value: contactAddress?['country'] ?? ''),
          ProfileDetailItem(label: 'Designation', value: doctorInfo?['designation'] ?? ''),
          ProfileDetailItem(label: 'Specialization', value: doctorInfo?['specialization'] ?? ''),
          // Edit button
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

class ProfileDetailItem extends StatelessWidget {
  final String label;
  final String value;

  const ProfileDetailItem({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          Text(value, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}

class ProfileEditForm extends StatelessWidget {
  const ProfileEditForm({super.key});

  @override
  Widget build(BuildContext context) {
    // Implement form for editing profile
    return const Center(child: Text('Profile Edit Form'));
  }
}

class ProfileReadView extends StatelessWidget {
  const ProfileReadView({super.key});

  @override
  Widget build(BuildContext context) {
    // Implement view-only profile details
    return const Center(child: Text('Profile Read View'));
  }
}