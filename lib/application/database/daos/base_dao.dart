import 'package:smart_pot/core/core.dart';

abstract class BaseDao<T> {

  Future<Either<Failure, List<T>>> getAll({
    String? termFilter,
    required String orderBy,
    required String show
  });

  Future<Either<Failure, int>> insert({required T entity});

  Future<Either<Failure, bool>> put({required T entity, required int id});

  Future<Either<Failure, bool>> remove({required T entity});
  
}