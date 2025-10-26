import 'dart:developer';
import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter/foundation.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:smart_pot/application/database/daos/daos.dart';
import 'package:smart_pot/application/database/migrations/migrations.dart';
import 'package:smart_pot/application/database/tables/tables.dart';

part 'sqlite_connection.g.dart';

@DriftDatabase(
  tables: <Type>[
    AppConfigs,
    Devices,
    Schedules,
    Calibrations,
    IrrigationEvents
  ],
  daos: <Type>[
    AppConfigDao,
  ],
)
class SmartPot extends _$SmartPot {
  SmartPot() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => DatabaseMigrations.migrations;

  static LazyDatabase _openConnection() => LazyDatabase(() async {
    final Directory dbFolder = await getApplicationDocumentsDirectory();
    final File file = File(p.join(dbFolder.path, 'smart_pot.sqlite'));
    if (kDebugMode) {
      log('Database path: ${file.path}');
    }
    return NativeDatabase(file);
  });
}
