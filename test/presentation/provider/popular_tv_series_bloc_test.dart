import 'package:bloc_test/bloc_test.dart';
import 'package:common/failure.dart';
import 'package:common/state_enum.dart';
import 'package:dartz/dartz.dart';
import 'package:ditonton/presentation/bloc/popular_tv_series/popular_tv_series_bloc.dart';
import 'package:domain/entities/tv_series.dart';
import 'package:domain/usecases/get_popular_tv_series.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'popular_tv_series_bloc_test.mocks.dart';

@GenerateMocks([GetPopularTvSeries])
void main() {
  late MockGetPopularTvSeries mockGetPopularTvSeries;

  setUp(() {
    mockGetPopularTvSeries = MockGetPopularTvSeries();
  });

  final tTv = TvSeries(
    adult: false,
    backdropPath: 'backdropPath',
    genreIds: [1, 2, 3],
    id: 1,
    originalName: 'originalTitle',
    overview: 'overview',
    popularity: 1,
    posterPath: 'posterPath',
    firstAirDate: '2025-01-01',
    name: 'title',
    voteAverage: 1,
    voteCount: 1,
    originCountry: ['us'],
    originalLanguage: 'en',
  );
  final tTvSeries = <TvSeries>[tTv];

  PopularTvSeriesBloc createBloc() =>
      PopularTvSeriesBloc(mockGetPopularTvSeries);

  blocTest(
    'should emit loading state then loaded state when fetching popular tv series success',
    build: () => createBloc(),
    setUp: () {
      when(
        mockGetPopularTvSeries.execute(),
      ).thenAnswer((_) async => Right(tTvSeries));
    },
    act: (bloc) {
      bloc.add(PopularTvSeriesEvent.fetchPopular());
    },
    expect:
        () =>
    [
      PopularTvSeriesState(state: RequestState.loading),
      PopularTvSeriesState(state: RequestState.loaded, tvSeries: tTvSeries),
    ],
  );

  blocTest(
    'should return error when data is unsuccessful',
    build: () => createBloc(),
    setUp: () {
      when(
        mockGetPopularTvSeries.execute(),
      ).thenAnswer((_) async => Left(ServerFailure('Server Failure')));
    },
    act: (bloc) {
      bloc.add(PopularTvSeriesEvent.fetchPopular());
    },
    expect:
        () =>
    [
      PopularTvSeriesState(state: RequestState.loading),
      PopularTvSeriesState(
          state: RequestState.error, errorMessage: 'Server Failure'),
    ],
  );
}
