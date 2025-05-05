import 'package:common/failure.dart';
import 'package:dartz/dartz.dart';

import '../entities/tv_series.dart';
import '../repositories/tv_series_repository.dart';

class GetNowAiringTvSeries {
  final TvSeriesRepository repository;

  GetNowAiringTvSeries(this.repository);

  Future<Either<Failure, List<TvSeries>>> execute() {
    return repository.getNowAiringTvSeries();
  }
}
