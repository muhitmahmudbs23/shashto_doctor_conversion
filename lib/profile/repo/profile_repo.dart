// profile_repository.dart
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shashto_doctor_conversion/profile/model/profile_models.dart';

class ProfileRepository {
  final String baseUrl;
  final String token;

  ProfileRepository({required this.baseUrl, required this.token});

  Future<Contact> getContactInfo(int contactId) async {
    final response = await http.get(Uri.parse('$baseUrl/contacts/$contactId'),
      headers: {'Authorization': 'Token $token'});
    if (response.statusCode == 200) {
      return Contact.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load contact info');
    }
  }

  Future<Doctor> getDoctorInfo(int contactId) async {
    final response = await http.get(Uri.parse('$baseUrl/doctors/$contactId'),
      headers: {'Authorization': 'Token $token'});
    if (response.statusCode == 200) {
      return Doctor.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load doctor info');
    }
  }

  Future<Address> getContactAddress(int contactId) async {
    final response = await http.get(Uri.parse('$baseUrl/addresses/$contactId'),
      headers: {'Authorization': 'Token $token'});
    if (response.statusCode == 200) {
      return Address.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load contact address');
    }
  }

  Future<bool> updateProfile(int contactId, Map<String, dynamic> data) async {
    final response = await http.put(Uri.parse('$baseUrl/contacts/$contactId'),
      headers: {
        'Authorization': 'Token $token',
        'Content-Type': 'application/json'
      },
      body: json.encode(data));
    return response.statusCode == 200;
  }

  Future<bool> uploadImage(int userId, String imageBase64) async {
    final response = await http.post(
      Uri.parse('$baseUrl/upload_image'),
      headers: {
        'Authorization': 'Token $token',
        'Content-Type': 'application/json'
      },
      body: json.encode({'user_id': userId, 'image': imageBase64}));
    return response.statusCode == 200;
  }
}
