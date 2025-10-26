import 'package:dartz/dartz.dart';
import 'package:drift/drift.dart';
import 'package:smart_pot/application/database/connection/sqlite_connection.dart';
import 'package:smart_pot/application/database/daos/base_dao.dart';
import 'package:smart_pot/application/database/tables/app_configs_table.dart';
import 'package:smart_pot/core/errors/failures.dart';

part 'app_config_dao.g.dart';

@DriftAccessor(tables: <Type>[AppConfigs])
class AppConfigDao extends DatabaseAccessor<SmartPot> with _$AppConfigDaoMixin implements BaseDao<AppConfig> {
  AppConfigDao(super.db);

  @override
  Future<Either<Failure, List<AppConfig>>> getAll({String? termFilter, required String orderBy, required String show}) => throw UnimplementedError();


  @override
  Future<Either<Failure, int>> insert({required AppConfig entity}) async {
    try{
      final int id = await into(appConfigs).insert(entity);
      return Right<Failure, int>(id);
    } on Exception catch (e) {
      return Left<Failure, int>(LocalInsertAppConfigFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> put({required AppConfig entity, required int id}) async {
    try {
      final int updated = await (update(appConfigs)..where(($AppConfigsTable tbl) => tbl.id.equals(id))).write(entity);
      return Right<Failure, bool>(updated > 0);
    } on Exception catch (e) {
      return Left<Failure, bool>(LocalUpdateAppConfigFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> remove({required AppConfig entity}) async{
    try{
      final int deleted = await (delete(appConfigs)..where(($AppConfigsTable tbl) => tbl.id.equals(entity.id))).go();
      return Right<Failure, bool>(deleted > 0);
    } on Exception catch (e) {
      return Left<Failure, bool>(LocalDeleteAppConfigFailure(message: e.toString()));
    }
  }

}