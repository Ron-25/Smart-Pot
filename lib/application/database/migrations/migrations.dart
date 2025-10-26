import 'package:drift/drift.dart';

class DatabaseMigrations {
  static MigrationStrategy get migrations => MigrationStrategy(
    onCreate: (Migrator m) async {
      await m.createAll();
    },
    onUpgrade: (Migrator m, int from, int to) async {
      
    },
    beforeOpen: (OpeningDetails details) async {
      
    },
  );
}