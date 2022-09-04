import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:flutter_application_1/home_page.dart';
import 'package:flutter_application_1/pages/category/category.dart';
import 'package:flutter_application_1/pages/category/sub_category.dart';
import 'package:flutter_application_1/pages/home/home.dart';
import 'package:flutter_application_1/pages/profile/profile.dart';
import 'package:flutter_application_1/pages/search/search.dart';

import '../pages/home/sub_home.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(path: '/', page: HomePage, children: [
      AutoRoute(
        path: 'home',
        name: 'HomeRouter',
        page: EmptyRouterPage,
        children: [
          AutoRoute(
            path: '',
            page: Home,
          ),
          AutoRoute(
            path: ':homeId',
            page: SubHome,
            
          )
        ],
      ),
      AutoRoute(
          path: 'category',
          name: 'CategoryRoute',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: Category,
            ),
            AutoRoute(
            
              path: 'categoryId',
              page: SubCategory,
            )
          ]),
      AutoRoute(
        path: 'search',
        name: 'SearchRoute',
        page: Search,
      ),
      AutoRoute(
        path: 'profile',
        name: 'ProfileRoute',
        page: Profile,
      )
    ]),
  ],
)
class $AppRouter {}
