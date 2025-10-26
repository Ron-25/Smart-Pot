import 'package:drift/drift.dart';

class AppConfigs extends Table {
  @override
  String get tableName => 'app_configs';

  IntColumn get id => integer().autoIncrement()();
  IntColumn get themeMode => integer().named('theme_mode').withDefault(const Constant<int>(0))();
  IntColumn get controlMode => integer().named('control_mode').withDefault(const Constant<int>(1))();
  IntColumn get moistureThresholdPercent => integer().named('moisture_threshold_percent')();
  IntColumn get tankMinPercent => integer().named('tank_min_percent')();

  // Bomba
  IntColumn get pumpMaxMs => integer().named('pump_max_ms').withDefault(const Constant<int>(30000))();
  IntColumn get pumpCooldownMs => integer().named('pump_cooldown_ms').withDefault(const Constant<int>(600000))();

  // Conectividad
  BoolColumn get autoReconnect => boolean().named('auto_reconnect').withDefault(const Constant<bool>(true))();
  IntColumn get lastDeviceId => integer().named('last_device_id').nullable()();

  // Notificaciones
  BoolColumn get notificationsEnabled => boolean().named('notifications_enabled').withDefault(const Constant<bool>(true))();
  BoolColumn get notifyLowTank => boolean().named('notify_low_tank').withDefault(const Constant<bool>(true))();
  BoolColumn get notifyIrrigationEvents => boolean().named('notify_irrigation_events').withDefault(const Constant<bool>(false))();

  DateTimeColumn get createdAt => dateTime().named('created_at').withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().named('updated_at').withDefault(currentDateAndTime)();
}