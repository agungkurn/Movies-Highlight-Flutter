import 'package:common/failure.dart';
import 'package:dartz/dartz.dart';

import '../entities/tv_series.dart';
import '../entities/tv_series_details.dart';

abstract class TvSeriesRepository {
  Future<Either<Failure, List<TvSeries>>> getNowAiringTvSeries();

  Future<Either<Failure, List<TvSeries>>> getPopularTvSeries();

  Future<Either<Failure, List<TvSeries>>> getTopRatedTvSeries();

  Future<Either<Failure, TvSeriesDetails>> getTvSeriesDetail(int id);

  Future<Either<Failure, List<TvSeries>>> getTvSeriesRecommendations(int id);

  Future<Either<Failure, List<TvSeries>>> searchTvSeries(String query);

  Future<Either<Failure, String>> saveWatchlist(TvSeriesDetails tvSeries);

  Future<Either<Failure, String>> removeWatchlist(TvSeriesDetails tvSeries);

  Future<bool> isAddedToWatchlist(int id);

  Future<Either<Failure, List<TvSeries>>> getWatchlistTvSeries();
}
