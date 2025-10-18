import 'package:smart_pot/shared/shared.dart';

sealed class Failures extends Equatable {
  final String message;
  final String? code;

  const Failures({required this.message, this.code});

  @override
  List<Object?> get props => <Object?>[message, code];
}

class ExampleFailure extends Failures {
  const ExampleFailure({required  super.message, super.code});
}
