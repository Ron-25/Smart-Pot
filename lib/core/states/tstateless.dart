
import 'package:smart_pot/shared/shared.dart';

abstract class BaseLessState<Bloc extends BlocBase<dynamic>?> extends StatelessWidget {
  const BaseLessState({super.key});

  Bloc get bloc;

  Widget bodyWidget(
    BuildContext context, 
    ThemeData theme,
    S translation,
    Size size
  );

  @override
  Widget build(BuildContext context) => bodyWidget(
    context, 
    Theme.of(context),
    S.current,
    MediaQuery.of(context).size,
  );
}