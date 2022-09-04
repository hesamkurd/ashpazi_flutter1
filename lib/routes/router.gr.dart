// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:auto_route/empty_router_widgets.dart' as _i2;
import 'package:flutter/material.dart' as _i10;

import '../home_page.dart' as _i1;
import '../pages/category/category.dart' as _i7;
import '../pages/category/sub_category.dart' as _i8;
import '../pages/home/home.dart' as _i5;
import '../pages/home/sub_home.dart' as _i6;
import '../pages/profile/profile.dart' as _i4;
import '../pages/search/search.dart' as _i3;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    HomeRouter.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    CategoryRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    SearchRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.Search());
    },
    ProfileRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.Profile());
    },
    Home.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.Home());
    },
    SubHome.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.SubHome(
            items: List<String>.generate(20, (index) => 'Item $index'),
          ));
    },
    Category.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.Category());
    },
    SubCategory.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.SubCategory());
    }
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(HomeRoute.name, path: '/', children: [
          _i9.RouteConfig(HomeRouter.name,
              path: 'home',
              parent: HomeRoute.name,
              children: [
                _i9.RouteConfig(Home.name, path: '', parent: HomeRouter.name),
                _i9.RouteConfig(SubHome.name,
                    path: ':homeId', parent: HomeRouter.name)
              ]),
          _i9.RouteConfig(CategoryRoute.name,
              path: 'category',
              parent: HomeRoute.name,
              children: [
                _i9.RouteConfig(Category.name,
                    path: '', parent: CategoryRoute.name),
                _i9.RouteConfig(SubCategory.name,
                    path: 'categoryId', parent: CategoryRoute.name)
              ]),
          _i9.RouteConfig(SearchRoute.name,
              path: 'search', parent: HomeRoute.name),
          _i9.RouteConfig(ProfileRoute.name,
              path: 'profile', parent: HomeRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute({List<_i9.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class HomeRouter extends _i9.PageRouteInfo<void> {
  const HomeRouter({List<_i9.PageRouteInfo>? children})
      : super(HomeRouter.name, path: 'home', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class CategoryRoute extends _i9.PageRouteInfo<void> {
  const CategoryRoute({List<_i9.PageRouteInfo>? children})
      : super(CategoryRoute.name, path: 'category', initialChildren: children);

  static const String name = 'CategoryRoute';
}

/// generated route for
/// [_i3.Search]
class SearchRoute extends _i9.PageRouteInfo<void> {
  const SearchRoute() : super(SearchRoute.name, path: 'search');

  static const String name = 'SearchRoute';
}

/// generated route for
/// [_i4.Profile]
class ProfileRoute extends _i9.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: 'profile');

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i5.Home]
class Home extends _i9.PageRouteInfo<void> {
  const Home() : super(Home.name, path: '');

  static const String name = 'Home';
}

/// generated route for
/// [_i6.SubHome]
class SubHome extends _i9.PageRouteInfo<void> {
  const SubHome() : super(SubHome.name, path: ':homeId');

  static const String name = 'SubHome';
}

/// generated route for
/// [_i7.Category]
class Category extends _i9.PageRouteInfo<void> {
  const Category() : super(Category.name, path: '');

  static const String name = 'Category';
}

/// generated route for
/// [_i8.SubCategory]
class SubCategory extends _i9.PageRouteInfo<void> {
  const SubCategory() : super(SubCategory.name, path: 'categoryId');

  static const String name = 'SubCategory';
}
