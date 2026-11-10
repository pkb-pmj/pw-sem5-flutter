/// Generate type-safe routes for navigation.
/// Use the `go_router` package with its type-safe routing feature:
/// https://pub.dev/documentation/go_router/latest/topics/Type-safe%20routes-topic.html
/// https://pub.dev/documentation/go_router_builder/latest/
///
/// The tree should look like this:
/// ```text
/// / (HomePage)
/// ├── cubit (CubitPage)
/// │   └── pokemon (RiverpodPokemonDetailsPage)
/// └── bloc (BlocPage)
///     └── pokemon (MobxPokemonDetailsPage)
/// ```
library;

import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:labs_week6/main.dart';

part 'routes.g.dart';

@TypedGoRoute<HomeRoute>(
  path: '/',
  routes: [
    // TypedGoRoute(path: '/bloc'),
    // TypedGoRoute(path: '/cubit'),
  ],
)
class const HomeRoute() extends GoRouteData with $HomeRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) => const HomePage();
}
