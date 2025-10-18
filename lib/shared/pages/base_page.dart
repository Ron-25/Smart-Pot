import 'package:smart_pot/core/core.dart';
import 'package:smart_pot/shared/shared.dart';

class BasePage extends BaseLessState<Null>  {
  const BasePage({
    super.key,
    this.appBar,
    required this.body,
    this.drawer,
    this.bottomNavigationBar,
    this.floatingActionButton,
    this.actions,
    this.resizeToAvoidBottomInset = true,
    this.extendBodyBehindAppBar = false,
    this.backgroundColor,
    this.drawerScrimColor,
    this.persistentFooterButtons,
    this.bottomSheet,
    this.floatingActionButtonLocation,
    this.persistentFooterAlignment = AlignmentDirectional.centerEnd,
    this.padding,

  });


  final PreferredSizeWidget? appBar;
  final Widget body;
  final Widget? drawer;
  final Widget? bottomNavigationBar;
  final Widget? floatingActionButton;
  final List<Widget>? actions;
  final bool resizeToAvoidBottomInset;
  final bool extendBodyBehindAppBar;
  final Color? backgroundColor;
  final Color? drawerScrimColor;
  final List<Widget>? persistentFooterButtons;
  final Widget? bottomSheet;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final AlignmentDirectional persistentFooterAlignment;
  final EdgeInsetsGeometry? padding;

  @override
  Null get bloc => throw UnimplementedError();

  @override
  Widget bodyWidget(BuildContext context, ThemeData theme, S translation, Size size) => Scaffold(
    appBar: appBar,
    body: Padding(
      padding: padding != null ? padding! : const EdgeInsets.all(0),
      child: body,
    ),
    drawer: drawer,
    bottomNavigationBar: bottomNavigationBar,
    floatingActionButton: floatingActionButton,
    resizeToAvoidBottomInset: resizeToAvoidBottomInset,
    extendBodyBehindAppBar: extendBodyBehindAppBar,
    backgroundColor: backgroundColor,
    drawerScrimColor: drawerScrimColor,
    persistentFooterButtons: persistentFooterButtons,
    bottomSheet: bottomSheet,
    floatingActionButtonLocation: floatingActionButtonLocation,
    persistentFooterAlignment: persistentFooterAlignment,

  );
}
