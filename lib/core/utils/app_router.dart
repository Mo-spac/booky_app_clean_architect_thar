import 'package:booky_app_clean_arctect/Features/home/presentation/view_models/views/book_details_view.dart';
import 'package:booky_app_clean_arctect/Features/home/presentation/view_models/views/home_view.dart';
import 'package:booky_app_clean_arctect/Features/search/presentation/views/search_view.dart';
import 'package:booky_app_clean_arctect/Features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => BookDetailsView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => SearchView(),
      ),
    ],
  );
}
