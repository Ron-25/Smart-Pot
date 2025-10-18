
import 'package:smart_pot/shared/shared.dart';

abstract class BasePageState<T extends StatefulWidget, Bloc extends BlocBase<dynamic>?> extends State<T> with AutomaticKeepAliveClientMixin {
  Bloc? get bloc;

  @override
  bool get wantKeepAlive => false;

  final ValueNotifier<Size> sizeNotifier = ValueNotifier<Size>(Size.zero);

  Widget bodyWidget(
    BuildContext context,
    ThemeData theme,
    S translations,
    Size size,
  );

  @override
  Widget build(BuildContext context){
    super.build(context);
    sizeNotifier.value = MediaQuery.of(context).size;
    return bodyWidget(
      context,
      Theme.of(context),
      S.current,
      MediaQuery.of(context).size,
    );
  }
}
