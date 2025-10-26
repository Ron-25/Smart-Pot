// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sqlite_connection.dart';

// ignore_for_file: type=lint
class $AppConfigsTable extends AppConfigs
    with TableInfo<$AppConfigsTable, AppConfig> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AppConfigsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _themeModeMeta =
      const VerificationMeta('themeMode');
  @override
  late final GeneratedColumn<int> themeMode = GeneratedColumn<int>(
      'theme_mode', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant<int>(0));
  static const VerificationMeta _controlModeMeta =
      const VerificationMeta('controlMode');
  @override
  late final GeneratedColumn<int> controlMode = GeneratedColumn<int>(
      'control_mode', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant<int>(1));
  static const VerificationMeta _moistureThresholdPercentMeta =
      const VerificationMeta('moistureThresholdPercent');
  @override
  late final GeneratedColumn<int> moistureThresholdPercent =
      GeneratedColumn<int>('moisture_threshold_percent', aliasedName, false,
          type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _tankMinPercentMeta =
      const VerificationMeta('tankMinPercent');
  @override
  late final GeneratedColumn<int> tankMinPercent = GeneratedColumn<int>(
      'tank_min_percent', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _pumpMaxMsMeta =
      const VerificationMeta('pumpMaxMs');
  @override
  late final GeneratedColumn<int> pumpMaxMs = GeneratedColumn<int>(
      'pump_max_ms', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant<int>(30000));
  static const VerificationMeta _pumpCooldownMsMeta =
      const VerificationMeta('pumpCooldownMs');
  @override
  late final GeneratedColumn<int> pumpCooldownMs = GeneratedColumn<int>(
      'pump_cooldown_ms', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant<int>(600000));
  static const VerificationMeta _autoReconnectMeta =
      const VerificationMeta('autoReconnect');
  @override
  late final GeneratedColumn<bool> autoReconnect = GeneratedColumn<bool>(
      'auto_reconnect', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("auto_reconnect" IN (0, 1))'),
      defaultValue: const Constant<bool>(true));
  static const VerificationMeta _lastDeviceIdMeta =
      const VerificationMeta('lastDeviceId');
  @override
  late final GeneratedColumn<int> lastDeviceId = GeneratedColumn<int>(
      'last_device_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _notificationsEnabledMeta =
      const VerificationMeta('notificationsEnabled');
  @override
  late final GeneratedColumn<bool> notificationsEnabled = GeneratedColumn<bool>(
      'notifications_enabled', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("notifications_enabled" IN (0, 1))'),
      defaultValue: const Constant<bool>(true));
  static const VerificationMeta _notifyLowTankMeta =
      const VerificationMeta('notifyLowTank');
  @override
  late final GeneratedColumn<bool> notifyLowTank = GeneratedColumn<bool>(
      'notify_low_tank', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("notify_low_tank" IN (0, 1))'),
      defaultValue: const Constant<bool>(true));
  static const VerificationMeta _notifyIrrigationEventsMeta =
      const VerificationMeta('notifyIrrigationEvents');
  @override
  late final GeneratedColumn<bool> notifyIrrigationEvents =
      GeneratedColumn<bool>('notify_irrigation_events', aliasedName, false,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("notify_irrigation_events" IN (0, 1))'),
          defaultValue: const Constant<bool>(false));
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        themeMode,
        controlMode,
        moistureThresholdPercent,
        tankMinPercent,
        pumpMaxMs,
        pumpCooldownMs,
        autoReconnect,
        lastDeviceId,
        notificationsEnabled,
        notifyLowTank,
        notifyIrrigationEvents,
        createdAt,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'app_configs';
  @override
  VerificationContext validateIntegrity(Insertable<AppConfig> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('theme_mode')) {
      context.handle(_themeModeMeta,
          themeMode.isAcceptableOrUnknown(data['theme_mode']!, _themeModeMeta));
    }
    if (data.containsKey('control_mode')) {
      context.handle(
          _controlModeMeta,
          controlMode.isAcceptableOrUnknown(
              data['control_mode']!, _controlModeMeta));
    }
    if (data.containsKey('moisture_threshold_percent')) {
      context.handle(
          _moistureThresholdPercentMeta,
          moistureThresholdPercent.isAcceptableOrUnknown(
              data['moisture_threshold_percent']!,
              _moistureThresholdPercentMeta));
    } else if (isInserting) {
      context.missing(_moistureThresholdPercentMeta);
    }
    if (data.containsKey('tank_min_percent')) {
      context.handle(
          _tankMinPercentMeta,
          tankMinPercent.isAcceptableOrUnknown(
              data['tank_min_percent']!, _tankMinPercentMeta));
    } else if (isInserting) {
      context.missing(_tankMinPercentMeta);
    }
    if (data.containsKey('pump_max_ms')) {
      context.handle(
          _pumpMaxMsMeta,
          pumpMaxMs.isAcceptableOrUnknown(
              data['pump_max_ms']!, _pumpMaxMsMeta));
    }
    if (data.containsKey('pump_cooldown_ms')) {
      context.handle(
          _pumpCooldownMsMeta,
          pumpCooldownMs.isAcceptableOrUnknown(
              data['pump_cooldown_ms']!, _pumpCooldownMsMeta));
    }
    if (data.containsKey('auto_reconnect')) {
      context.handle(
          _autoReconnectMeta,
          autoReconnect.isAcceptableOrUnknown(
              data['auto_reconnect']!, _autoReconnectMeta));
    }
    if (data.containsKey('last_device_id')) {
      context.handle(
          _lastDeviceIdMeta,
          lastDeviceId.isAcceptableOrUnknown(
              data['last_device_id']!, _lastDeviceIdMeta));
    }
    if (data.containsKey('notifications_enabled')) {
      context.handle(
          _notificationsEnabledMeta,
          notificationsEnabled.isAcceptableOrUnknown(
              data['notifications_enabled']!, _notificationsEnabledMeta));
    }
    if (data.containsKey('notify_low_tank')) {
      context.handle(
          _notifyLowTankMeta,
          notifyLowTank.isAcceptableOrUnknown(
              data['notify_low_tank']!, _notifyLowTankMeta));
    }
    if (data.containsKey('notify_irrigation_events')) {
      context.handle(
          _notifyIrrigationEventsMeta,
          notifyIrrigationEvents.isAcceptableOrUnknown(
              data['notify_irrigation_events']!, _notifyIrrigationEventsMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AppConfig map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AppConfig(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      themeMode: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}theme_mode'])!,
      controlMode: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}control_mode'])!,
      moistureThresholdPercent: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}moisture_threshold_percent'])!,
      tankMinPercent: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}tank_min_percent'])!,
      pumpMaxMs: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}pump_max_ms'])!,
      pumpCooldownMs: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}pump_cooldown_ms'])!,
      autoReconnect: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}auto_reconnect'])!,
      lastDeviceId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}last_device_id']),
      notificationsEnabled: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}notifications_enabled'])!,
      notifyLowTank: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}notify_low_tank'])!,
      notifyIrrigationEvents: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}notify_irrigation_events'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  $AppConfigsTable createAlias(String alias) {
    return $AppConfigsTable(attachedDatabase, alias);
  }
}

