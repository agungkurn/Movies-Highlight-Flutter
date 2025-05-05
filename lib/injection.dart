import 'dart:io';

import 'package:data/datasources/db/database_helper.dart';
import 'package:data/datasources/global_security_context.dart';
import 'package:data/datasources/movie_local_data_source.dart';
import 'package:data/datasources/movie_remote_data_source.dart';
import 'package:data/datasources/tv_local_data_source.dart';
import 'package:data/datasources/tv_remote_data_source.dart';
import 'package:data/repositories/movie_repository_impl.dart';
import 'package:data/repositories/tv_series_repository_impl.dart';
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
import 'package:domain/repositories/movie_repository.dart';
import 'package:domain/repositories/tv_series_repository.dart';
import 'package:domain/usecases/get_movie_detail.dart';
import 'package:domain/usecases/get_movie_recommendations.dart';
import 'package:domain/usecases/get_movie_watchlist_status.dart';
import 'package:domain/usecases/get_now_airing_tv_series.dart';
import 'package:domain/usecases/get_now_playing_movies.dart';
import 'package:domain/usecases/get_popular_movies.dart';
import 'package:domain/usecases/get_popular_tv_series.dart';
import 'package:domain/usecases/get_top_rated_movies.dart';
import 'package:domain/usecases/get_top_rated_tv_series.dart';
import 'package:domain/usecases/get_tv_series_detail.dart';
import 'package:domain/usecases/get_tv_series_recommendations.dart';
import 'package:domain/usecases/get_tv_series_watchlist_status.dart';
import 'package:domain/usecases/get_watchlist_movies.dart';
import 'package:domain/usecases/get_watchlist_tv_series.dart';
import 'package:domain/usecases/remove_movie_watchlist.dart';
import 'package:domain/usecases/remove_tv_series_watchlist.dart';
import 'package:domain/usecases/save_movie_watchlist.dart';
import 'package:domain/usecases/save_tv_series_watchlist.dart';
import 'package:domain/usecases/search_movies.dart';
import 'package:domain/usecases/search_tv_series.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:http/io_client.dart';

final locator = GetIt.instance;

