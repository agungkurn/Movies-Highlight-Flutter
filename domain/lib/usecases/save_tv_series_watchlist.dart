import 'package:common/failure.dart';
import 'package:dartz/dartz.dart';

import '../entities/tv_series_details.dart';
import '../repositories/tv_series_repository.dart';

class SaveTvSeriesWatchlist {
  final TvSeriesRepository repository;

  SaveTvSeriesWatchlist(this.repository);

  Future<Either<Failure, String>> execute(TvSeriesDetails tvSeries) {
    return repository.saveWatchlist(tvSeries);
  }
}
