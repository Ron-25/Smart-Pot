import 'package:drift/drift.dart';
import 'package:smart_pot/application/database/tables/schedules_table.dart';

class IrrigationEvents extends Table {
  @override
  String get tableName => 'irrigation_events';

  IntColumn get id => integer().autoIncrement()();

  // Fecha y hora del evento
  DateTimeColumn get timestamp => dateTime().named('timestamp')();

  // Tipo de evento (ej: START, STOP, ALERT_LOW_TANK, etc.)
  TextColumn get type => text().named('type').withLength(min: 3, max: 32)();

  // Origen del evento: auto | manual | schedule
  TextColumn get source => text().named('source')();

  // Valores opcionales (%)
  RealColumn get moisture => real().nullable().named('moisture')();

  RealColumn get tankLevel => real().nullable().named('tank_level')();

  // FK al horario (nullable)
  IntColumn get scheduleId => integer().named('schedule_id').nullable().references(Schedules, #id)();

}
