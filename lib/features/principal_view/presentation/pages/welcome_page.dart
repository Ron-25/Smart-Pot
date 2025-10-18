
import 'package:smart_pot/core/core.dart';
import 'package:smart_pot/shared/shared.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends BasePageState<WelcomePage, Null> {
  @override

  Null get bloc => throw UnimplementedError();
  
  @override
  Widget bodyWidget(BuildContext context, ThemeData theme, S translations, Size size) {
    return Center(
      child: Text(
        translations.appTitle,
        style: theme.textTheme.headlineMedium,
      ),
    );
  }
}