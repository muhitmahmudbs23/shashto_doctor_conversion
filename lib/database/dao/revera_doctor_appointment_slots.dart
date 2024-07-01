import 'package:floor/floor.dart';
import '../entity/revera_doctor_appointment_slots.dart';
import 'base_dao.dart';

@dao
abstract class ReveraDoctorAppointmentSlotsDao extends BaseDao<ReveraDoctorAppointmentSlots> {
  @Query('SELECT * FROM revera_doctor_appointment_slots WHERE id = :slotId')
  Future<ReveraDoctorAppointmentSlots?> getReveraDoctorAppointmentSlotById(int slotId);
}
