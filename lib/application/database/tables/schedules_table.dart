import 'package:drift/drift.dart';

class Schedules extends Table {
  @override
  String get tableName => 'schedules';

  IntColumn get id => integer().autoIncrement()();

  // Configuracion del horario
  BoolColumn get enabled => boolean().named('enabled').withDefault(const Constant<bool>(false))();
  TextColumn get name => text().named('name').withLength(min: 1, max: 100).nullable()();
  
  // Dias activos (bitmask: L=1, M=2, X=4, J=8, V=16, S=32, D=64)
  // Ejemplo: 62 = 2+4+8+16+32 = Martes+Miercoles+Jueves+Viernes+Sabado
  IntColumn get daysMask => integer().named('days_mask')(); // Por defecto todos los dias
  
  // Horario
  TextColumn get startTime => text().named('start_time')();
  IntColumn get durationSec => integer().named('duration_sec')();

  // Comportamiento
  BoolColumn get respectMoistureThreshold => boolean().named('respect_moisture_threshold').withDefault(const Constant<bool>(true))();

  // Timestamps
  DateTimeColumn get createdAt => dateTime().named('created_at').withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().named('updated_at').withDefault(currentDateAndTime)();
}