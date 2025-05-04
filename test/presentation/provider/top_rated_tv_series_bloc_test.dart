import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:ditonton/common/failure.dart';
import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/tv_series.dart';
import 'package:ditonton/domain/usecases/get_popular_tv_series.dart';
import 'package:ditonton/presentation/bloc/top_rated_tv_series/top_rated_tv_series_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'tv_series_list_bloc_test.mocks.dart';

@GenerateMocks([GetPopularTvSeries])
void main() {
  late MockGetTopRatedTvSeries mockGetTopRatedTvSeries;

  setUp(() {
    mockGetTopRatedTvSeries = MockGetTopRatedTvSeries();
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

  TopRatedTvSeriesBloc createBloc() =>
      TopRatedTvSeriesBloc(getTopRatedTvSeries: mockGetTopRatedTvSeries);

  blocTest(
    'should emit loading state then loaded state when fetching top rated tv series success',
    build: () => createBloc(),
    setUp: () {
      when(
        mockGetTopRatedTvSeries.execute(),
      ).thenAnswer((_) async => Right(tTvSeries));
    },
    act: (bloc) {
      bloc.add(TopRatedTvSeriesEvent.fetchTopRated());
    },
    expect:
        () => [
          TopRatedTvSeriesState(state: RequestState.loading),
          TopRatedTvSeriesState(
            state: RequestState.loaded,
            tvSeries: tTvSeries,
          ),
        ],
  );

  blocTest(
    'should emit error state when fetching top rated tv series failed',
    build: () => createBloc(),
    setUp: () {
      when(
        mockGetTopRatedTvSeries.execute(),
      ).thenAnswer((_) async => Left(ServerFailure('message')));
    },
    act: (bloc) => bloc.add(TopRatedTvSeriesEvent.fetchTopRated()),
    expect:
        () => [
          TopRatedTvSeriesState(state: RequestState.loading),
          TopRatedTvSeriesState(
            state: RequestState.error,
            errorMessage: 'message',
          ),
        ],
  );
}
