import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:dio/dio.dart';
import 'package:shashto_doctor_conversion/service/api/api.dart';

import 'api_test.mocks.dart'; // Import the generated mock class

void main() {
  group('API TEST', () {
    late MockDio mockDioClient;

    setUp(() {
      mockDioClient = MockDio();
      API.dioClient =
          mockDioClient; // Ensure the mock client is assigned before each test
    });
    final requestOptions =
        RequestOptions(path: 'http://3.109.194.24:8080/api/');

    group('API login', () {
      late MockDio mockDioClient;

      setUp(() {
        mockDioClient = MockDio();
        API.dioClient =
            mockDioClient; // Ensure the mock client is assigned before each test
      });
      final requestOptions =
          RequestOptions(path: 'http://3.109.194.24:8080/api/');

      test('successful login', () async {
        // Arrange
        final responsePayload = {'token': 'dummy_token'};
        when(mockDioClient.post(
          'users/login',
          data: anyNamed('data'),
        )).thenAnswer((_) async => Response(
              data: responsePayload,
              statusCode: 200,
              requestOptions: requestOptions,
            ));

        // Ac final result = await API.login('SD-R20240599', '123456');

        // Assert
        expect(await API.login('SD-R20240599', '123456Aa'), responsePayload);
      });

      test('failed login', () async {
        // Arrange
        when(mockDioClient.post(
          'users/login',
          data: anyNamed('data'),
        )).thenAnswer((_) async => Response(
              data: "Invalid credentials",
              statusCode: 401,
              requestOptions: requestOptions,
            ));

        // Act & Assert
        expect(() => API.login('SD-R20240599', 'password'), throwsException);
      });
    });
    group('API sendOtp', () {
      test('successful sendOtp', () async {
        // Arrange
        final responsePayload = {'otp': '123456'};
        when(mockDioClient.post(
          'users/otp',
          data: anyNamed('data'),
        )).thenAnswer((_) async => Response(
              data: responsePayload,
              statusCode: 200,
              requestOptions: requestOptions,
            ));

        // Act
        final result = await API.sendOtp('SD-R20240599');

        // Assert
        expect(result, responsePayload);
      });

      test('failed sendOtp', () async {
        // Arrange
        when(mockDioClient.post(
          'users/otp',
          data: anyNamed('data'),
        )).thenAnswer((_) async => Response(
              data: "Failed to send otp",
              statusCode: 400,
              requestOptions: requestOptions,
            ));

        // Act & Assert
        expect(() => API.sendOtp('SD-R20240599'), throwsException);
      });
    });

    group('API verifyOtp', () {
      test('successful verifyOtp', () async {
        // Arrange
        final responsePayload = {'status': 'verified'};
        when(mockDioClient.post(
          'users/otp-verify',
          data: anyNamed('data'),
        )).thenAnswer((_) async => Response(
              data: responsePayload,
              statusCode: 200,
              requestOptions: requestOptions,
            ));

        // Act
        final result = await API.verifyOtp(
            otp: '123456', newPassword: 'newPass123', username: 'SD-R20240599');

        // Assert
        expect(result, responsePayload);
      });

      test('failed verifyOtp', () async {
        // Arrange
        when(mockDioClient.post(
          'users/otp-verify',
          data: anyNamed('data'),
        )).thenAnswer((_) async => Response(
              data: "Failed to verify otp",
              statusCode: 400,
              requestOptions: requestOptions,
            ));

        // Act & Assert
        expect(
            () => API.verifyOtp(
                otp: '123456',
                newPassword: 'newPass123',
                username: 'SD-R20240599'),
            throwsException);
      });
    });

    group('API changePassword', () {
      test('successful changePassword', () async {
        // Arrange
        final responsePayload = {'status': 'password changed'};
        when(mockDioClient.post(
          'users/password-change',
          data: anyNamed('data'),
        )).thenAnswer((_) async => Response(
              data: responsePayload,
              statusCode: 200,
              requestOptions: requestOptions,
            ));

        // Act
        final result = await API.changePassword(
            otp: '123456', newPassword: 'newPass123', userId: 'SD-R20240599');

        // Assert
        expect(result, responsePayload);
      });

      test('failed changePassword', () async {
        // Arrange
        when(mockDioClient.post(
          'users/password-change',
          data: anyNamed('data'),
        )).thenAnswer((_) async => Response(
              data: "Failed to change password",
              statusCode: 400,
              requestOptions: requestOptions,
            ));

        // Act & Assert
        expect(
            () => API.changePassword(
                otp: '123456',
                newPassword: 'newPass123',
                userId: 'SD-R20240599'),
            throwsException);
      });
    });

    group('API updateDeviceToken', () {
      test('successful updateDeviceToken', () async {
        // Arrange
        final responsePayload = {'status': 'token updated'};
        when(mockDioClient.put(
          'contacts/device/1',
          data: anyNamed('data'),
        )).thenAnswer((_) async => Response(
              data: responsePayload,
              statusCode: 200,
              requestOptions: requestOptions,
            ));

        // Act
        final result = await API.updateDeviceToken(1, {'token': 'newToken'});

        // Assert
        expect(result, responsePayload);
      });

      test('failed updateDeviceToken', () async {
        // Arrange
        when(mockDioClient.put(
          'contacts/device/1',
          data: anyNamed('data'),
        )).thenAnswer((_) async => Response(
              data: "Failed to update token",
              statusCode: 400,
              requestOptions: requestOptions,
            ));

        // Act & Assert
        expect(() => API.updateDeviceToken(1, {'token': 'newToken'}),
            throwsException);
      });
    });

    group('API getPersonalInfo', () {
      test('successful getPersonalInfo', () async {
        // Arrange
        final responsePayload = {'id': 1, 'name': 'John Doe'};
        when(mockDioClient.get(
          'personal-info/1',
          queryParameters: anyNamed('queryParameters'),
        )).thenAnswer((_) async => Response(
              data: responsePayload,
              statusCode: 200,
              requestOptions: requestOptions,
            ));

        // Act
        final result = await API.getPersonalInfo(1);

        // Assert
        expect(result, responsePayload);
      });

      test('failed getPersonalInfo', () async {
        // Arrange
        when(mockDioClient.get(
          'personal-info/1',
          queryParameters: anyNamed('queryParameters'),
        )).thenAnswer((_) async => Response(
              data: "Failed to get personal info",
              statusCode: 400,
              requestOptions: requestOptions,
            ));

        // Act & Assert
        expect(() => API.getPersonalInfo(1), throwsException);
      });
    });

    group('API getTagList', () {
      test('successful getTagList', () async {
        // Arrange
        final responsePayload = {
          'tags': ['tag1', 'tag2']
        };
        when(mockDioClient.get(
          'tag-list',
        )).thenAnswer((_) async => Response(
              data: responsePayload,
              statusCode: 200,
              requestOptions: requestOptions,
            ));

        // Act
        final result = await API.getTagList();

        // Assert
        expect(result, responsePayload);
      });

      test('failed getTagList', () async {
        // Arrange
        when(mockDioClient.get(
          'tag-list',
        )).thenAnswer((_) async => Response(
              data: "Failed to get tag list",
              statusCode: 400,
              requestOptions: requestOptions,
            ));

        // Act & Assert
        expect(() => API.getTagList(), throwsException);
      });
    });

    group('API putContact', () {
      test('successful putContact', () async {
        // Arrange
        final responsePayload = {'status': 'contact updated'};
        when(mockDioClient.put(
          'contacts/1',
          data: anyNamed('data'),
        )).thenAnswer((_) async => Response(
              data: responsePayload,
              statusCode: 200,
              requestOptions: requestOptions,
            ));

        // Act
        final result = await API.putContact(1, {'name': 'John Doe'});

        // Assert
        expect(result, responsePayload);
      });

      test('failed putContact', () async {
        // Arrange
        when(mockDioClient.put(
          'contacts/1',
          data: anyNamed('data'),
        )).thenAnswer((_) async => Response(
              data: "Failed to update contact",
              statusCode: 400,
              requestOptions: requestOptions,
            ));

        // Act & Assert
        expect(() => API.putContact(1, {'name': 'John Doe'}), throwsException);
      });
    });

    group('API getVitalList', () {
      test('successful getVitalList', () async {
        // Arrange
        final responsePayload = {
          'vitals': ['vital1', 'vital2']
        };
        when(mockDioClient.get(
          'vitals-type-list',
        )).thenAnswer((_) async => Response(
              data: responsePayload,
              statusCode: 200,
              requestOptions: requestOptions,
            ));

        // Act
        final result = await API.getVitalList();

        // Assert
        expect(result, responsePayload);
      });

      test('failed getVitalList', () async {
        // Arrange
        when(mockDioClient.get(
          'vitals-type-list',
        )).thenAnswer((_) async => Response(
              data: "Failed to get vital list",
              statusCode: 400,
              requestOptions: requestOptions,
            ));

        // Act & Assert
        expect(() => API.getVitalList(), throwsException);
      });
    });

    group('API getReveraAppointment', () {
      test('successful getReveraAppointment', () async {
        // Arrange
        final responsePayload = {'appointment': 'details'};
        when(mockDioClient.get(
          'contact-appointments/1',
          queryParameters: anyNamed('queryParameters'),
        )).thenAnswer((_) async => Response(
              data: responsePayload,
              statusCode: 200,
              requestOptions: requestOptions,
            ));

        // Act
        final result = await API.getReveraAppointment(1, 1);

        // Assert
        expect(result, responsePayload);
      });

      test('failed getReveraAppointment', () async {
        // Arrange
        when(mockDioClient.get(
          'contact-appointments/1',
          queryParameters: anyNamed('queryParameters'),
        )).thenAnswer((_) async => Response(
              data: "Failed to get appointment",
              statusCode: 400,
              requestOptions: requestOptions,
            ));

        // Act & Assert
        expect(() => API.getReveraAppointment(1, 1), throwsException);
      });
    });

    group('API putReveraAppointment', () {
      test('successful putReveraAppointment', () async {
        // Arrange
        final responsePayload = {'status': 'appointment updated'};
        when(mockDioClient.put(
          'contact-appointments/1',
          data: anyNamed('data'),
        )).thenAnswer((_) async => Response(
              data: responsePayload,
              statusCode: 200,
              requestOptions: requestOptions,
            ));

        // Act
        final result =
            await API.putReveraAppointment(1, {'appointment': 'details'});

        // Assert
        expect(result, responsePayload);
      });

      test('failed putReveraAppointment', () async {
        // Arrange
        when(mockDioClient.put(
          'contact-appointments/1',
          data: anyNamed('data'),
        )).thenAnswer((_) async => Response(
              data: "Failed to update appointment",
              statusCode: 400,
              requestOptions: requestOptions,
            ));

        // Act & Assert
        expect(() => API.putReveraAppointment(1, {'appointment': 'details'}),
            throwsException);
      });
    });

    group('API getDoctorAppointmentsObservable', () {
      test('successful getDoctorAppointmentsObservable', () async {
        // Arrange
        final responsePayload = {
          'appointments': ['appointment1', 'appointment2']
        };
        when(mockDioClient.get(
          'booked-appointments',
          queryParameters: anyNamed('queryParameters'),
        )).thenAnswer((_) async => Response(
              data: responsePayload,
              statusCode: 200,
              requestOptions: requestOptions,
            ));

        // Act
        final result =
            await API.getDoctorAppointmentsObservable({'doctorId': 1});

        // Assert
        expect(result, responsePayload);
      });

      test('failed getDoctorAppointmentsObservable', () async {
        // Arrange
        when(mockDioClient.get(
          'booked-appointments',
          queryParameters: anyNamed('queryParameters'),
        )).thenAnswer((_) async => Response(
              data: "Failed to get appointments",
              statusCode: 400,
              requestOptions: requestOptions,
            ));

        // Act & Assert
        expect(() => API.getDoctorAppointmentsObservable({'doctorId': 1}),
            throwsException);
      });
    });

    group('API getRatingTagList', () {
      test('successful getRatingTagList', () async {
        // Arrange
        final responsePayload = {
          'tags': ['tag1', 'tag2']
        };
        when(mockDioClient.get(
          'rating-tag-list',
          queryParameters: anyNamed('queryParameters'),
        )).thenAnswer((_) async => Response(
              data: responsePayload,
              statusCode: 200,
              requestOptions: requestOptions,
            ));

        // Act
        final result = await API.getRatingTagList({'type': 'rating'});

        // Assert
        expect(result, responsePayload);
      });

      test('failed getRatingTagList', () async {
        // Arrange
        when(mockDioClient.get(
          'rating-tag-list',
          queryParameters: anyNamed('queryParameters'),
        )).thenAnswer((_) async => Response(
              data: "Failed to get rating tags",
              statusCode: 400,
              requestOptions: requestOptions,
            ));

        // Act & Assert
        expect(() => API.getRatingTagList({'type': 'rating'}), throwsException);
      });
    });

    group('API ratePatient', () {
      test('successful ratePatient', () async {
        // Arrange
        final responsePayload = {'status': 'rating submitted'};
        when(mockDioClient.post(
          'ratings/',
          queryParameters: anyNamed('queryParameters'),
          data: anyNamed('data'),
        )).thenAnswer((_) async => Response(
              data: responsePayload,
              statusCode: 200,
              requestOptions: requestOptions,
            ));

        // Act
        final result = await API.ratePatient({'patientId': 1}, {'rating': 5});

        // Assert
        expect(result, responsePayload);
      });
    });
    group('API getPreviousAppointments', () {
      test('successful getPreviousAppointments', () async {
        // Arrange
        final responsePayload = {
          'appointments': ['appointment1', 'appointment2']
        };
        when(mockDioClient.get(
          'contact_previous_appointment_list/1',
          queryParameters: anyNamed('queryParameters'),
        )).thenAnswer((_) async => Response(
              data: responsePayload,
              statusCode: 200,
              requestOptions: requestOptions,
            ));

        // Act
        final result = await API.getPreviousAppointments(1, {'doctorId': 1});

        // Assert
        expect(result, responsePayload);
      });

      test('failed getPreviousAppointments', () async {
        // Arrange
        when(mockDioClient.get(
          'contact_previous_appointment_list/1',
          queryParameters: anyNamed('queryParameters'),
        )).thenAnswer((_) async => Response(
              data: "Failed to get previous appointments",
              statusCode: 400,
              requestOptions: requestOptions,
            ));

        // Act & Assert
        expect(() => API.getPreviousAppointments(1, {'doctorId': 1}),
            throwsException);
      });
    });
    group('API putProfileUpdate', () {
      test('successful putProfileUpdate', () async {
        // Arrange
        final responsePayload = {'status': 'profile updated'};
        when(mockDioClient.put(
          'users/profile-update/1',
          data: anyNamed('data'),
        )).thenAnswer((_) async => Response(
              data: responsePayload,
              statusCode: 200,
              requestOptions: requestOptions,
            ));

        // Act
        final result = await API.putProfileUpdate(1, {'name': 'John Doe'});

        // Assert
        expect(result, responsePayload);
      });

      test('failed putProfileUpdate', () async {
        // Arrange
        when(mockDioClient.put(
          'users/profile-update/1',
          data: anyNamed('data'),
        )).thenAnswer((_) async => Response(
              data: "Failed to update profile",
              statusCode: 400,
              requestOptions: requestOptions,
            ));

        // Act & Assert
        expect(() => API.putProfileUpdate(1, {'name': 'John Doe'}), throwsException);
      });
    });

    group('API putShare', () {
      test('successful putShare', () async {
        // Arrange
        final responsePayload = {'status': 'share updated'};
        when(mockDioClient.put(
          'contact-sharing/1',
          data: anyNamed('data'),
        )).thenAnswer((_) async => Response(
              data: responsePayload,
              statusCode: 200,
              requestOptions: requestOptions,
            ));

        // Act
        final result = await API.putShare(1, {'shared': true});

        // Assert
        expect(result, responsePayload);
      });

      test('failed putShare', () async {
        // Arrange
        when(mockDioClient.put(
          'contact-sharing/1',
          data: anyNamed('data'),
        )).thenAnswer((_) async => Response(
              data: "Failed to update share",
              statusCode: 400,
              requestOptions: requestOptions,
            ));

        // Act & Assert
        expect(() => API.putShare(1, {'shared': true}), throwsException);
      });
    });

    group('API getDoctorWorkInfo', () {
      test('successful getDoctorWorkInfo', () async {
        // Arrange
        final responsePayload = {'work_info': 'details'};
        when(mockDioClient.get(
          'shashto-doctors/get-doctor-work-info/',
          queryParameters: anyNamed('queryParameters'),
        )).thenAnswer((_) async => Response(
              data: responsePayload,
              statusCode: 200,
              requestOptions: requestOptions,
            ));

        // Act
        final result = await API.getDoctorWorkInfo({'contact_id': 1});

        // Assert
        expect(result, responsePayload);
      });

      test('failed getDoctorWorkInfo', () async {
        // Arrange
        when(mockDioClient.get(
          'shashto-doctors/get-doctor-work-info/',
          queryParameters: anyNamed('queryParameters'),
        )).thenAnswer((_) async => Response(
              data: "Failed to get work info",
              statusCode: 400,
              requestOptions: requestOptions,
            ));

        // Act & Assert
        expect(() => API.getDoctorWorkInfo({'contact_id': 1}), throwsException);
      });
    });

    group('API submitDoctorReport', () {
      test('successful submitDoctorReport', () async {
        // Arrange
        final responsePayload = {'status': 'report submitted'};
        when(mockDioClient.post(
          'doctor-report-submit/',
          data: anyNamed('data'),
        )).thenAnswer((_) async => Response(
              data: responsePayload,
              statusCode: 200,
              requestOptions: requestOptions,
            ));

        // Act
        final result = await API.submitDoctorReport({'report': 'details'});

        // Assert
        expect(result, responsePayload);
      });

      test('failed submitDoctorReport', () async {
        // Arrange
        when(mockDioClient.post(
          'doctor-report-submit/',
          data: anyNamed('data'),
        )).thenAnswer((_) async => Response(
              data: "Failed to submit report",
              statusCode: 400,
              requestOptions: requestOptions,
            ));

        // Act & Assert
        expect(() => API.submitDoctorReport({'report': 'details'}), throwsException);
      });
    });

    group('API downloadFile', () {
      test('successful downloadFile', () async {
        // Arrange
        final responsePayload = Uint8List.fromList([1, 2, 3, 4]);
        when(mockDioClient.get<List<int>>(
          'fileUrl',
          options: anyNamed('options'),
        )).thenAnswer((_) async => Response(
              data: responsePayload,
              statusCode: 200,
              requestOptions: requestOptions,
            ));

        // Act
        final result = await API.downloadFile('fileUrl');

        // Assert
        expect(result, responsePayload);
      });

      test('failed downloadFile', () async {
        // Arrange
        when(mockDioClient.get<List<int>>(
          'fileUrl',
          options: anyNamed('options'),
        )).thenAnswer((_) async => Response(
              data: null,
              statusCode: 400,
              requestOptions: requestOptions,
            ));

        // Act & Assert
        expect(() => API.downloadFile('fileUrl'), throwsException);
      });
    });

    group('API uploadSignedPrescription', () {
      test('successful uploadSignedPrescription', () async {
        // Arrange
        final responsePayload = {'status': 'prescription updated'};
        when(mockDioClient.put(
          'update-signed-prescription/',
          queryParameters: anyNamed('queryParameters'),
          data: anyNamed('data'),
        )).thenAnswer((_) async => Response(
              data: responsePayload,
              statusCode: 200,
              requestOptions: requestOptions,
            ));

        // Act
        final result = await API.uploadSignedPrescription({'prescriptionId': 1}, {'signature': 'data'});

        // Assert
        expect(result, responsePayload);
      });

      test('failed uploadSignedPrescription', () async {
        // Arrange
        when(mockDioClient.put(
          'update-signed-prescription/',
          queryParameters: anyNamed('queryParameters'),
          data: anyNamed('data'),
        )).thenAnswer((_) async => Response(
              data: "Failed to update prescription",
              statusCode: 400,
              requestOptions: requestOptions,
            ));

        // Act & Assert
        expect(() => API.uploadSignedPrescription({'prescriptionId': 1}, {'signature': 'data'}), throwsException);
      });
    });

    group('API sendMessage', () {
      test('successful sendMessage', () async {
        // Arrange
        final responsePayload = {'status': 'message sent'};
        when(mockDioClient.post(
          'contact-appointment-message/',
          data: anyNamed('data'),
        )).thenAnswer((_) async => Response(
              data: responsePayload,
              statusCode: 200,
              requestOptions: requestOptions,
            ));

        // Act
        final result = await API.sendMessage({'message': 'Hello'});

        // Assert
        expect(result, responsePayload);
      });

      test('failed sendMessage', () async {
        // Arrange
        when(mockDioClient.post(
          'contact-appointment-message/',
          data: anyNamed('data'),
        )).thenAnswer((_) async => Response(
              data: "Failed to send message",
              statusCode: 400,
              requestOptions: requestOptions,
            ));

        // Act & Assert
        expect(() => API.sendMessage({'message': 'Hello'}), throwsException);
      });
    });
group('API deleteDigitalSignature', () {
      test('successful deleteDigitalSignature', () async {
        // Arrange
        final responsePayload = {'status': 'signature deleted'};
        when(mockDioClient.delete(
          'shashto-doctors/digital-sign/',
          queryParameters: anyNamed('queryParameters'),
        )).thenAnswer((_) async => Response(
              data: responsePayload,
              statusCode: 200,
              requestOptions: requestOptions,
            ));

        // Act
        final result = await API.deleteDigitalSignature({'signatureId': 1});

        // Assert
        expect(result, responsePayload);
      });

      test('failed deleteDigitalSignature', () async {
        // Arrange
        when(mockDioClient.delete(
          'shashto-doctors/digital-sign/',
          queryParameters: anyNamed('queryParameters'),
        )).thenAnswer((_) async => Response(
              data: "Failed to delete signature",
              statusCode: 400,
              requestOptions: requestOptions,
            ));

        // Act & Assert
        expect(() => API.deleteDigitalSignature({'signatureId': 1}), throwsException);
      });
    });

    group('API uploadDigitalSignature', () {
      test('successful uploadDigitalSignature', () async {
        // Arrange
        final responsePayload = {'status': 'signature uploaded'};
        when(mockDioClient.put(
          'shashto-doctors/digital-sign/',
          queryParameters: anyNamed('queryParameters'),
          data: anyNamed('data'),
        )).thenAnswer((_) async => Response(
              data: responsePayload,
              statusCode: 200,
              requestOptions: requestOptions,
            ));

        // Act
        final result = await API.uploadDigitalSignature({'signatureId': 1}, {'signature': 'data'});

        // Assert
        expect(result, responsePayload);
      });

      test('failed uploadDigitalSignature', () async {
        // Arrange
        when(mockDioClient.put(
          'shashto-doctors/digital-sign/',
          queryParameters: anyNamed('queryParameters'),
          data: anyNamed('data'),
        )).thenAnswer((_) async => Response(
              data: "Failed to upload signature",
              statusCode: 400,
              requestOptions: requestOptions,
            ));

        // Act & Assert
        expect(() => API.uploadDigitalSignature({'signatureId': 1}, {'signature': 'data'}), throwsException);
      });
    });

    group('API logout', () {
      test('successful logout', () async {
        // Arrange
        final responsePayload = {'status': 'logged out'};
        when(mockDioClient.delete(
          'users/logout',
          data: anyNamed('data'),
        )).thenAnswer((_) async => Response(
              data: responsePayload,
              statusCode: 200,
              requestOptions: requestOptions,
            ));

        // Act
        final result = await API.logout({'userId': 1});

        // Assert
        expect(result, responsePayload);
      });

      test('failed logout', () async {
        // Arrange
        when(mockDioClient.delete(
          'users/logout',
          data: anyNamed('data'),
        )).thenAnswer((_) async => Response(
              data: "Failed to log out",
              statusCode: 400,
              requestOptions: requestOptions,
            ));

        // Act & Assert
        expect(() => API.logout({'userId': 1}), throwsException);
      });
    });

    group('API requestSubmitDoc', () {
      test('successful requestSubmitDoc', () async {
        // Arrange
        final responsePayload = {'status': 'request submitted'};
        when(mockDioClient.post(
          'request-to-update-shared-records',
          queryParameters: anyNamed('queryParameters'),
          data: anyNamed('data'),
        )).thenAnswer((_) async => Response(
              data: responsePayload,
              statusCode: 200,
              requestOptions: requestOptions,
            ));

        // Act
        final result = await API.requestSubmitDoc({'data': 'details'}, 1);

        // Assert
        expect(result, responsePayload);
      });

      test('failed requestSubmitDoc', () async {
        // Arrange
        when(mockDioClient.post(
          'request-to-update-shared-records',
          queryParameters: anyNamed('queryParameters'),
          data: anyNamed('data'),
        )).thenAnswer((_) async => Response(
              data: "Failed to submit request",
              statusCode: 400,
              requestOptions: requestOptions,
            ));

        // Act & Assert
        expect(() => API.requestSubmitDoc({'data': 'details'}, 1), throwsException);
      });
    });
  });
}
