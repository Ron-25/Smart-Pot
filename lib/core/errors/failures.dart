import 'package:smart_pot/shared/shared.dart';

sealed class Failure extends Equatable {
  final String message;
  final String? code;

  const Failure({required this.message, this.code});

  @override
  List<Object?> get props => <Object?>[message, code];
}

class ExampleFailure extends Failure {
  const ExampleFailure({required  super.message, super.code});
}


class LocalDeleteAppConfigFailure extends Failure {
  const LocalDeleteAppConfigFailure({required  super.message, super.code});
}

class LocalInsertAppConfigFailure extends Failure {
  const LocalInsertAppConfigFailure({required  super.message, super.code});
}

class LocalUpdateAppConfigFailure extends Failure {
  const LocalUpdateAppConfigFailure({required  super.message, super.code});
}
