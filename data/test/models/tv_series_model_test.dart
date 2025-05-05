import 'package:data/models/tv_series_model.dart';
import 'package:domain/entities/tv_series.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final tTvSeriesModel = TvSeriesModel(
    adult: false,
    backdropPath: '',
    genreIds: [],
    id: 1,
    originalName: '',
    overview: '',
    popularity: 1,
    posterPath: '',
    firstAirDate: '2025-01-01',
    name: '',
    voteAverage: 1,
    voteCount: 1,
    originCountry: [],
    originalLanguage: '',
  );

  final tTvSeries = TvSeries(
    adult: false,
    backdropPath: '',
    genreIds: [],
    id: 1,
    originalName: '',
    overview: '',
    popularity: 1,
    posterPath: '',
    firstAirDate: '2025-01-01',
    name: '',
    voteAverage: 1,
    voteCount: 1,
    originCountry: [],
    originalLanguage: '',
  );

  test('should be a subclass of TvSeries entity', () async {
    final result = tTvSeriesModel.toEntity();
    expect(result, tTvSeries);
  });
}
