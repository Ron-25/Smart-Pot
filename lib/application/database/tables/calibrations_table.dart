import 'package:drift/drift.dart';

class Calibrations extends Table {
  @override
  String get tableName => 'calibrations';

  IntColumn get id => integer().autoIncrement()();

  // 'soil' o 'tank'
  TextColumn get kind => text().named('kind')();
  IntColumn get rawMin => integer().named('raw_min')();
  IntColumn get rawMax => integer().named('raw_max')();

  // Opcional
  TextColumn get notes => text().named('notes').nullable()();

  // Timestamp
  DateTimeColumn get createdAt =>
      dateTime().named('created_at').withDefault(currentDateAndTime)();
}