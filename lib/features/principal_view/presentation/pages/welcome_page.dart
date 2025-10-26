
import 'package:flutter/services.dart';
import 'package:smart_pot/application/constants/assets.dart';
import 'package:smart_pot/core/core.dart' hide State;
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
  Widget bodyWidget(BuildContext context, ThemeData theme, S translations, Size size) => Scaffold(
    backgroundColor: theme.colorScheme.tertiary,
    body: Container(
      margin: const EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 20),
      child: Column(
        spacing: 30,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: theme.colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(10)
            ),
            padding: const EdgeInsets.all(20),
            child: Text(
              translations.welcome_message,
              style: theme.textTheme.headlineMedium?.copyWith(
                color: theme.colorScheme.onPrimary
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Image.asset(
            Assets.iconApp,
          ),
          const Spacer(),
          Row(
            spacing: 15,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              ElevatedButton.icon(
                onPressed: (){
                  SystemNavigator.pop();
                },
                icon: const Icon(Icons.close), 
                label: Text(translations.close_button)
              ),
              ElevatedButton.icon(
                onPressed: (){
              
                },
                icon: const Icon(Icons.arrow_forward), 
                label: Text(translations.continue_button)
              ),
            ],
          )
        ],
      ),
    )
  );
}
