import 'package:floor/floor.dart';

@Entity(tableName: 'contacts_attribute')
class ContactsAttribute {
  @primaryKey
  @ColumnInfo(name: 'id')
  final int id;

  @ColumnInfo(name: 'contact_id')
  final int contactId;

  @ColumnInfo(name: 'title')
  final String title;

  @ColumnInfo(name: 'attribute_key')
  final String attributeKey;

  @ColumnInfo(name: 'attribute_value')
  final String attributeValue;

  @ColumnInfo(name: 'order_number')
  final int orderNumber;

  @ColumnInfo(name: 'created_date')
  final String createdDate;

  @ColumnInfo(name: 'created_uid')
  final int createdUid;

  @ColumnInfo(name: 'updated_date')
  final String updatedDate;

  @ColumnInfo(name: 'updated_uid')
  final int updatedUid;

  ContactsAttribute({
    required this.id,
    required this.contactId,
    required this.title,
    required this.attributeKey,
    required this.attributeValue,
    required this.orderNumber,
    required this.createdDate,
    required this.createdUid,
    required this.updatedDate,
    required this.updatedUid,
  });

  @override
  String toString() {
    return 'ContactsAttribute{id: $id, contactId: $contactId, title: $title, attributeKey: $attributeKey, attributeValue: $attributeValue, orderNumber: $orderNumber, createdDate: $createdDate, createdUid: $createdUid, updatedDate: $updatedDate, updatedUid: $updatedUid}';
  }
}
