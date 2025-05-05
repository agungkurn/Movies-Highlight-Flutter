import 'package:common/failure.dart';
import 'package:dartz/dartz.dart';

import '../entities/tv_series_details.dart';
import '../repositories/tv_series_repository.dart';

class GetTvSeriesDetail {
  final TvSeriesRepository repository;

  GetTvSeriesDetail(this.repository);

  Future<Either<Failure, TvSeriesDetails>> execute(int id) {
    return repository.getTvSeriesDetail(id);
  }
}