void init() {
  // provider
  locator.registerFactoryAsync(
    () async => MovieListBloc(
      getNowPlayingMovies: await locator.getAsync(),
      getPopularMovies: await locator.getAsync(),
      getTopRatedMovies: await locator.getAsync(),
    ),
  );
  locator.registerFactoryAsync(
    () async => MovieDetailBloc(
      getMovieDetail: await locator.getAsync(),
      getMovieRecommendations: await locator.getAsync(),
      getWatchListStatus: await locator.getAsync(),
      saveWatchlist: await locator.getAsync(),
      removeWatchlist: await locator.getAsync(),
    ),
  );
  locator.registerFactoryAsync(
    () async => MovieSearchBloc(searchMovies: await locator.getAsync()),
  );
  locator.registerFactoryAsync(
    () async => PopularMoviesBloc(await locator.getAsync()),
  );
  locator.registerFactoryAsync(
    () async => TopRatedMoviesBloc(getTopRatedMovies: await locator.getAsync()),
  );
  locator.registerFactoryAsync(
    () async =>
        WatchlistMovieBloc(getWatchlistMovies: await locator.getAsync()),
  );
  locator.registerFactoryAsync(
    () async => TvSeriesListBloc(
      getNowAiringTvSeries: await locator.getAsync(),
      getPopularTvSeries: await locator.getAsync(),
      getTopRatedTvSeries: await locator.getAsync(),
    ),
  );
  locator.registerFactoryAsync(
    () async => TvSeriesDetailBloc(
      getTvSeriesDetail: await locator.getAsync(),
      getTvSeriesRecommendations: await locator.getAsync(),
      getWatchListStatus: await locator.getAsync(),
      saveWatchlist: await locator.getAsync(),
      removeWatchlist: await locator.getAsync(),
    ),
  );
  locator.registerFactoryAsync(
    () async => TvSeriesSearchBloc(searchTvSeries: await locator.getAsync()),
  );
  locator.registerFactoryAsync(
    () async => PopularTvSeriesBloc(await locator.getAsync()),
  );
  locator.registerFactoryAsync(
    () async =>
        TopRatedTvSeriesBloc(getTopRatedTvSeries: await locator.getAsync()),
  );
  locator.registerFactoryAsync(
    () async =>
        WatchlistTvSeriesBloc(getWatchlistTvSeries: await locator.getAsync()),
  );

  // use case
  locator.registerLazySingletonAsync(
    () async => GetNowPlayingMovies(await locator.getAsync()),
  );
  locator.registerLazySingletonAsync(
    () async => GetPopularMovies(await locator.getAsync()),
  );
  locator.registerLazySingletonAsync(
    () async => GetTopRatedMovies(await locator.getAsync()),
  );
  locator.registerLazySingletonAsync(
    () async => GetMovieDetail(await locator.getAsync()),
  );
  locator.registerLazySingletonAsync(
    () async => GetMovieRecommendations(await locator.getAsync()),
  );
  locator.registerLazySingletonAsync(
    () async => SearchMovies(await locator.getAsync()),
  );
  locator.registerLazySingletonAsync(
    () async => GetMovieWatchListStatus(await locator.getAsync()),
  );
  locator.registerLazySingletonAsync(
    () async => SaveMovieWatchlist(await locator.getAsync()),
  );
  locator.registerLazySingletonAsync(
    () async => RemoveMovieWatchlist(await locator.getAsync()),
  );
  locator.registerLazySingletonAsync(
    () async => GetWatchlistMovies(await locator.getAsync()),
  );
  locator.registerLazySingletonAsync(
    () async => GetNowAiringTvSeries(await locator.getAsync()),
  );
  locator.registerLazySingletonAsync(
    () async => GetPopularTvSeries(await locator.getAsync()),
  );
  locator.registerLazySingletonAsync(
    () async => GetTopRatedTvSeries(await locator.getAsync()),
  );
  locator.registerLazySingletonAsync(
    () async => GetTvSeriesDetail(await locator.getAsync()),
  );
  locator.registerLazySingletonAsync(
    () async => GetTvSeriesRecommendations(await locator.getAsync()),
  );
  locator.registerLazySingletonAsync(
    () async => SearchTvSeries(await locator.getAsync()),
  );
  locator.registerLazySingletonAsync(
    () async => GetTvSeriesWatchListStatus(await locator.getAsync()),
  );
  locator.registerLazySingletonAsync(
    () async => SaveTvSeriesWatchlist(await locator.getAsync()),
  );
  locator.registerLazySingletonAsync(
    () async => RemoveTvSeriesWatchlist(await locator.getAsync()),
  );
  locator.registerLazySingletonAsync(
    () async => GetWatchlistTvSeries(await locator.getAsync()),
  );

  // repository
  locator.registerLazySingletonAsync<MovieRepository>(
    () async => MovieRepositoryImpl(
      remoteDataSource: await locator.getAsync(),
      localDataSource: locator(),
    ),
  );
  locator.registerLazySingletonAsync<TvSeriesRepository>(
    () async => TvSeriesRepositoryImpl(
      remoteDataSource: await locator.getAsync(),
      localDataSource: locator(),
    ),
  );

  // data sources
  locator.registerLazySingletonAsync<MovieRemoteDataSource>(
    () async =>
        MovieRemoteDataSourceImpl(ioClient: await locator.getAsync<IOClient>()),
  );
  locator.registerLazySingleton<MovieLocalDataSource>(
    () => MovieLocalDataSourceImpl(databaseHelper: locator()),
  );
  locator.registerLazySingletonAsync<TvRemoteDataSource>(
    () async =>
        TvRemoteDataSourceImpl(ioClient: await locator.getAsync<IOClient>()),
  );
  locator.registerLazySingleton<TvSeriesLocalDataSource>(
    () => TvSeriesLocalDataSourceImpl(databaseHelper: locator()),
  );

  // helper
  locator.registerLazySingleton<DatabaseHelper>(() => DatabaseHelper());

  // external
  locator.registerLazySingleton(() => http.Client());
  locator.registerLazySingletonAsync<IOClient>(() async {
    final client = HttpClient(context: await globalSecurityContext)
      ..badCertificateCallback = (cert, host, port) => false;
    return IOClient(client);
  });
}