class AppConfig extends DataClass implements Insertable<AppConfig> {
  final int id;
  final int themeMode;
  final int controlMode;
  final int moistureThresholdPercent;
  final int tankMinPercent;
  final int pumpMaxMs;
  final int pumpCooldownMs;
  final bool autoReconnect;
  final int? lastDeviceId;
  final bool notificationsEnabled;
  final bool notifyLowTank;
  final bool notifyIrrigationEvents;
  final DateTime createdAt;
  final DateTime updatedAt;
  const AppConfig(
      {required this.id,
      required this.themeMode,
      required this.controlMode,
      required this.moistureThresholdPercent,
      required this.tankMinPercent,
      required this.pumpMaxMs,
      required this.pumpCooldownMs,
      required this.autoReconnect,
      this.lastDeviceId,
      required this.notificationsEnabled,
      required this.notifyLowTank,
      required this.notifyIrrigationEvents,
      required this.createdAt,
      required this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['theme_mode'] = Variable<int>(themeMode);
    map['control_mode'] = Variable<int>(controlMode);
    map['moisture_threshold_percent'] = Variable<int>(moistureThresholdPercent);
    map['tank_min_percent'] = Variable<int>(tankMinPercent);
    map['pump_max_ms'] = Variable<int>(pumpMaxMs);
    map['pump_cooldown_ms'] = Variable<int>(pumpCooldownMs);
    map['auto_reconnect'] = Variable<bool>(autoReconnect);
    if (!nullToAbsent || lastDeviceId != null) {
      map['last_device_id'] = Variable<int>(lastDeviceId);
    }
    map['notifications_enabled'] = Variable<bool>(notificationsEnabled);
    map['notify_low_tank'] = Variable<bool>(notifyLowTank);
    map['notify_irrigation_events'] = Variable<bool>(notifyIrrigationEvents);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  AppConfigsCompanion toCompanion(bool nullToAbsent) {
    return AppConfigsCompanion(
      id: Value(id),
      themeMode: Value(themeMode),
      controlMode: Value(controlMode),
      moistureThresholdPercent: Value(moistureThresholdPercent),
      tankMinPercent: Value(tankMinPercent),
      pumpMaxMs: Value(pumpMaxMs),
      pumpCooldownMs: Value(pumpCooldownMs),
      autoReconnect: Value(autoReconnect),
      lastDeviceId: lastDeviceId == null && nullToAbsent
          ? const Value.absent()
          : Value(lastDeviceId),
      notificationsEnabled: Value(notificationsEnabled),
      notifyLowTank: Value(notifyLowTank),
      notifyIrrigationEvents: Value(notifyIrrigationEvents),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory AppConfig.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AppConfig(
      id: serializer.fromJson<int>(json['id']),
      themeMode: serializer.fromJson<int>(json['themeMode']),
      controlMode: serializer.fromJson<int>(json['controlMode']),
      moistureThresholdPercent:
          serializer.fromJson<int>(json['moistureThresholdPercent']),
      tankMinPercent: serializer.fromJson<int>(json['tankMinPercent']),
      pumpMaxMs: serializer.fromJson<int>(json['pumpMaxMs']),
      pumpCooldownMs: serializer.fromJson<int>(json['pumpCooldownMs']),
      autoReconnect: serializer.fromJson<bool>(json['autoReconnect']),
      lastDeviceId: serializer.fromJson<int?>(json['lastDeviceId']),
      notificationsEnabled:
          serializer.fromJson<bool>(json['notificationsEnabled']),
      notifyLowTank: serializer.fromJson<bool>(json['notifyLowTank']),
      notifyIrrigationEvents:
          serializer.fromJson<bool>(json['notifyIrrigationEvents']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'themeMode': serializer.toJson<int>(themeMode),
      'controlMode': serializer.toJson<int>(controlMode),
      'moistureThresholdPercent':
          serializer.toJson<int>(moistureThresholdPercent),
      'tankMinPercent': serializer.toJson<int>(tankMinPercent),
      'pumpMaxMs': serializer.toJson<int>(pumpMaxMs),
      'pumpCooldownMs': serializer.toJson<int>(pumpCooldownMs),
      'autoReconnect': serializer.toJson<bool>(autoReconnect),
      'lastDeviceId': serializer.toJson<int?>(lastDeviceId),
      'notificationsEnabled': serializer.toJson<bool>(notificationsEnabled),
      'notifyLowTank': serializer.toJson<bool>(notifyLowTank),
      'notifyIrrigationEvents': serializer.toJson<bool>(notifyIrrigationEvents),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  AppConfig copyWith(
          {int? id,
          int? themeMode,
          int? controlMode,
          int? moistureThresholdPercent,
          int? tankMinPercent,
          int? pumpMaxMs,
          int? pumpCooldownMs,
          bool? autoReconnect,
          Value<int?> lastDeviceId = const Value.absent(),
          bool? notificationsEnabled,
          bool? notifyLowTank,
          bool? notifyIrrigationEvents,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      AppConfig(
        id: id ?? this.id,
        themeMode: themeMode ?? this.themeMode,
        controlMode: controlMode ?? this.controlMode,
        moistureThresholdPercent:
            moistureThresholdPercent ?? this.moistureThresholdPercent,
        tankMinPercent: tankMinPercent ?? this.tankMinPercent,
        pumpMaxMs: pumpMaxMs ?? this.pumpMaxMs,
        pumpCooldownMs: pumpCooldownMs ?? this.pumpCooldownMs,
        autoReconnect: autoReconnect ?? this.autoReconnect,
        lastDeviceId:
            lastDeviceId.present ? lastDeviceId.value : this.lastDeviceId,
        notificationsEnabled: notificationsEnabled ?? this.notificationsEnabled,
        notifyLowTank: notifyLowTank ?? this.notifyLowTank,
        notifyIrrigationEvents:
            notifyIrrigationEvents ?? this.notifyIrrigationEvents,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  AppConfig copyWithCompanion(AppConfigsCompanion data) {
    return AppConfig(
      id: data.id.present ? data.id.value : this.id,
      themeMode: data.themeMode.present ? data.themeMode.value : this.themeMode,
      controlMode:
          data.controlMode.present ? data.controlMode.value : this.controlMode,
      moistureThresholdPercent: data.moistureThresholdPercent.present
          ? data.moistureThresholdPercent.value
          : this.moistureThresholdPercent,
      tankMinPercent: data.tankMinPercent.present
          ? data.tankMinPercent.value
          : this.tankMinPercent,
      pumpMaxMs: data.pumpMaxMs.present ? data.pumpMaxMs.value : this.pumpMaxMs,
      pumpCooldownMs: data.pumpCooldownMs.present
          ? data.pumpCooldownMs.value
          : this.pumpCooldownMs,
      autoReconnect: data.autoReconnect.present
          ? data.autoReconnect.value
          : this.autoReconnect,
      lastDeviceId: data.lastDeviceId.present
          ? data.lastDeviceId.value
          : this.lastDeviceId,
      notificationsEnabled: data.notificationsEnabled.present
          ? data.notificationsEnabled.value
          : this.notificationsEnabled,
      notifyLowTank: data.notifyLowTank.present
          ? data.notifyLowTank.value
          : this.notifyLowTank,
      notifyIrrigationEvents: data.notifyIrrigationEvents.present
          ? data.notifyIrrigationEvents.value
          : this.notifyIrrigationEvents,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AppConfig(')
          ..write('id: $id, ')
          ..write('themeMode: $themeMode, ')
          ..write('controlMode: $controlMode, ')
          ..write('moistureThresholdPercent: $moistureThresholdPercent, ')
          ..write('tankMinPercent: $tankMinPercent, ')
          ..write('pumpMaxMs: $pumpMaxMs, ')
          ..write('pumpCooldownMs: $pumpCooldownMs, ')
          ..write('autoReconnect: $autoReconnect, ')
          ..write('lastDeviceId: $lastDeviceId, ')
          ..write('notificationsEnabled: $notificationsEnabled, ')
          ..write('notifyLowTank: $notifyLowTank, ')
          ..write('notifyIrrigationEvents: $notifyIrrigationEvents, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      themeMode,
      controlMode,
      moistureThresholdPercent,
      tankMinPercent,
      pumpMaxMs,
      pumpCooldownMs,
      autoReconnect,
      lastDeviceId,
      notificationsEnabled,
      notifyLowTank,
      notifyIrrigationEvents,
      createdAt,
      updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppConfig &&
          other.id == this.id &&
          other.themeMode == this.themeMode &&
          other.controlMode == this.controlMode &&
          other.moistureThresholdPercent == this.moistureThresholdPercent &&
          other.tankMinPercent == this.tankMinPercent &&
          other.pumpMaxMs == this.pumpMaxMs &&
          other.pumpCooldownMs == this.pumpCooldownMs &&
          other.autoReconnect == this.autoReconnect &&
          other.lastDeviceId == this.lastDeviceId &&
          other.notificationsEnabled == this.notificationsEnabled &&
          other.notifyLowTank == this.notifyLowTank &&
          other.notifyIrrigationEvents == this.notifyIrrigationEvents &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class AppConfigsCompanion extends UpdateCompanion<AppConfig> {
  final Value<int> id;
  final Value<int> themeMode;
  final Value<int> controlMode;
  final Value<int> moistureThresholdPercent;
  final Value<int> tankMinPercent;
  final Value<int> pumpMaxMs;
  final Value<int> pumpCooldownMs;
  final Value<bool> autoReconnect;
  final Value<int?> lastDeviceId;
  final Value<bool> notificationsEnabled;
  final Value<bool> notifyLowTank;
  final Value<bool> notifyIrrigationEvents;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const AppConfigsCompanion({
    this.id = const Value.absent(),
    this.themeMode = const Value.absent(),
    this.controlMode = const Value.absent(),
    this.moistureThresholdPercent = const Value.absent(),
    this.tankMinPercent = const Value.absent(),
    this.pumpMaxMs = const Value.absent(),
    this.pumpCooldownMs = const Value.absent(),
    this.autoReconnect = const Value.absent(),
    this.lastDeviceId = const Value.absent(),
    this.notificationsEnabled = const Value.absent(),
    this.notifyLowTank = const Value.absent(),
    this.notifyIrrigationEvents = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  AppConfigsCompanion.insert({
    this.id = const Value.absent(),
    this.themeMode = const Value.absent(),
    this.controlMode = const Value.absent(),
    required int moistureThresholdPercent,
    required int tankMinPercent,
    this.pumpMaxMs = const Value.absent(),
    this.pumpCooldownMs = const Value.absent(),
    this.autoReconnect = const Value.absent(),
    this.lastDeviceId = const Value.absent(),
    this.notificationsEnabled = const Value.absent(),
    this.notifyLowTank = const Value.absent(),
    this.notifyIrrigationEvents = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  })  : moistureThresholdPercent = Value(moistureThresholdPercent),
        tankMinPercent = Value(tankMinPercent);
  static Insertable<AppConfig> custom({
    Expression<int>? id,
    Expression<int>? themeMode,
    Expression<int>? controlMode,
    Expression<int>? moistureThresholdPercent,
    Expression<int>? tankMinPercent,
    Expression<int>? pumpMaxMs,
    Expression<int>? pumpCooldownMs,
    Expression<bool>? autoReconnect,
    Expression<int>? lastDeviceId,
    Expression<bool>? notificationsEnabled,
    Expression<bool>? notifyLowTank,
    Expression<bool>? notifyIrrigationEvents,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (themeMode != null) 'theme_mode': themeMode,
      if (controlMode != null) 'control_mode': controlMode,
      if (moistureThresholdPercent != null)
        'moisture_threshold_percent': moistureThresholdPercent,
      if (tankMinPercent != null) 'tank_min_percent': tankMinPercent,
      if (pumpMaxMs != null) 'pump_max_ms': pumpMaxMs,
      if (pumpCooldownMs != null) 'pump_cooldown_ms': pumpCooldownMs,
      if (autoReconnect != null) 'auto_reconnect': autoReconnect,
      if (lastDeviceId != null) 'last_device_id': lastDeviceId,
      if (notificationsEnabled != null)
        'notifications_enabled': notificationsEnabled,
      if (notifyLowTank != null) 'notify_low_tank': notifyLowTank,
      if (notifyIrrigationEvents != null)
        'notify_irrigation_events': notifyIrrigationEvents,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  AppConfigsCompanion copyWith(
      {Value<int>? id,
      Value<int>? themeMode,
      Value<int>? controlMode,
      Value<int>? moistureThresholdPercent,
      Value<int>? tankMinPercent,
      Value<int>? pumpMaxMs,
      Value<int>? pumpCooldownMs,
      Value<bool>? autoReconnect,
      Value<int?>? lastDeviceId,
      Value<bool>? notificationsEnabled,
      Value<bool>? notifyLowTank,
      Value<bool>? notifyIrrigationEvents,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt}) {
    return AppConfigsCompanion(
      id: id ?? this.id,
      themeMode: themeMode ?? this.themeMode,
      controlMode: controlMode ?? this.controlMode,
      moistureThresholdPercent:
          moistureThresholdPercent ?? this.moistureThresholdPercent,
      tankMinPercent: tankMinPercent ?? this.tankMinPercent,
      pumpMaxMs: pumpMaxMs ?? this.pumpMaxMs,
      pumpCooldownMs: pumpCooldownMs ?? this.pumpCooldownMs,
      autoReconnect: autoReconnect ?? this.autoReconnect,
      lastDeviceId: lastDeviceId ?? this.lastDeviceId,
      notificationsEnabled: notificationsEnabled ?? this.notificationsEnabled,
      notifyLowTank: notifyLowTank ?? this.notifyLowTank,
      notifyIrrigationEvents:
          notifyIrrigationEvents ?? this.notifyIrrigationEvents,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (themeMode.present) {
      map['theme_mode'] = Variable<int>(themeMode.value);
    }
    if (controlMode.present) {
      map['control_mode'] = Variable<int>(controlMode.value);
    }
    if (moistureThresholdPercent.present) {
      map['moisture_threshold_percent'] =
          Variable<int>(moistureThresholdPercent.value);
    }
    if (tankMinPercent.present) {
      map['tank_min_percent'] = Variable<int>(tankMinPercent.value);
    }
    if (pumpMaxMs.present) {
      map['pump_max_ms'] = Variable<int>(pumpMaxMs.value);
    }
    if (pumpCooldownMs.present) {
      map['pump_cooldown_ms'] = Variable<int>(pumpCooldownMs.value);
    }
    if (autoReconnect.present) {
      map['auto_reconnect'] = Variable<bool>(autoReconnect.value);
    }
    if (lastDeviceId.present) {
      map['last_device_id'] = Variable<int>(lastDeviceId.value);
    }
    if (notificationsEnabled.present) {
      map['notifications_enabled'] = Variable<bool>(notificationsEnabled.value);
    }
    if (notifyLowTank.present) {
      map['notify_low_tank'] = Variable<bool>(notifyLowTank.value);
    }
    if (notifyIrrigationEvents.present) {
      map['notify_irrigation_events'] =
          Variable<bool>(notifyIrrigationEvents.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AppConfigsCompanion(')
          ..write('id: $id, ')
          ..write('themeMode: $themeMode, ')
          ..write('controlMode: $controlMode, ')
          ..write('moistureThresholdPercent: $moistureThresholdPercent, ')
          ..write('tankMinPercent: $tankMinPercent, ')
          ..write('pumpMaxMs: $pumpMaxMs, ')
          ..write('pumpCooldownMs: $pumpCooldownMs, ')
          ..write('autoReconnect: $autoReconnect, ')
          ..write('lastDeviceId: $lastDeviceId, ')
          ..write('notificationsEnabled: $notificationsEnabled, ')
          ..write('notifyLowTank: $notifyLowTank, ')
          ..write('notifyIrrigationEvents: $notifyIrrigationEvents, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $DevicesTable extends Devices with TableInfo<$DevicesTable, Device> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DevicesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _macMeta = const VerificationMeta('mac');
  @override
  late final GeneratedColumn<String> mac = GeneratedColumn<String>(
      'mac', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 17, maxTextLength: 17),
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _transportMeta =
      const VerificationMeta('transport');
  @override
  late final GeneratedColumn<String> transport = GeneratedColumn<String>(
      'transport', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 2, maxTextLength: 10),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _favoriteMeta =
      const VerificationMeta('favorite');
  @override
  late final GeneratedColumn<bool> favorite = GeneratedColumn<bool>(
      'favorite', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("favorite" IN (0, 1))'),
      defaultValue: const Constant<bool>(false));
  static const VerificationMeta _lastSeenAtMeta =
      const VerificationMeta('lastSeenAt');
  @override
  late final GeneratedColumn<DateTime> lastSeenAt = GeneratedColumn<DateTime>(
      'last_seen_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, mac, transport, favorite, lastSeenAt, createdAt, updatedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'devices';
  @override
  VerificationContext validateIntegrity(Insertable<Device> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('mac')) {
      context.handle(
          _macMeta, mac.isAcceptableOrUnknown(data['mac']!, _macMeta));
    } else if (isInserting) {
      context.missing(_macMeta);
    }
    if (data.containsKey('transport')) {
      context.handle(_transportMeta,
          transport.isAcceptableOrUnknown(data['transport']!, _transportMeta));
    } else if (isInserting) {
      context.missing(_transportMeta);
    }
    if (data.containsKey('favorite')) {
      context.handle(_favoriteMeta,
          favorite.isAcceptableOrUnknown(data['favorite']!, _favoriteMeta));
    }
    if (data.containsKey('last_seen_at')) {
      context.handle(
          _lastSeenAtMeta,
          lastSeenAt.isAcceptableOrUnknown(
              data['last_seen_at']!, _lastSeenAtMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Device map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Device(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      mac: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}mac'])!,
      transport: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}transport'])!,
      favorite: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}favorite'])!,
      lastSeenAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}last_seen_at'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  $DevicesTable createAlias(String alias) {
    return $DevicesTable(attachedDatabase, alias);
  }
}

class Device extends DataClass implements Insertable<Device> {
  final int id;
  final String name;
  final String mac;
  final String transport;
  final bool favorite;
  final DateTime lastSeenAt;
  final DateTime createdAt;
  final DateTime updatedAt;
  const Device(
      {required this.id,
      required this.name,
      required this.mac,
      required this.transport,
      required this.favorite,
      required this.lastSeenAt,
      required this.createdAt,
      required this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['mac'] = Variable<String>(mac);
    map['transport'] = Variable<String>(transport);
    map['favorite'] = Variable<bool>(favorite);
    map['last_seen_at'] = Variable<DateTime>(lastSeenAt);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  DevicesCompanion toCompanion(bool nullToAbsent) {
    return DevicesCompanion(
      id: Value(id),
      name: Value(name),
      mac: Value(mac),
      transport: Value(transport),
      favorite: Value(favorite),
      lastSeenAt: Value(lastSeenAt),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory Device.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Device(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      mac: serializer.fromJson<String>(json['mac']),
      transport: serializer.fromJson<String>(json['transport']),
      favorite: serializer.fromJson<bool>(json['favorite']),
      lastSeenAt: serializer.fromJson<DateTime>(json['lastSeenAt']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'mac': serializer.toJson<String>(mac),
      'transport': serializer.toJson<String>(transport),
      'favorite': serializer.toJson<bool>(favorite),
      'lastSeenAt': serializer.toJson<DateTime>(lastSeenAt),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  Device copyWith(
          {int? id,
          String? name,
          String? mac,
          String? transport,
          bool? favorite,
          DateTime? lastSeenAt,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      Device(
        id: id ?? this.id,
        name: name ?? this.name,
        mac: mac ?? this.mac,
        transport: transport ?? this.transport,
        favorite: favorite ?? this.favorite,
        lastSeenAt: lastSeenAt ?? this.lastSeenAt,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  Device copyWithCompanion(DevicesCompanion data) {
    return Device(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      mac: data.mac.present ? data.mac.value : this.mac,
      transport: data.transport.present ? data.transport.value : this.transport,
      favorite: data.favorite.present ? data.favorite.value : this.favorite,
      lastSeenAt:
          data.lastSeenAt.present ? data.lastSeenAt.value : this.lastSeenAt,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Device(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('mac: $mac, ')
          ..write('transport: $transport, ')
          ..write('favorite: $favorite, ')
          ..write('lastSeenAt: $lastSeenAt, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, name, mac, transport, favorite, lastSeenAt, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Device &&
          other.id == this.id &&
          other.name == this.name &&
          other.mac == this.mac &&
          other.transport == this.transport &&
          other.favorite == this.favorite &&
          other.lastSeenAt == this.lastSeenAt &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class DevicesCompanion extends UpdateCompanion<Device> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> mac;
  final Value<String> transport;
  final Value<bool> favorite;
  final Value<DateTime> lastSeenAt;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const DevicesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.mac = const Value.absent(),
    this.transport = const Value.absent(),
    this.favorite = const Value.absent(),
    this.lastSeenAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  DevicesCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String mac,
    required String transport,
    this.favorite = const Value.absent(),
    this.lastSeenAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  })  : name = Value(name),
        mac = Value(mac),
        transport = Value(transport);
  static Insertable<Device> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? mac,
    Expression<String>? transport,
    Expression<bool>? favorite,
    Expression<DateTime>? lastSeenAt,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (mac != null) 'mac': mac,
      if (transport != null) 'transport': transport,
      if (favorite != null) 'favorite': favorite,
      if (lastSeenAt != null) 'last_seen_at': lastSeenAt,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  DevicesCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? mac,
      Value<String>? transport,
      Value<bool>? favorite,
      Value<DateTime>? lastSeenAt,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt}) {
    return DevicesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      mac: mac ?? this.mac,
      transport: transport ?? this.transport,
      favorite: favorite ?? this.favorite,
      lastSeenAt: lastSeenAt ?? this.lastSeenAt,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (mac.present) {
      map['mac'] = Variable<String>(mac.value);
    }
    if (transport.present) {
      map['transport'] = Variable<String>(transport.value);
    }
    if (favorite.present) {
      map['favorite'] = Variable<bool>(favorite.value);
    }
    if (lastSeenAt.present) {
      map['last_seen_at'] = Variable<DateTime>(lastSeenAt.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DevicesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('mac: $mac, ')
          ..write('transport: $transport, ')
          ..write('favorite: $favorite, ')
          ..write('lastSeenAt: $lastSeenAt, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $SchedulesTable extends Schedules
    with TableInfo<$SchedulesTable, Schedule> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SchedulesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _enabledMeta =
      const VerificationMeta('enabled');
  @override
  late final GeneratedColumn<bool> enabled = GeneratedColumn<bool>(
      'enabled', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("enabled" IN (0, 1))'),
      defaultValue: const Constant<bool>(false));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  static const VerificationMeta _daysMaskMeta =
      const VerificationMeta('daysMask');
  @override
  late final GeneratedColumn<int> daysMask = GeneratedColumn<int>(
      'days_mask', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _startTimeMeta =
      const VerificationMeta('startTime');
  @override
  late final GeneratedColumn<String> startTime = GeneratedColumn<String>(
      'start_time', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _durationSecMeta =
      const VerificationMeta('durationSec');
  @override
  late final GeneratedColumn<int> durationSec = GeneratedColumn<int>(
      'duration_sec', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _respectMoistureThresholdMeta =
      const VerificationMeta('respectMoistureThreshold');
  @override
  late final GeneratedColumn<bool> respectMoistureThreshold =
      GeneratedColumn<bool>(
          'respect_moisture_threshold', aliasedName, false,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("respect_moisture_threshold" IN (0, 1))'),
          defaultValue: const Constant<bool>(true));
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        enabled,
        name,
        daysMask,
        startTime,
        durationSec,
        respectMoistureThreshold,
        createdAt,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'schedules';
  @override
  VerificationContext validateIntegrity(Insertable<Schedule> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('enabled')) {
      context.handle(_enabledMeta,
          enabled.isAcceptableOrUnknown(data['enabled']!, _enabledMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('days_mask')) {
      context.handle(_daysMaskMeta,
          daysMask.isAcceptableOrUnknown(data['days_mask']!, _daysMaskMeta));
    } else if (isInserting) {
      context.missing(_daysMaskMeta);
    }
    if (data.containsKey('start_time')) {
      context.handle(_startTimeMeta,
          startTime.isAcceptableOrUnknown(data['start_time']!, _startTimeMeta));
    } else if (isInserting) {
      context.missing(_startTimeMeta);
    }
    if (data.containsKey('duration_sec')) {
      context.handle(
          _durationSecMeta,
          durationSec.isAcceptableOrUnknown(
              data['duration_sec']!, _durationSecMeta));
    } else if (isInserting) {
      context.missing(_durationSecMeta);
    }
    if (data.containsKey('respect_moisture_threshold')) {
      context.handle(
          _respectMoistureThresholdMeta,
          respectMoistureThreshold.isAcceptableOrUnknown(
              data['respect_moisture_threshold']!,
              _respectMoistureThresholdMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Schedule map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Schedule(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      enabled: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}enabled'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      daysMask: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}days_mask'])!,
      startTime: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}start_time'])!,
      durationSec: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}duration_sec'])!,
      respectMoistureThreshold: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}respect_moisture_threshold'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  $SchedulesTable createAlias(String alias) {
    return $SchedulesTable(attachedDatabase, alias);
  }
}

class Schedule extends DataClass implements Insertable<Schedule> {
  final int id;
  final bool enabled;
  final String? name;
  final int daysMask;
  final String startTime;
  final int durationSec;
  final bool respectMoistureThreshold;
  final DateTime createdAt;
  final DateTime updatedAt;
  const Schedule(
      {required this.id,
      required this.enabled,
      this.name,
      required this.daysMask,
      required this.startTime,
      required this.durationSec,
      required this.respectMoistureThreshold,
      required this.createdAt,
      required this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['enabled'] = Variable<bool>(enabled);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    map['days_mask'] = Variable<int>(daysMask);
    map['start_time'] = Variable<String>(startTime);
    map['duration_sec'] = Variable<int>(durationSec);
    map['respect_moisture_threshold'] =
        Variable<bool>(respectMoistureThreshold);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  SchedulesCompanion toCompanion(bool nullToAbsent) {
    return SchedulesCompanion(
      id: Value(id),
      enabled: Value(enabled),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      daysMask: Value(daysMask),
      startTime: Value(startTime),
      durationSec: Value(durationSec),
      respectMoistureThreshold: Value(respectMoistureThreshold),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory Schedule.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Schedule(
      id: serializer.fromJson<int>(json['id']),
      enabled: serializer.fromJson<bool>(json['enabled']),
      name: serializer.fromJson<String?>(json['name']),
      daysMask: serializer.fromJson<int>(json['daysMask']),
      startTime: serializer.fromJson<String>(json['startTime']),
      durationSec: serializer.fromJson<int>(json['durationSec']),
      respectMoistureThreshold:
          serializer.fromJson<bool>(json['respectMoistureThreshold']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'enabled': serializer.toJson<bool>(enabled),
      'name': serializer.toJson<String?>(name),
      'daysMask': serializer.toJson<int>(daysMask),
      'startTime': serializer.toJson<String>(startTime),
      'durationSec': serializer.toJson<int>(durationSec),
      'respectMoistureThreshold':
          serializer.toJson<bool>(respectMoistureThreshold),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  Schedule copyWith(
          {int? id,
          bool? enabled,
          Value<String?> name = const Value.absent(),
          int? daysMask,
          String? startTime,
          int? durationSec,
          bool? respectMoistureThreshold,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      Schedule(
        id: id ?? this.id,
        enabled: enabled ?? this.enabled,
        name: name.present ? name.value : this.name,
        daysMask: daysMask ?? this.daysMask,
        startTime: startTime ?? this.startTime,
        durationSec: durationSec ?? this.durationSec,
        respectMoistureThreshold:
            respectMoistureThreshold ?? this.respectMoistureThreshold,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  Schedule copyWithCompanion(SchedulesCompanion data) {
    return Schedule(
      id: data.id.present ? data.id.value : this.id,
      enabled: data.enabled.present ? data.enabled.value : this.enabled,
      name: data.name.present ? data.name.value : this.name,
      daysMask: data.daysMask.present ? data.daysMask.value : this.daysMask,
      startTime: data.startTime.present ? data.startTime.value : this.startTime,
      durationSec:
          data.durationSec.present ? data.durationSec.value : this.durationSec,
      respectMoistureThreshold: data.respectMoistureThreshold.present
          ? data.respectMoistureThreshold.value
          : this.respectMoistureThreshold,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Schedule(')
          ..write('id: $id, ')
          ..write('enabled: $enabled, ')
          ..write('name: $name, ')
          ..write('daysMask: $daysMask, ')
          ..write('startTime: $startTime, ')
          ..write('durationSec: $durationSec, ')
          ..write('respectMoistureThreshold: $respectMoistureThreshold, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, enabled, name, daysMask, startTime,
      durationSec, respectMoistureThreshold, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Schedule &&
          other.id == this.id &&
          other.enabled == this.enabled &&
          other.name == this.name &&
          other.daysMask == this.daysMask &&
          other.startTime == this.startTime &&
          other.durationSec == this.durationSec &&
          other.respectMoistureThreshold == this.respectMoistureThreshold &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class SchedulesCompanion extends UpdateCompanion<Schedule> {
  final Value<int> id;
  final Value<bool> enabled;
  final Value<String?> name;
  final Value<int> daysMask;
  final Value<String> startTime;
  final Value<int> durationSec;
  final Value<bool> respectMoistureThreshold;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const SchedulesCompanion({
    this.id = const Value.absent(),
    this.enabled = const Value.absent(),
    this.name = const Value.absent(),
    this.daysMask = const Value.absent(),
    this.startTime = const Value.absent(),
    this.durationSec = const Value.absent(),
    this.respectMoistureThreshold = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  SchedulesCompanion.insert({
    this.id = const Value.absent(),
    this.enabled = const Value.absent(),
    this.name = const Value.absent(),
    required int daysMask,
    required String startTime,
    required int durationSec,
    this.respectMoistureThreshold = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  })  : daysMask = Value(daysMask),
        startTime = Value(startTime),
        durationSec = Value(durationSec);
  static Insertable<Schedule> custom({
    Expression<int>? id,
    Expression<bool>? enabled,
    Expression<String>? name,
    Expression<int>? daysMask,
    Expression<String>? startTime,
    Expression<int>? durationSec,
    Expression<bool>? respectMoistureThreshold,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (enabled != null) 'enabled': enabled,
      if (name != null) 'name': name,
      if (daysMask != null) 'days_mask': daysMask,
      if (startTime != null) 'start_time': startTime,
      if (durationSec != null) 'duration_sec': durationSec,
      if (respectMoistureThreshold != null)
        'respect_moisture_threshold': respectMoistureThreshold,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  SchedulesCompanion copyWith(
      {Value<int>? id,
      Value<bool>? enabled,
      Value<String?>? name,
      Value<int>? daysMask,
      Value<String>? startTime,
      Value<int>? durationSec,
      Value<bool>? respectMoistureThreshold,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt}) {
    return SchedulesCompanion(
      id: id ?? this.id,
      enabled: enabled ?? this.enabled,
      name: name ?? this.name,
      daysMask: daysMask ?? this.daysMask,
      startTime: startTime ?? this.startTime,
      durationSec: durationSec ?? this.durationSec,
      respectMoistureThreshold:
          respectMoistureThreshold ?? this.respectMoistureThreshold,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (enabled.present) {
      map['enabled'] = Variable<bool>(enabled.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (daysMask.present) {
      map['days_mask'] = Variable<int>(daysMask.value);
    }
    if (startTime.present) {
      map['start_time'] = Variable<String>(startTime.value);
    }
    if (durationSec.present) {
      map['duration_sec'] = Variable<int>(durationSec.value);
    }
    if (respectMoistureThreshold.present) {
      map['respect_moisture_threshold'] =
          Variable<bool>(respectMoistureThreshold.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SchedulesCompanion(')
          ..write('id: $id, ')
          ..write('enabled: $enabled, ')
          ..write('name: $name, ')
          ..write('daysMask: $daysMask, ')
          ..write('startTime: $startTime, ')
          ..write('durationSec: $durationSec, ')
          ..write('respectMoistureThreshold: $respectMoistureThreshold, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $CalibrationsTable extends Calibrations
    with TableInfo<$CalibrationsTable, Calibration> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CalibrationsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _kindMeta = const VerificationMeta('kind');
  @override
  late final GeneratedColumn<String> kind = GeneratedColumn<String>(
      'kind', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _rawMinMeta = const VerificationMeta('rawMin');
  @override
  late final GeneratedColumn<int> rawMin = GeneratedColumn<int>(
      'raw_min', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _rawMaxMeta = const VerificationMeta('rawMax');
  @override
  late final GeneratedColumn<int> rawMax = GeneratedColumn<int>(
      'raw_max', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
      'notes', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns =>
      [id, kind, rawMin, rawMax, notes, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'calibrations';
  @override
  VerificationContext validateIntegrity(Insertable<Calibration> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('kind')) {
      context.handle(
          _kindMeta, kind.isAcceptableOrUnknown(data['kind']!, _kindMeta));
    } else if (isInserting) {
      context.missing(_kindMeta);
    }
    if (data.containsKey('raw_min')) {
      context.handle(_rawMinMeta,
          rawMin.isAcceptableOrUnknown(data['raw_min']!, _rawMinMeta));
    } else if (isInserting) {
      context.missing(_rawMinMeta);
    }
    if (data.containsKey('raw_max')) {
      context.handle(_rawMaxMeta,
          rawMax.isAcceptableOrUnknown(data['raw_max']!, _rawMaxMeta));
    } else if (isInserting) {
      context.missing(_rawMaxMeta);
    }
    if (data.containsKey('notes')) {
      context.handle(
          _notesMeta, notes.isAcceptableOrUnknown(data['notes']!, _notesMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Calibration map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Calibration(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      kind: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}kind'])!,
      rawMin: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}raw_min'])!,
      rawMax: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}raw_max'])!,
      notes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notes']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $CalibrationsTable createAlias(String alias) {
    return $CalibrationsTable(attachedDatabase, alias);
  }
}

class Calibration extends DataClass implements Insertable<Calibration> {
  final int id;
  final String kind;
  final int rawMin;
  final int rawMax;
  final String? notes;
  final DateTime createdAt;
  const Calibration(
      {required this.id,
      required this.kind,
      required this.rawMin,
      required this.rawMax,
      this.notes,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['kind'] = Variable<String>(kind);
    map['raw_min'] = Variable<int>(rawMin);
    map['raw_max'] = Variable<int>(rawMax);
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  CalibrationsCompanion toCompanion(bool nullToAbsent) {
    return CalibrationsCompanion(
      id: Value(id),
      kind: Value(kind),
      rawMin: Value(rawMin),
      rawMax: Value(rawMax),
      notes:
          notes == null && nullToAbsent ? const Value.absent() : Value(notes),
      createdAt: Value(createdAt),
    );
  }

  factory Calibration.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Calibration(
      id: serializer.fromJson<int>(json['id']),
      kind: serializer.fromJson<String>(json['kind']),
      rawMin: serializer.fromJson<int>(json['rawMin']),
      rawMax: serializer.fromJson<int>(json['rawMax']),
      notes: serializer.fromJson<String?>(json['notes']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'kind': serializer.toJson<String>(kind),
      'rawMin': serializer.toJson<int>(rawMin),
      'rawMax': serializer.toJson<int>(rawMax),
      'notes': serializer.toJson<String?>(notes),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  Calibration copyWith(
          {int? id,
          String? kind,
          int? rawMin,
          int? rawMax,
          Value<String?> notes = const Value.absent(),
          DateTime? createdAt}) =>
      Calibration(
        id: id ?? this.id,
        kind: kind ?? this.kind,
        rawMin: rawMin ?? this.rawMin,
        rawMax: rawMax ?? this.rawMax,
        notes: notes.present ? notes.value : this.notes,
        createdAt: createdAt ?? this.createdAt,
      );
  Calibration copyWithCompanion(CalibrationsCompanion data) {
    return Calibration(
      id: data.id.present ? data.id.value : this.id,
      kind: data.kind.present ? data.kind.value : this.kind,
      rawMin: data.rawMin.present ? data.rawMin.value : this.rawMin,
      rawMax: data.rawMax.present ? data.rawMax.value : this.rawMax,
      notes: data.notes.present ? data.notes.value : this.notes,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Calibration(')
          ..write('id: $id, ')
          ..write('kind: $kind, ')
          ..write('rawMin: $rawMin, ')
          ..write('rawMax: $rawMax, ')
          ..write('notes: $notes, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, kind, rawMin, rawMax, notes, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Calibration &&
          other.id == this.id &&
          other.kind == this.kind &&
          other.rawMin == this.rawMin &&
          other.rawMax == this.rawMax &&
          other.notes == this.notes &&
          other.createdAt == this.createdAt);
}

class CalibrationsCompanion extends UpdateCompanion<Calibration> {
  final Value<int> id;
  final Value<String> kind;
  final Value<int> rawMin;
  final Value<int> rawMax;
  final Value<String?> notes;
  final Value<DateTime> createdAt;
  const CalibrationsCompanion({
    this.id = const Value.absent(),
    this.kind = const Value.absent(),
    this.rawMin = const Value.absent(),
    this.rawMax = const Value.absent(),
    this.notes = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  CalibrationsCompanion.insert({
    this.id = const Value.absent(),
    required String kind,
    required int rawMin,
    required int rawMax,
    this.notes = const Value.absent(),
    this.createdAt = const Value.absent(),
  })  : kind = Value(kind),
        rawMin = Value(rawMin),
        rawMax = Value(rawMax);
  static Insertable<Calibration> custom({
    Expression<int>? id,
    Expression<String>? kind,
    Expression<int>? rawMin,
    Expression<int>? rawMax,
    Expression<String>? notes,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (kind != null) 'kind': kind,
      if (rawMin != null) 'raw_min': rawMin,
      if (rawMax != null) 'raw_max': rawMax,
      if (notes != null) 'notes': notes,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  CalibrationsCompanion copyWith(
      {Value<int>? id,
      Value<String>? kind,
      Value<int>? rawMin,
      Value<int>? rawMax,
      Value<String?>? notes,
      Value<DateTime>? createdAt}) {
    return CalibrationsCompanion(
      id: id ?? this.id,
      kind: kind ?? this.kind,
      rawMin: rawMin ?? this.rawMin,
      rawMax: rawMax ?? this.rawMax,
      notes: notes ?? this.notes,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (kind.present) {
      map['kind'] = Variable<String>(kind.value);
    }
    if (rawMin.present) {
      map['raw_min'] = Variable<int>(rawMin.value);
    }
    if (rawMax.present) {
      map['raw_max'] = Variable<int>(rawMax.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CalibrationsCompanion(')
          ..write('id: $id, ')
          ..write('kind: $kind, ')
          ..write('rawMin: $rawMin, ')
          ..write('rawMax: $rawMax, ')
          ..write('notes: $notes, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $IrrigationEventsTable extends IrrigationEvents
    with TableInfo<$IrrigationEventsTable, IrrigationEvent> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $IrrigationEventsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _timestampMeta =
      const VerificationMeta('timestamp');
  @override
  late final GeneratedColumn<DateTime> timestamp = GeneratedColumn<DateTime>(
      'timestamp', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 3, maxTextLength: 32),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _sourceMeta = const VerificationMeta('source');
  @override
  late final GeneratedColumn<String> source = GeneratedColumn<String>(
      'source', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _moistureMeta =
      const VerificationMeta('moisture');
  @override
  late final GeneratedColumn<double> moisture = GeneratedColumn<double>(
      'moisture', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _tankLevelMeta =
      const VerificationMeta('tankLevel');
  @override
  late final GeneratedColumn<double> tankLevel = GeneratedColumn<double>(
      'tank_level', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _scheduleIdMeta =
      const VerificationMeta('scheduleId');
  @override
  late final GeneratedColumn<int> scheduleId = GeneratedColumn<int>(
      'schedule_id', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES schedules (id)'));
  @override
  List<GeneratedColumn> get $columns =>
      [id, timestamp, type, source, moisture, tankLevel, scheduleId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'irrigation_events';
  @override
  VerificationContext validateIntegrity(Insertable<IrrigationEvent> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('timestamp')) {
      context.handle(_timestampMeta,
          timestamp.isAcceptableOrUnknown(data['timestamp']!, _timestampMeta));
    } else if (isInserting) {
      context.missing(_timestampMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('source')) {
      context.handle(_sourceMeta,
          source.isAcceptableOrUnknown(data['source']!, _sourceMeta));
    } else if (isInserting) {
      context.missing(_sourceMeta);
    }
    if (data.containsKey('moisture')) {
      context.handle(_moistureMeta,
          moisture.isAcceptableOrUnknown(data['moisture']!, _moistureMeta));
    }
    if (data.containsKey('tank_level')) {
      context.handle(_tankLevelMeta,
          tankLevel.isAcceptableOrUnknown(data['tank_level']!, _tankLevelMeta));
    }
    if (data.containsKey('schedule_id')) {
      context.handle(
          _scheduleIdMeta,
          scheduleId.isAcceptableOrUnknown(
              data['schedule_id']!, _scheduleIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  IrrigationEvent map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return IrrigationEvent(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      timestamp: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}timestamp'])!,
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!,
      source: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}source'])!,
      moisture: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}moisture']),
      tankLevel: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}tank_level']),
      scheduleId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}schedule_id']),
    );
  }

  @override
  $IrrigationEventsTable createAlias(String alias) {
    return $IrrigationEventsTable(attachedDatabase, alias);
  }
}

class IrrigationEvent extends DataClass implements Insertable<IrrigationEvent> {
  final int id;
  final DateTime timestamp;
  final String type;
  final String source;
  final double? moisture;
  final double? tankLevel;
  final int? scheduleId;
  const IrrigationEvent(
      {required this.id,
      required this.timestamp,
      required this.type,
      required this.source,
      this.moisture,
      this.tankLevel,
      this.scheduleId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['timestamp'] = Variable<DateTime>(timestamp);
    map['type'] = Variable<String>(type);
    map['source'] = Variable<String>(source);
    if (!nullToAbsent || moisture != null) {
      map['moisture'] = Variable<double>(moisture);
    }
    if (!nullToAbsent || tankLevel != null) {
      map['tank_level'] = Variable<double>(tankLevel);
    }
    if (!nullToAbsent || scheduleId != null) {
      map['schedule_id'] = Variable<int>(scheduleId);
    }
    return map;
  }

  IrrigationEventsCompanion toCompanion(bool nullToAbsent) {
    return IrrigationEventsCompanion(
      id: Value(id),
      timestamp: Value(timestamp),
      type: Value(type),
      source: Value(source),
      moisture: moisture == null && nullToAbsent
          ? const Value.absent()
          : Value(moisture),
      tankLevel: tankLevel == null && nullToAbsent
          ? const Value.absent()
          : Value(tankLevel),
      scheduleId: scheduleId == null && nullToAbsent
          ? const Value.absent()
          : Value(scheduleId),
    );
  }

  factory IrrigationEvent.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return IrrigationEvent(
      id: serializer.fromJson<int>(json['id']),
      timestamp: serializer.fromJson<DateTime>(json['timestamp']),
      type: serializer.fromJson<String>(json['type']),
      source: serializer.fromJson<String>(json['source']),
      moisture: serializer.fromJson<double?>(json['moisture']),
      tankLevel: serializer.fromJson<double?>(json['tankLevel']),
      scheduleId: serializer.fromJson<int?>(json['scheduleId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'timestamp': serializer.toJson<DateTime>(timestamp),
      'type': serializer.toJson<String>(type),
      'source': serializer.toJson<String>(source),
      'moisture': serializer.toJson<double?>(moisture),
      'tankLevel': serializer.toJson<double?>(tankLevel),
      'scheduleId': serializer.toJson<int?>(scheduleId),
    };
  }

  IrrigationEvent copyWith(
          {int? id,
          DateTime? timestamp,
          String? type,
          String? source,
          Value<double?> moisture = const Value.absent(),
          Value<double?> tankLevel = const Value.absent(),
          Value<int?> scheduleId = const Value.absent()}) =>
      IrrigationEvent(
        id: id ?? this.id,
        timestamp: timestamp ?? this.timestamp,
        type: type ?? this.type,
        source: source ?? this.source,
        moisture: moisture.present ? moisture.value : this.moisture,
        tankLevel: tankLevel.present ? tankLevel.value : this.tankLevel,
        scheduleId: scheduleId.present ? scheduleId.value : this.scheduleId,
      );
  IrrigationEvent copyWithCompanion(IrrigationEventsCompanion data) {
    return IrrigationEvent(
      id: data.id.present ? data.id.value : this.id,
      timestamp: data.timestamp.present ? data.timestamp.value : this.timestamp,
      type: data.type.present ? data.type.value : this.type,
      source: data.source.present ? data.source.value : this.source,
      moisture: data.moisture.present ? data.moisture.value : this.moisture,
      tankLevel: data.tankLevel.present ? data.tankLevel.value : this.tankLevel,
      scheduleId:
          data.scheduleId.present ? data.scheduleId.value : this.scheduleId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('IrrigationEvent(')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('type: $type, ')
          ..write('source: $source, ')
          ..write('moisture: $moisture, ')
          ..write('tankLevel: $tankLevel, ')
          ..write('scheduleId: $scheduleId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, timestamp, type, source, moisture, tankLevel, scheduleId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is IrrigationEvent &&
          other.id == this.id &&
          other.timestamp == this.timestamp &&
          other.type == this.type &&
          other.source == this.source &&
          other.moisture == this.moisture &&
          other.tankLevel == this.tankLevel &&
          other.scheduleId == this.scheduleId);
}

class IrrigationEventsCompanion extends UpdateCompanion<IrrigationEvent> {
  final Value<int> id;
  final Value<DateTime> timestamp;
  final Value<String> type;
  final Value<String> source;
  final Value<double?> moisture;
  final Value<double?> tankLevel;
  final Value<int?> scheduleId;
  const IrrigationEventsCompanion({
    this.id = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.type = const Value.absent(),
    this.source = const Value.absent(),
    this.moisture = const Value.absent(),
    this.tankLevel = const Value.absent(),
    this.scheduleId = const Value.absent(),
  });
  IrrigationEventsCompanion.insert({
    this.id = const Value.absent(),
    required DateTime timestamp,
    required String type,
    required String source,
    this.moisture = const Value.absent(),
    this.tankLevel = const Value.absent(),
    this.scheduleId = const Value.absent(),
  })  : timestamp = Value(timestamp),
        type = Value(type),
        source = Value(source);
  static Insertable<IrrigationEvent> custom({
    Expression<int>? id,
    Expression<DateTime>? timestamp,
    Expression<String>? type,
    Expression<String>? source,
    Expression<double>? moisture,
    Expression<double>? tankLevel,
    Expression<int>? scheduleId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (timestamp != null) 'timestamp': timestamp,
      if (type != null) 'type': type,
      if (source != null) 'source': source,
      if (moisture != null) 'moisture': moisture,
      if (tankLevel != null) 'tank_level': tankLevel,
      if (scheduleId != null) 'schedule_id': scheduleId,
    });
  }

  IrrigationEventsCompanion copyWith(
      {Value<int>? id,
      Value<DateTime>? timestamp,
      Value<String>? type,
      Value<String>? source,
      Value<double?>? moisture,
      Value<double?>? tankLevel,
      Value<int?>? scheduleId}) {
    return IrrigationEventsCompanion(
      id: id ?? this.id,
      timestamp: timestamp ?? this.timestamp,
      type: type ?? this.type,
      source: source ?? this.source,
      moisture: moisture ?? this.moisture,
      tankLevel: tankLevel ?? this.tankLevel,
      scheduleId: scheduleId ?? this.scheduleId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<DateTime>(timestamp.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (source.present) {
      map['source'] = Variable<String>(source.value);
    }
    if (moisture.present) {
      map['moisture'] = Variable<double>(moisture.value);
    }
    if (tankLevel.present) {
      map['tank_level'] = Variable<double>(tankLevel.value);
    }
    if (scheduleId.present) {
      map['schedule_id'] = Variable<int>(scheduleId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('IrrigationEventsCompanion(')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('type: $type, ')
          ..write('source: $source, ')
          ..write('moisture: $moisture, ')
          ..write('tankLevel: $tankLevel, ')
          ..write('scheduleId: $scheduleId')
          ..write(')'))
        .toString();
  }
}

abstract class _$SmartPot extends GeneratedDatabase {
  _$SmartPot(QueryExecutor e) : super(e);
  $SmartPotManager get managers => $SmartPotManager(this);
  late final $AppConfigsTable appConfigs = $AppConfigsTable(this);
  late final $DevicesTable devices = $DevicesTable(this);
  late final $SchedulesTable schedules = $SchedulesTable(this);
  late final $CalibrationsTable calibrations = $CalibrationsTable(this);
  late final $IrrigationEventsTable irrigationEvents =
      $IrrigationEventsTable(this);
  late final AppConfigDao appConfigDao = AppConfigDao(this as SmartPot);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [appConfigs, devices, schedules, calibrations, irrigationEvents];
}

typedef $$AppConfigsTableCreateCompanionBuilder = AppConfigsCompanion Function({
  Value<int> id,
  Value<int> themeMode,
  Value<int> controlMode,
  required int moistureThresholdPercent,
  required int tankMinPercent,
  Value<int> pumpMaxMs,
  Value<int> pumpCooldownMs,
  Value<bool> autoReconnect,
  Value<int?> lastDeviceId,
  Value<bool> notificationsEnabled,
  Value<bool> notifyLowTank,
  Value<bool> notifyIrrigationEvents,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
});
typedef $$AppConfigsTableUpdateCompanionBuilder = AppConfigsCompanion Function({
  Value<int> id,
  Value<int> themeMode,
  Value<int> controlMode,
  Value<int> moistureThresholdPercent,
  Value<int> tankMinPercent,
  Value<int> pumpMaxMs,
  Value<int> pumpCooldownMs,
  Value<bool> autoReconnect,
  Value<int?> lastDeviceId,
  Value<bool> notificationsEnabled,
  Value<bool> notifyLowTank,
  Value<bool> notifyIrrigationEvents,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
});

class $$AppConfigsTableFilterComposer
    extends Composer<_$SmartPot, $AppConfigsTable> {
  $$AppConfigsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get themeMode => $composableBuilder(
      column: $table.themeMode, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get controlMode => $composableBuilder(
      column: $table.controlMode, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get moistureThresholdPercent => $composableBuilder(
      column: $table.moistureThresholdPercent,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get tankMinPercent => $composableBuilder(
      column: $table.tankMinPercent,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get pumpMaxMs => $composableBuilder(
      column: $table.pumpMaxMs, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get pumpCooldownMs => $composableBuilder(
      column: $table.pumpCooldownMs,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get autoReconnect => $composableBuilder(
      column: $table.autoReconnect, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get lastDeviceId => $composableBuilder(
      column: $table.lastDeviceId, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get notificationsEnabled => $composableBuilder(
      column: $table.notificationsEnabled,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get notifyLowTank => $composableBuilder(
      column: $table.notifyLowTank, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get notifyIrrigationEvents => $composableBuilder(
      column: $table.notifyIrrigationEvents,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));
}

class $$AppConfigsTableOrderingComposer
    extends Composer<_$SmartPot, $AppConfigsTable> {
  $$AppConfigsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get themeMode => $composableBuilder(
      column: $table.themeMode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get controlMode => $composableBuilder(
      column: $table.controlMode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get moistureThresholdPercent => $composableBuilder(
      column: $table.moistureThresholdPercent,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get tankMinPercent => $composableBuilder(
      column: $table.tankMinPercent,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get pumpMaxMs => $composableBuilder(
      column: $table.pumpMaxMs, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get pumpCooldownMs => $composableBuilder(
      column: $table.pumpCooldownMs,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get autoReconnect => $composableBuilder(
      column: $table.autoReconnect,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get lastDeviceId => $composableBuilder(
      column: $table.lastDeviceId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get notificationsEnabled => $composableBuilder(
      column: $table.notificationsEnabled,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get notifyLowTank => $composableBuilder(
      column: $table.notifyLowTank,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get notifyIrrigationEvents => $composableBuilder(
      column: $table.notifyIrrigationEvents,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));
}

class $$AppConfigsTableAnnotationComposer
    extends Composer<_$SmartPot, $AppConfigsTable> {
  $$AppConfigsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get themeMode =>
      $composableBuilder(column: $table.themeMode, builder: (column) => column);

  GeneratedColumn<int> get controlMode => $composableBuilder(
      column: $table.controlMode, builder: (column) => column);

  GeneratedColumn<int> get moistureThresholdPercent => $composableBuilder(
      column: $table.moistureThresholdPercent, builder: (column) => column);

  GeneratedColumn<int> get tankMinPercent => $composableBuilder(
      column: $table.tankMinPercent, builder: (column) => column);

  GeneratedColumn<int> get pumpMaxMs =>
      $composableBuilder(column: $table.pumpMaxMs, builder: (column) => column);

  GeneratedColumn<int> get pumpCooldownMs => $composableBuilder(
      column: $table.pumpCooldownMs, builder: (column) => column);

  GeneratedColumn<bool> get autoReconnect => $composableBuilder(
      column: $table.autoReconnect, builder: (column) => column);

  GeneratedColumn<int> get lastDeviceId => $composableBuilder(
      column: $table.lastDeviceId, builder: (column) => column);

  GeneratedColumn<bool> get notificationsEnabled => $composableBuilder(
      column: $table.notificationsEnabled, builder: (column) => column);

  GeneratedColumn<bool> get notifyLowTank => $composableBuilder(
      column: $table.notifyLowTank, builder: (column) => column);

  GeneratedColumn<bool> get notifyIrrigationEvents => $composableBuilder(
      column: $table.notifyIrrigationEvents, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$AppConfigsTableTableManager extends RootTableManager<
    _$SmartPot,
    $AppConfigsTable,
    AppConfig,
    $$AppConfigsTableFilterComposer,
    $$AppConfigsTableOrderingComposer,
    $$AppConfigsTableAnnotationComposer,
    $$AppConfigsTableCreateCompanionBuilder,
    $$AppConfigsTableUpdateCompanionBuilder,
    (AppConfig, BaseReferences<_$SmartPot, $AppConfigsTable, AppConfig>),
    AppConfig,
    PrefetchHooks Function()> {
  $$AppConfigsTableTableManager(_$SmartPot db, $AppConfigsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AppConfigsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AppConfigsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AppConfigsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> themeMode = const Value.absent(),
            Value<int> controlMode = const Value.absent(),
            Value<int> moistureThresholdPercent = const Value.absent(),
            Value<int> tankMinPercent = const Value.absent(),
            Value<int> pumpMaxMs = const Value.absent(),
            Value<int> pumpCooldownMs = const Value.absent(),
            Value<bool> autoReconnect = const Value.absent(),
            Value<int?> lastDeviceId = const Value.absent(),
            Value<bool> notificationsEnabled = const Value.absent(),
            Value<bool> notifyLowTank = const Value.absent(),
            Value<bool> notifyIrrigationEvents = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
          }) =>
              AppConfigsCompanion(
            id: id,
            themeMode: themeMode,
            controlMode: controlMode,
            moistureThresholdPercent: moistureThresholdPercent,
            tankMinPercent: tankMinPercent,
            pumpMaxMs: pumpMaxMs,
            pumpCooldownMs: pumpCooldownMs,
            autoReconnect: autoReconnect,
            lastDeviceId: lastDeviceId,
            notificationsEnabled: notificationsEnabled,
            notifyLowTank: notifyLowTank,
            notifyIrrigationEvents: notifyIrrigationEvents,
            createdAt: createdAt,
            updatedAt: updatedAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> themeMode = const Value.absent(),
            Value<int> controlMode = const Value.absent(),
            required int moistureThresholdPercent,
            required int tankMinPercent,
            Value<int> pumpMaxMs = const Value.absent(),
            Value<int> pumpCooldownMs = const Value.absent(),
            Value<bool> autoReconnect = const Value.absent(),
            Value<int?> lastDeviceId = const Value.absent(),
            Value<bool> notificationsEnabled = const Value.absent(),
            Value<bool> notifyLowTank = const Value.absent(),
            Value<bool> notifyIrrigationEvents = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
          }) =>
              AppConfigsCompanion.insert(
            id: id,
            themeMode: themeMode,
            controlMode: controlMode,
            moistureThresholdPercent: moistureThresholdPercent,
            tankMinPercent: tankMinPercent,
            pumpMaxMs: pumpMaxMs,
            pumpCooldownMs: pumpCooldownMs,
            autoReconnect: autoReconnect,
            lastDeviceId: lastDeviceId,
            notificationsEnabled: notificationsEnabled,
            notifyLowTank: notifyLowTank,
            notifyIrrigationEvents: notifyIrrigationEvents,
            createdAt: createdAt,
            updatedAt: updatedAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$AppConfigsTableProcessedTableManager = ProcessedTableManager<
    _$SmartPot,
    $AppConfigsTable,
    AppConfig,
    $$AppConfigsTableFilterComposer,
    $$AppConfigsTableOrderingComposer,
    $$AppConfigsTableAnnotationComposer,
    $$AppConfigsTableCreateCompanionBuilder,
    $$AppConfigsTableUpdateCompanionBuilder,
    (AppConfig, BaseReferences<_$SmartPot, $AppConfigsTable, AppConfig>),
    AppConfig,
    PrefetchHooks Function()>;
typedef $$DevicesTableCreateCompanionBuilder = DevicesCompanion Function({
  Value<int> id,
  required String name,
  required String mac,
  required String transport,
  Value<bool> favorite,
  Value<DateTime> lastSeenAt,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
});
typedef $$DevicesTableUpdateCompanionBuilder = DevicesCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<String> mac,
  Value<String> transport,
  Value<bool> favorite,
  Value<DateTime> lastSeenAt,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
});

class $$DevicesTableFilterComposer extends Composer<_$SmartPot, $DevicesTable> {
  $$DevicesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get mac => $composableBuilder(
      column: $table.mac, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get transport => $composableBuilder(
      column: $table.transport, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get favorite => $composableBuilder(
      column: $table.favorite, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get lastSeenAt => $composableBuilder(
      column: $table.lastSeenAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));
}

class $$DevicesTableOrderingComposer
    extends Composer<_$SmartPot, $DevicesTable> {
  $$DevicesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get mac => $composableBuilder(
      column: $table.mac, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get transport => $composableBuilder(
      column: $table.transport, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get favorite => $composableBuilder(
      column: $table.favorite, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get lastSeenAt => $composableBuilder(
      column: $table.lastSeenAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));
}

class $$DevicesTableAnnotationComposer
    extends Composer<_$SmartPot, $DevicesTable> {
  $$DevicesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get mac =>
      $composableBuilder(column: $table.mac, builder: (column) => column);

  GeneratedColumn<String> get transport =>
      $composableBuilder(column: $table.transport, builder: (column) => column);

  GeneratedColumn<bool> get favorite =>
      $composableBuilder(column: $table.favorite, builder: (column) => column);

  GeneratedColumn<DateTime> get lastSeenAt => $composableBuilder(
      column: $table.lastSeenAt, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$DevicesTableTableManager extends RootTableManager<
    _$SmartPot,
    $DevicesTable,
    Device,
    $$DevicesTableFilterComposer,
    $$DevicesTableOrderingComposer,
    $$DevicesTableAnnotationComposer,
    $$DevicesTableCreateCompanionBuilder,
    $$DevicesTableUpdateCompanionBuilder,
    (Device, BaseReferences<_$SmartPot, $DevicesTable, Device>),
    Device,
    PrefetchHooks Function()> {
  $$DevicesTableTableManager(_$SmartPot db, $DevicesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DevicesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DevicesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DevicesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> mac = const Value.absent(),
            Value<String> transport = const Value.absent(),
            Value<bool> favorite = const Value.absent(),
            Value<DateTime> lastSeenAt = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
          }) =>
              DevicesCompanion(
            id: id,
            name: name,
            mac: mac,
            transport: transport,
            favorite: favorite,
            lastSeenAt: lastSeenAt,
            createdAt: createdAt,
            updatedAt: updatedAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            required String mac,
            required String transport,
            Value<bool> favorite = const Value.absent(),
            Value<DateTime> lastSeenAt = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
          }) =>
              DevicesCompanion.insert(
            id: id,
            name: name,
            mac: mac,
            transport: transport,
            favorite: favorite,
            lastSeenAt: lastSeenAt,
            createdAt: createdAt,
            updatedAt: updatedAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$DevicesTableProcessedTableManager = ProcessedTableManager<
    _$SmartPot,
    $DevicesTable,
    Device,
    $$DevicesTableFilterComposer,
    $$DevicesTableOrderingComposer,
    $$DevicesTableAnnotationComposer,
    $$DevicesTableCreateCompanionBuilder,
    $$DevicesTableUpdateCompanionBuilder,
    (Device, BaseReferences<_$SmartPot, $DevicesTable, Device>),
    Device,
    PrefetchHooks Function()>;
typedef $$SchedulesTableCreateCompanionBuilder = SchedulesCompanion Function({
  Value<int> id,
  Value<bool> enabled,
  Value<String?> name,
  required int daysMask,
  required String startTime,
  required int durationSec,
  Value<bool> respectMoistureThreshold,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
});
typedef $$SchedulesTableUpdateCompanionBuilder = SchedulesCompanion Function({
  Value<int> id,
  Value<bool> enabled,
  Value<String?> name,
  Value<int> daysMask,
  Value<String> startTime,
  Value<int> durationSec,
  Value<bool> respectMoistureThreshold,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
});

final class $$SchedulesTableReferences
    extends BaseReferences<_$SmartPot, $SchedulesTable, Schedule> {
  $$SchedulesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$IrrigationEventsTable, List<IrrigationEvent>>
      _irrigationEventsRefsTable(_$SmartPot db) =>
          MultiTypedResultKey.fromTable(db.irrigationEvents,
              aliasName: $_aliasNameGenerator(
                  db.schedules.id, db.irrigationEvents.scheduleId));

  $$IrrigationEventsTableProcessedTableManager get irrigationEventsRefs {
    final manager =
        $$IrrigationEventsTableTableManager($_db, $_db.irrigationEvents)
            .filter((f) => f.scheduleId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_irrigationEventsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$SchedulesTableFilterComposer
    extends Composer<_$SmartPot, $SchedulesTable> {
  $$SchedulesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get enabled => $composableBuilder(
      column: $table.enabled, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get daysMask => $composableBuilder(
      column: $table.daysMask, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get startTime => $composableBuilder(
      column: $table.startTime, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get durationSec => $composableBuilder(
      column: $table.durationSec, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get respectMoistureThreshold => $composableBuilder(
      column: $table.respectMoistureThreshold,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  Expression<bool> irrigationEventsRefs(
      Expression<bool> Function($$IrrigationEventsTableFilterComposer f) f) {
    final $$IrrigationEventsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.irrigationEvents,
        getReferencedColumn: (t) => t.scheduleId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$IrrigationEventsTableFilterComposer(
              $db: $db,
              $table: $db.irrigationEvents,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$SchedulesTableOrderingComposer
    extends Composer<_$SmartPot, $SchedulesTable> {
  $$SchedulesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get enabled => $composableBuilder(
      column: $table.enabled, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get daysMask => $composableBuilder(
      column: $table.daysMask, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get startTime => $composableBuilder(
      column: $table.startTime, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get durationSec => $composableBuilder(
      column: $table.durationSec, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get respectMoistureThreshold => $composableBuilder(
      column: $table.respectMoistureThreshold,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));
}

class $$SchedulesTableAnnotationComposer
    extends Composer<_$SmartPot, $SchedulesTable> {
  $$SchedulesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<bool> get enabled =>
      $composableBuilder(column: $table.enabled, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<int> get daysMask =>
      $composableBuilder(column: $table.daysMask, builder: (column) => column);

  GeneratedColumn<String> get startTime =>
      $composableBuilder(column: $table.startTime, builder: (column) => column);

  GeneratedColumn<int> get durationSec => $composableBuilder(
      column: $table.durationSec, builder: (column) => column);

  GeneratedColumn<bool> get respectMoistureThreshold => $composableBuilder(
      column: $table.respectMoistureThreshold, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  Expression<T> irrigationEventsRefs<T extends Object>(
      Expression<T> Function($$IrrigationEventsTableAnnotationComposer a) f) {
    final $$IrrigationEventsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.irrigationEvents,
        getReferencedColumn: (t) => t.scheduleId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$IrrigationEventsTableAnnotationComposer(
              $db: $db,
              $table: $db.irrigationEvents,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$SchedulesTableTableManager extends RootTableManager<
    _$SmartPot,
    $SchedulesTable,
    Schedule,
    $$SchedulesTableFilterComposer,
    $$SchedulesTableOrderingComposer,
    $$SchedulesTableAnnotationComposer,
    $$SchedulesTableCreateCompanionBuilder,
    $$SchedulesTableUpdateCompanionBuilder,
    (Schedule, $$SchedulesTableReferences),
    Schedule,
    PrefetchHooks Function({bool irrigationEventsRefs})> {
  $$SchedulesTableTableManager(_$SmartPot db, $SchedulesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SchedulesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SchedulesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SchedulesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<bool> enabled = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<int> daysMask = const Value.absent(),
            Value<String> startTime = const Value.absent(),
            Value<int> durationSec = const Value.absent(),
            Value<bool> respectMoistureThreshold = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
          }) =>
              SchedulesCompanion(
            id: id,
            enabled: enabled,
            name: name,
            daysMask: daysMask,
            startTime: startTime,
            durationSec: durationSec,
            respectMoistureThreshold: respectMoistureThreshold,
            createdAt: createdAt,
            updatedAt: updatedAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<bool> enabled = const Value.absent(),
            Value<String?> name = const Value.absent(),
            required int daysMask,
            required String startTime,
            required int durationSec,
            Value<bool> respectMoistureThreshold = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
          }) =>
              SchedulesCompanion.insert(
            id: id,
            enabled: enabled,
            name: name,
            daysMask: daysMask,
            startTime: startTime,
            durationSec: durationSec,
            respectMoistureThreshold: respectMoistureThreshold,
            createdAt: createdAt,
            updatedAt: updatedAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$SchedulesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({irrigationEventsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (irrigationEventsRefs) db.irrigationEvents
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (irrigationEventsRefs)
                    await $_getPrefetchedData<Schedule, $SchedulesTable,
                            IrrigationEvent>(
                        currentTable: table,
                        referencedTable: $$SchedulesTableReferences
                            ._irrigationEventsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$SchedulesTableReferences(db, table, p0)
                                .irrigationEventsRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.scheduleId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$SchedulesTableProcessedTableManager = ProcessedTableManager<
    _$SmartPot,
    $SchedulesTable,
    Schedule,
    $$SchedulesTableFilterComposer,
    $$SchedulesTableOrderingComposer,
    $$SchedulesTableAnnotationComposer,
    $$SchedulesTableCreateCompanionBuilder,
    $$SchedulesTableUpdateCompanionBuilder,
    (Schedule, $$SchedulesTableReferences),
    Schedule,
    PrefetchHooks Function({bool irrigationEventsRefs})>;
typedef $$CalibrationsTableCreateCompanionBuilder = CalibrationsCompanion
    Function({
  Value<int> id,
  required String kind,
  required int rawMin,
  required int rawMax,
  Value<String?> notes,
  Value<DateTime> createdAt,
});
typedef $$CalibrationsTableUpdateCompanionBuilder = CalibrationsCompanion
    Function({
  Value<int> id,
  Value<String> kind,
  Value<int> rawMin,
  Value<int> rawMax,
  Value<String?> notes,
  Value<DateTime> createdAt,
});

class $$CalibrationsTableFilterComposer
    extends Composer<_$SmartPot, $CalibrationsTable> {
  $$CalibrationsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get kind => $composableBuilder(
      column: $table.kind, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get rawMin => $composableBuilder(
      column: $table.rawMin, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get rawMax => $composableBuilder(
      column: $table.rawMax, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));
}

class $$CalibrationsTableOrderingComposer
    extends Composer<_$SmartPot, $CalibrationsTable> {
  $$CalibrationsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get kind => $composableBuilder(
      column: $table.kind, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get rawMin => $composableBuilder(
      column: $table.rawMin, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get rawMax => $composableBuilder(
      column: $table.rawMax, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));
}

class $$CalibrationsTableAnnotationComposer
    extends Composer<_$SmartPot, $CalibrationsTable> {
  $$CalibrationsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get kind =>
      $composableBuilder(column: $table.kind, builder: (column) => column);

  GeneratedColumn<int> get rawMin =>
      $composableBuilder(column: $table.rawMin, builder: (column) => column);

  GeneratedColumn<int> get rawMax =>
      $composableBuilder(column: $table.rawMax, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$CalibrationsTableTableManager extends RootTableManager<
    _$SmartPot,
    $CalibrationsTable,
    Calibration,
    $$CalibrationsTableFilterComposer,
    $$CalibrationsTableOrderingComposer,
    $$CalibrationsTableAnnotationComposer,
    $$CalibrationsTableCreateCompanionBuilder,
    $$CalibrationsTableUpdateCompanionBuilder,
    (Calibration, BaseReferences<_$SmartPot, $CalibrationsTable, Calibration>),
    Calibration,
    PrefetchHooks Function()> {
  $$CalibrationsTableTableManager(_$SmartPot db, $CalibrationsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CalibrationsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CalibrationsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CalibrationsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> kind = const Value.absent(),
            Value<int> rawMin = const Value.absent(),
            Value<int> rawMax = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
          }) =>
              CalibrationsCompanion(
            id: id,
            kind: kind,
            rawMin: rawMin,
            rawMax: rawMax,
            notes: notes,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String kind,
            required int rawMin,
            required int rawMax,
            Value<String?> notes = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
          }) =>
              CalibrationsCompanion.insert(
            id: id,
            kind: kind,
            rawMin: rawMin,
            rawMax: rawMax,
            notes: notes,
            createdAt: createdAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$CalibrationsTableProcessedTableManager = ProcessedTableManager<
    _$SmartPot,
    $CalibrationsTable,
    Calibration,
    $$CalibrationsTableFilterComposer,
    $$CalibrationsTableOrderingComposer,
    $$CalibrationsTableAnnotationComposer,
    $$CalibrationsTableCreateCompanionBuilder,
    $$CalibrationsTableUpdateCompanionBuilder,
    (Calibration, BaseReferences<_$SmartPot, $CalibrationsTable, Calibration>),
    Calibration,
    PrefetchHooks Function()>;
typedef $$IrrigationEventsTableCreateCompanionBuilder
    = IrrigationEventsCompanion Function({
  Value<int> id,
  required DateTime timestamp,
  required String type,
  required String source,
  Value<double?> moisture,
  Value<double?> tankLevel,
  Value<int?> scheduleId,
});
typedef $$IrrigationEventsTableUpdateCompanionBuilder
    = IrrigationEventsCompanion Function({
  Value<int> id,
  Value<DateTime> timestamp,
  Value<String> type,
  Value<String> source,
  Value<double?> moisture,
  Value<double?> tankLevel,
  Value<int?> scheduleId,
});

final class $$IrrigationEventsTableReferences extends BaseReferences<_$SmartPot,
    $IrrigationEventsTable, IrrigationEvent> {
  $$IrrigationEventsTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $SchedulesTable _scheduleIdTable(_$SmartPot db) =>
      db.schedules.createAlias($_aliasNameGenerator(
          db.irrigationEvents.scheduleId, db.schedules.id));

  $$SchedulesTableProcessedTableManager? get scheduleId {
    final $_column = $_itemColumn<int>('schedule_id');
    if ($_column == null) return null;
    final manager = $$SchedulesTableTableManager($_db, $_db.schedules)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_scheduleIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$IrrigationEventsTableFilterComposer
    extends Composer<_$SmartPot, $IrrigationEventsTable> {
  $$IrrigationEventsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get timestamp => $composableBuilder(
      column: $table.timestamp, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get source => $composableBuilder(
      column: $table.source, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get moisture => $composableBuilder(
      column: $table.moisture, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get tankLevel => $composableBuilder(
      column: $table.tankLevel, builder: (column) => ColumnFilters(column));

  $$SchedulesTableFilterComposer get scheduleId {
    final $$SchedulesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.scheduleId,
        referencedTable: $db.schedules,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SchedulesTableFilterComposer(
              $db: $db,
              $table: $db.schedules,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$IrrigationEventsTableOrderingComposer
    extends Composer<_$SmartPot, $IrrigationEventsTable> {
  $$IrrigationEventsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get timestamp => $composableBuilder(
      column: $table.timestamp, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get source => $composableBuilder(
      column: $table.source, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get moisture => $composableBuilder(
      column: $table.moisture, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get tankLevel => $composableBuilder(
      column: $table.tankLevel, builder: (column) => ColumnOrderings(column));

  $$SchedulesTableOrderingComposer get scheduleId {
    final $$SchedulesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.scheduleId,
        referencedTable: $db.schedules,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SchedulesTableOrderingComposer(
              $db: $db,
              $table: $db.schedules,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$IrrigationEventsTableAnnotationComposer
    extends Composer<_$SmartPot, $IrrigationEventsTable> {
  $$IrrigationEventsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get timestamp =>
      $composableBuilder(column: $table.timestamp, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get source =>
      $composableBuilder(column: $table.source, builder: (column) => column);

  GeneratedColumn<double> get moisture =>
      $composableBuilder(column: $table.moisture, builder: (column) => column);

  GeneratedColumn<double> get tankLevel =>
      $composableBuilder(column: $table.tankLevel, builder: (column) => column);

  $$SchedulesTableAnnotationComposer get scheduleId {
    final $$SchedulesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.scheduleId,
        referencedTable: $db.schedules,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SchedulesTableAnnotationComposer(
              $db: $db,
              $table: $db.schedules,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$IrrigationEventsTableTableManager extends RootTableManager<
    _$SmartPot,
    $IrrigationEventsTable,
    IrrigationEvent,
    $$IrrigationEventsTableFilterComposer,
    $$IrrigationEventsTableOrderingComposer,
    $$IrrigationEventsTableAnnotationComposer,
    $$IrrigationEventsTableCreateCompanionBuilder,
    $$IrrigationEventsTableUpdateCompanionBuilder,
    (IrrigationEvent, $$IrrigationEventsTableReferences),
    IrrigationEvent,
    PrefetchHooks Function({bool scheduleId})> {
  $$IrrigationEventsTableTableManager(
      _$SmartPot db, $IrrigationEventsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$IrrigationEventsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$IrrigationEventsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$IrrigationEventsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<DateTime> timestamp = const Value.absent(),
            Value<String> type = const Value.absent(),
            Value<String> source = const Value.absent(),
            Value<double?> moisture = const Value.absent(),
            Value<double?> tankLevel = const Value.absent(),
            Value<int?> scheduleId = const Value.absent(),
          }) =>
              IrrigationEventsCompanion(
            id: id,
            timestamp: timestamp,
            type: type,
            source: source,
            moisture: moisture,
            tankLevel: tankLevel,
            scheduleId: scheduleId,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required DateTime timestamp,
            required String type,
            required String source,
            Value<double?> moisture = const Value.absent(),
            Value<double?> tankLevel = const Value.absent(),
            Value<int?> scheduleId = const Value.absent(),
          }) =>
              IrrigationEventsCompanion.insert(
            id: id,
            timestamp: timestamp,
            type: type,
            source: source,
            moisture: moisture,
            tankLevel: tankLevel,
            scheduleId: scheduleId,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$IrrigationEventsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({scheduleId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (scheduleId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.scheduleId,
                    referencedTable:
                        $$IrrigationEventsTableReferences._scheduleIdTable(db),
                    referencedColumn: $$IrrigationEventsTableReferences
                        ._scheduleIdTable(db)
                        .id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$IrrigationEventsTableProcessedTableManager = ProcessedTableManager<
    _$SmartPot,
    $IrrigationEventsTable,
    IrrigationEvent,
    $$IrrigationEventsTableFilterComposer,
    $$IrrigationEventsTableOrderingComposer,
    $$IrrigationEventsTableAnnotationComposer,
    $$IrrigationEventsTableCreateCompanionBuilder,
    $$IrrigationEventsTableUpdateCompanionBuilder,
    (IrrigationEvent, $$IrrigationEventsTableReferences),
    IrrigationEvent,
    PrefetchHooks Function({bool scheduleId})>;

class $SmartPotManager {
  final _$SmartPot _db;
  $SmartPotManager(this._db);
  $$AppConfigsTableTableManager get appConfigs =>
      $$AppConfigsTableTableManager(_db, _db.appConfigs);
  $$DevicesTableTableManager get devices =>
      $$DevicesTableTableManager(_db, _db.devices);
  $$SchedulesTableTableManager get schedules =>
      $$SchedulesTableTableManager(_db, _db.schedules);
  $$CalibrationsTableTableManager get calibrations =>
      $$CalibrationsTableTableManager(_db, _db.calibrations);
  $$IrrigationEventsTableTableManager get irrigationEvents =>
      $$IrrigationEventsTableTableManager(_db, _db.irrigationEvents);
}
