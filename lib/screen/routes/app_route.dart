import 'package:auto_route/auto_route.dart';
import 'package:git_mobile/screen/routes/route_path.dart';
import 'package:git_mobile/screen/home/home_screen.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: [
    AutoRoute(
      path: RoutePath.appRouteHome,
      page: HomeScreen,
      initial: true,
    ),
  ],
)
class $AppRouter {}
