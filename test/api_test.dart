import 'dart:developer';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:dio/dio.dart';
import 'package:shashto_doctor_conversion/service/api/api.dart';
import 'package:shashto_doctor_conversion/service/api/client.dart';

import 'api_test.mocks.dart'; // Import the generated mock class

void main() {
  group('API login', () {
    late MockDio mockDioClient;

    setUp(() {
      mockDioClient = MockDio();
      // Ensure the mock client is assigned before each test
    });

    test('successful login', () async {
      // Arrange
      final responsePayload = {'token': 'dummy_token'};
      final requestOptions = RequestOptions(path: 'http://3.109.194.24:8080/api/login');
      when(mockDioClient.post(
        'http://3.109.194.24:8080/api/login',
        data: {
          'username': 'SD-R20240599',
          'password': '123456Aa',
        },
        options: anyNamed('options'),
        queryParameters: anyNamed('queryParameters'),
        cancelToken: anyNamed('cancelToken'),
        onSendProgress: anyNamed('onSendProgress'),
        onReceiveProgress: anyNamed('onReceiveProgress'),
      )).thenAnswer((_) async => Future.value(Response<Map<String, dynamic>>(
            data: responsePayload,
            statusCode: 200,
            requestOptions: requestOptions,
          )));

      // Ac final result = await API.login('SD-R20240599', '123456');

      // Assert
      expect(await API.login('SD-R20240599', '123456Aa'), true);
    });

    test('failed login', () async {
      // Arrange
      final requestOptions = RequestOptions(path: '/login');
      when(mockDioClient.post(
        any,
        data: anyNamed('data'),
        options: anyNamed('options'),
        queryParameters: anyNamed('queryParameters'),
        cancelToken: anyNamed('cancelToken'),
        onSendProgress: anyNamed('onSendProgress'),
        onReceiveProgress: anyNamed('onReceiveProgress'),
      )).thenAnswer((_) async => Response<Map<String, dynamic>>(
            statusCode: 401,
            requestOptions: requestOptions,
          ));

      // Act & Assert
      expect(() => API.login('username', 'password'), throwsException);
    });
  });
}