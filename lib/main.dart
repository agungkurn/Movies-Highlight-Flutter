import 'package:common/constants.dart';
import 'package:common/utils.dart';
import 'package:ditonton/firebase_options.dart';
import 'package:ditonton/injection.dart' as di;
import 'package:ditonton/presentation/bloc/movie_details/movie_detail_bloc.dart';
import 'package:ditonton/presentation/bloc/movie_list/movie_list_bloc.dart';
import 'package:ditonton/presentation/bloc/movie_search/movie_search_bloc.dart';
import 'package:ditonton/presentation/bloc/popular_movies/popular_movies_bloc.dart';
import 'package:ditonton/presentation/bloc/popular_tv_series/popular_tv_series_bloc.dart';
import 'package:ditonton/presentation/bloc/top_rated_movies/top_rated_movies_bloc.dart';
import 'package:ditonton/presentation/bloc/top_rated_tv_series/top_rated_tv_series_bloc.dart';
import 'package:ditonton/presentation/bloc/tv_series_details/tv_series_detail_bloc.dart';
import 'package:ditonton/presentation/bloc/tv_series_list/tv_series_list_bloc.dart';
import 'package:ditonton/presentation/bloc/tv_series_search/tv_series_search_bloc.dart';
import 'package:ditonton/presentation/bloc/watchlist_movie/watchlist_movie_bloc.dart';
import 'package:ditonton/presentation/bloc/watchlist_tv_series/watchlist_tv_series_bloc.dart';
import 'package:ditonton/presentation/pages/about_page.dart';
import 'package:ditonton/presentation/pages/home_page.dart';
import 'package:ditonton/presentation/pages/movie_detail_page.dart';
import 'package:ditonton/presentation/pages/popular_movies_page.dart';
import 'package:ditonton/presentation/pages/popular_tv_series_page.dart';
import 'package:ditonton/presentation/pages/search_movie_page.dart';
import 'package:ditonton/presentation/pages/search_tv_series_page.dart';
import 'package:ditonton/presentation/pages/top_rated_movies_page.dart';
import 'package:ditonton/presentation/pages/top_rated_tv_series_page.dart';
import 'package:ditonton/presentation/pages/tv_series_detail_page.dart';
import 'package:ditonton/presentation/pages/watchlist_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  di.init();
  await di.locator.allReady();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  final movieListBloc = await di.locator.getAsync<MovieListBloc>();
  final movieDetailBloc = await di.locator.getAsync<MovieDetailBloc>();
  final movieSearchBloc = await di.locator.getAsync<MovieSearchBloc>();
  final topRatedMoviesBloc = await di.locator.getAsync<TopRatedMoviesBloc>();
  final popularMoviesBloc = await di.locator.getAsync<PopularMoviesBloc>();
  final watchlistMovieBloc = await di.locator.getAsync<WatchlistMovieBloc>();
  final tvSeriesListBloc = await di.locator.getAsync<TvSeriesListBloc>();
  final tvSeriesDetailBloc = await di.locator.getAsync<TvSeriesDetailBloc>();
  final tvSeriesSearchBloc = await di.locator.getAsync<TvSeriesSearchBloc>();
  final topRatedTvSeriesBloc =
      await di.locator.getAsync<TopRatedTvSeriesBloc>();
  final popularTvSeriesBloc = await di.locator.getAsync<PopularTvSeriesBloc>();
  final watchlistTvSeriesBloc =
      await di.locator.getAsync<WatchlistTvSeriesBloc>();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider.value(value: movieListBloc),
        BlocProvider.value(value: tvSeriesListBloc),
        BlocProvider.value(value: movieDetailBloc),
        BlocProvider.value(value: tvSeriesDetailBloc),
        BlocProvider.value(value: movieSearchBloc),
        BlocProvider.value(value: tvSeriesSearchBloc),
        BlocProvider.value(value: popularMoviesBloc),
        BlocProvider.value(value: popularTvSeriesBloc),
        BlocProvider.value(value: topRatedMoviesBloc),
        BlocProvider.value(value: topRatedTvSeriesBloc),
        BlocProvider.value(value: watchlistMovieBloc),
        BlocProvider.value(value: watchlistTvSeriesBloc),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData.dark().copyWith(
      colorScheme: kColorScheme,
      primaryColor: kRichBlack,
      scaffoldBackgroundColor: kRichBlack,
      textTheme: kTextTheme,
      drawerTheme: kDrawerTheme,
    ),
    home: HomePage(),
    navigatorObservers: [routeObserver],
    onGenerateRoute: (RouteSettings settings) {
      switch (settings.name) {
        case '/home':
          return MaterialPageRoute(builder: (_) => HomePage());
        case PopularMoviesPage.routeName:
          return CupertinoPageRoute(builder: (_) => PopularMoviesPage());
        case PopularTvSeriesPage.routeName:
          return CupertinoPageRoute(builder: (_) => PopularTvSeriesPage());
        case TopRatedMoviesPage.routeName:
          return CupertinoPageRoute(builder: (_) => TopRatedMoviesPage());
        case TopRatedTvSeriesPage.routeName:
          return CupertinoPageRoute(builder: (_) => TopRatedTvSeriesPage());
        case MovieDetailPage.routeName:
          final id = settings.arguments as int;
          return MaterialPageRoute(
            builder: (_) => MovieDetailPage(id: id),
            settings: settings,
          );
        case TvSeriesDetailPage.routeName:
          final id = settings.arguments as int;
          return MaterialPageRoute(
            builder: (_) => TvSeriesDetailPage(id: id),
            settings: settings,
          );
        case SearchMoviePage.routeName:
          return CupertinoPageRoute(builder: (_) => SearchMoviePage());
        case SearchTvSeriesPage.routeName:
          return CupertinoPageRoute(builder: (_) => SearchTvSeriesPage());
        case WatchlistPage.routeName:
          return MaterialPageRoute(builder: (_) => WatchlistPage());
        case AboutPage.routeName:
          return MaterialPageRoute(builder: (_) => AboutPage());
        default:
          return MaterialPageRoute(
            builder: (_) {
              return Scaffold(body: Center(child: Text('Page not found :(')));
            },
          );
      }
    },
  );
}
