import 'package:drift/drift.dart';

class Devices extends Table {
  @override
  String get tableName => 'devices';

  IntColumn get id => integer().autoIncrement()();

  // Informacion del dispositivo
  TextColumn get name => text().named('name')();
  TextColumn get mac => text().named('mac').withLength(min: 17, max: 17).unique()();
  TextColumn get transport => text().named('transport').withLength(min: 2, max: 10)(); // 'bt', 'ble', 'wifi'

  // Estado
  BoolColumn get favorite => boolean().named('favorite').withDefault(const Constant<bool>(false))();
  DateTimeColumn get lastSeenAt => dateTime().named('last_seen_at').withDefault(currentDateAndTime)();
  
  // Timestamps
  DateTimeColumn get createdAt => dateTime().named('created_at').withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().named('updated_at').withDefault(currentDateAndTime)();
}