import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:ditonton/common/failure.dart';
import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/tv_series.dart';
import 'package:ditonton/domain/usecases/get_now_airing_tv_series.dart';
import 'package:ditonton/domain/usecases/get_popular_tv_series.dart';
import 'package:ditonton/domain/usecases/get_top_rated_tv_series.dart';
import 'package:ditonton/presentation/bloc/tv_series_list/tv_series_list_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'tv_series_list_bloc_test.mocks.dart';

@GenerateMocks([GetNowAiringTvSeries, GetPopularTvSeries, GetTopRatedTvSeries])
void main() {
  late MockGetNowAiringTvSeries mockGetNowAiringTvSeries;
  late MockGetPopularTvSeries mockGetPopularTvSeries;
  late MockGetTopRatedTvSeries mockGetTopRatedTvSeries;

  setUp(() {
    mockGetNowAiringTvSeries = MockGetNowAiringTvSeries();
    mockGetPopularTvSeries = MockGetPopularTvSeries();
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

  TvSeriesListBloc createBloc() => TvSeriesListBloc(
    getNowAiringTvSeries: mockGetNowAiringTvSeries,
    getPopularTvSeries: mockGetPopularTvSeries,
    getTopRatedTvSeries: mockGetTopRatedTvSeries,
  );

  group('Now Airing TV Series', () {
    test('initial state should be empty', () {
      final bloc = createBloc();
      expect(bloc.state, TvSeriesListState());
    });

    blocTest(
      'should emit [loading, loaded] when data is fetched successfully',
      build: () => createBloc(),
      setUp: () {
        when(
          mockGetNowAiringTvSeries.execute(),
        ).thenAnswer((_) async => Right(tTvSeries));
      },
      act: (bloc) => bloc.add(TvSeriesListEvent.fetchNowAiring()),
      expect:
          () => [
            TvSeriesListState(nowAiringState: RequestState.loading),
            TvSeriesListState(
              nowAiringState: RequestState.loaded,
              nowAiring: tTvSeries,
            ),
          ],
      verify: (bloc) {
        verify(mockGetNowAiringTvSeries.execute());
      },
    );

    blocTest(
      'should emit [loading, error] when getting data fails',
      build: () => createBloc(),
      setUp: () {
        when(
          mockGetNowAiringTvSeries.execute(),
        ).thenAnswer((_) async => Left(ServerFailure('Server Failure')));
      },
      act: (bloc) => bloc.add(TvSeriesListEvent.fetchNowAiring()),
      expect:
          () => [
            TvSeriesListState(nowAiringState: RequestState.loading),
            TvSeriesListState(
              nowAiringState: RequestState.error,
              errorMessage: 'Server Failure',
            ),
          ],
      verify: (bloc) {
        verify(mockGetNowAiringTvSeries.execute());
      },
    );
  });

  group('Popular TV Series', () {
    blocTest(
      'should emit [loading, loaded] when data is fetched successfully',
      build: () => createBloc(),
      setUp: () {
        when(
          mockGetPopularTvSeries.execute(),
        ).thenAnswer((_) async => Right(tTvSeries));
      },
      act: (bloc) => bloc.add(TvSeriesListEvent.fetchPopular()),
      expect:
          () => [
            TvSeriesListState(popularState: RequestState.loading),
            TvSeriesListState(
              popularState: RequestState.loaded,
              popular: tTvSeries,
            ),
          ],
      verify: (bloc) {
        verify(mockGetPopularTvSeries.execute());
      },
    );

    blocTest(
      'should emit [loading, error] when getting data fails',
      build: () => createBloc(),
      setUp: () {
        when(
          mockGetPopularTvSeries.execute(),
        ).thenAnswer((_) async => Left(ServerFailure('Server Failure')));
      },
      act: (bloc) => bloc.add(TvSeriesListEvent.fetchPopular()),
      expect:
          () => [
            TvSeriesListState(popularState: RequestState.loading),
            TvSeriesListState(
              popularState: RequestState.error,
              errorMessage: 'Server Failure',
            ),
          ],
      verify: (bloc) {
        verify(mockGetPopularTvSeries.execute());
      },
    );
  });

  group('Top Rated TV Series', () {
    blocTest(
      'should emit [loading, loaded] when data is fetched successfully',
      build: () => createBloc(),
      setUp: () {
        when(
          mockGetTopRatedTvSeries.execute(),
        ).thenAnswer((_) async => Right(tTvSeries));
      },
      act: (bloc) => bloc.add(TvSeriesListEvent.fetchTopRated()),
      expect:
          () => [
            TvSeriesListState(topRatedState: RequestState.loading),
            TvSeriesListState(
              topRatedState: RequestState.loaded,
              topRated: tTvSeries,
            ),
          ],
      verify: (bloc) {
        verify(mockGetTopRatedTvSeries.execute());
      },
    );

    blocTest(
      'should emit [loading, error] when getting data fails',
      build: () => createBloc(),
      setUp: () {
        when(
          mockGetTopRatedTvSeries.execute(),
        ).thenAnswer((_) async => Left(ServerFailure('Server Failure')));
      },
      act: (bloc) => bloc.add(TvSeriesListEvent.fetchTopRated()),
      expect:
          () => [
            TvSeriesListState(topRatedState: RequestState.loading),
            TvSeriesListState(
              topRatedState: RequestState.error,
              errorMessage: 'Server Failure',
            ),
          ],
      verify: (bloc) {
        verify(mockGetTopRatedTvSeries.execute());
      },
    );
  });
}
