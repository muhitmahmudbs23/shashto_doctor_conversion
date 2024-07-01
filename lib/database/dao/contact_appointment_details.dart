import 'dart:async';

import 'package:floor/floor.dart';
import '../entity/contact_appointment_details.dart';
import '../non_entity/revera_appointment_details.dart';
import 'base_dao.dart';

@dao
abstract class ContactAppointmentDetailsDao extends BaseDao<ContactAppointmentDetails> {
  @Query(
    "SELECT contact_appointment_details.*, contact_appointments.notes, contact_appointment_details.doctors_note, contact_appointments.appointment_time, contact_appointments.appointment_date, contact_appointments.time_stamp, share.life_style, share.next_of_kin, share.immunization_history, share.medical_conditions, share.sharing_file, share.status, contacts.first_name, contacts.last_name, users.profile_name, users.contact_id, users.revera_id, contacts.profile_photo, revera_doctor_appointment_slots.date, revera_doctor_appointment_slots.time_slot, revera_doctor_appointment_slots.time "
    "FROM contact_appointment_details "
    "INNER JOIN contact_appointments ON contact_appointment_details.appointment_id = contact_appointments.id "
    "INNER JOIN users ON users.contact_id = contact_appointments.contact_id "
    "INNER JOIN contacts ON contacts.id = contact_appointments.contact_id "
    "INNER JOIN revera_doctors ON revera_doctors.id = contact_appointment_details.shashto_doc_id "
    "INNER JOIN revera_doctor_appointment_slots ON revera_doctor_appointment_slots.id = contact_appointment_details.shashto_slot_id "
    "LEFT JOIN share ON share.id = contact_appointment_details.share_file_id "
    "WHERE revera_doctor_appointment_slots.date LIKE :date AND revera_doctors.contact_id = :contactId "
    
    "ORDER BY contact_appointments.id DESC"
  )
  Future<ReveraAppointmentDetails?> getAppointmentsByContactIdAndDate(int contactId, String date);

  @Query(
    "SELECT contact_appointment_details.*, contact_appointments.notes, contact_appointment_details.doctors_note, contact_appointments.appointment_date, contact_appointments.time_stamp, share.life_style, share.next_of_kin, share.immunization_history, share.medical_conditions, share.sharing_file, share.status, contacts.first_name, contacts.last_name, users.profile_name, users.contact_id, users.revera_id, contacts.profile_photo, revera_doctor_appointment_slots.date, revera_doctor_appointment_slots.time_slot, revera_doctor_appointment_slots.time "
    "FROM contact_appointments "
    "INNER JOIN contact_appointment_details ON contact_appointment_details.appointment_id = contact_appointments.id "
    "INNER JOIN users ON users.contact_id = contact_appointments.contact_id "
    "INNER JOIN contacts ON contacts.id = contact_appointments.contact_id "
    "INNER JOIN revera_doctors ON revera_doctors.id = contact_appointment_details.shashto_doc_id "
    "INNER JOIN revera_doctor_appointment_slots ON revera_doctor_appointment_slots.id = contact_appointment_details.shashto_slot_id "
    "LEFT JOIN share ON share.id = contact_appointment_details.share_file_id "
    "WHERE (revera_doctor_appointment_slots.time_stamp >= :from AND revera_doctor_appointment_slots.time_stamp < :to) AND revera_doctors.contact_id = :contactId "
    "AND contact_appointments.appointment_type = 'shashto' "
    "ORDER BY contact_appointments.id DESC"
  )
  Future<List<ReveraAppointmentDetails>> getSchemeDateByContactId(int contactId, int from, int to);

  @Query(
    "SELECT contact_appointment_details.*, contact_appointments.notes, contact_appointment_details.doctors_note, share.sharing_file, share.status, contacts.first_name, contacts.last_name, users.profile_name, users.contact_id, users.revera_id, contacts.profile_photo, revera_doctor_appointment_slots.date, revera_doctor_appointment_slots.time_slot, revera_doctor_appointment_slots.time "
    "FROM contact_appointments "
    "INNER JOIN contact_appointment_details ON contact_appointment_details.appointment_id = contact_appointments.id "
    "INNER JOIN users ON users.contact_id = contact_appointments.contact_id "
    "INNER JOIN contacts ON contacts.id = contact_appointments.contact_id "
    "INNER JOIN revera_doctors ON revera_doctors.id = contact_appointment_details.shashto_doc_id "
    "INNER JOIN revera_doctor_appointment_slots ON revera_doctor_appointment_slots.id = contact_appointment_details.shashto_slot_id "
    "LEFT JOIN share ON share.id = contact_appointment_details.share_file_id "
    "WHERE contact_appointments.id = :appointmentId AND revera_doctors.id = contact_appointment_details.shashto_doc_id"
  )
  Future<ReveraAppointmentDetails?> getBookedAppointmentById(int appointmentId);

  @Query(
    "SELECT contact_appointment_details.*, contact_appointments.notes, contact_appointment_details.doctors_note, share.sharing_file, share.status, revera_doctors.name, revera_doctors.profile_name, revera_doctors.contact_id, contacts.profile_photo, revera_doctor_appointment_slots.date, revera_doctor_appointment_slots.time_slot, revera_doctor_appointment_slots.time "
    "FROM contact_appointments "
    "INNER JOIN contact_appointment_details ON contact_appointment_details.appointment_id = contact_appointments.id "
    "INNER JOIN revera_doctors ON revera_doctors.id = contact_appointment_details.shashto_doc_id "
    "INNER JOIN contacts ON contacts.id = revera_doctors.contact_id "
    "INNER JOIN revera_doctor_appointment_slots ON revera_doctor_appointment_slots.id = contact_appointment_details.shashto_slot_id "
    "LEFT JOIN share ON share.id = contact_appointment_details.share_file_id "
    "WHERE contact_appointments.id = :appointmentId"
  )
  Future<ReveraAppointmentDetails?> getReveraAppointmentById(int appointmentId);

  @Query("SELECT * FROM contact_appointment_details WHERE id = :id")
  Future<ContactAppointmentDetails?> getContactAppointmentDetails(int id);
}
