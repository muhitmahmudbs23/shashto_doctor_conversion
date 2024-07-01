import 'package:floor/floor.dart';
import '../entity/contact_appointment.dart';
import 'base_dao.dart';

@dao
abstract class ContactAppointmentsDao extends BaseDao<ContactAppointments> {
  @Query('SELECT * FROM contact_appointments WHERE id = :appointmentId')
  Future<ContactAppointments?> getContactAppointment(int appointmentId);
}
