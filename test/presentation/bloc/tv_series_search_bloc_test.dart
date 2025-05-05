import 'package:bloc_test/bloc_test.dart';
import 'package:common/failure.dart';
import 'package:common/state_enum.dart';
import 'package:dartz/dartz.dart';
import 'package:ditonton/presentation/bloc/tv_series_search/tv_series_search_bloc.dart';
import 'package:domain/entities/tv_series.dart';
import 'package:domain/usecases/search_tv_series.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'tv_series_search_bloc_test.mocks.dart';

@GenerateMocks([SearchTvSeries])
void main() {
  late MockSearchTvSeries mockSearchTvSeries;

  setUp(() {
    mockSearchTvSeries = MockSearchTvSeries();
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
  final tQuery = 'wandavision';

  TvSeriesSearchBloc createBloc() =>
      TvSeriesSearchBloc(searchTvSeries: mockSearchTvSeries);

  group('Search TV Series', () {
    blocTest(
      'should emit [loading, loaded] when search is successful',
      build: () => createBloc(),
      setUp: () {
        when(
          mockSearchTvSeries.execute(tQuery),
        ).thenAnswer((_) async => Right(tTvSeries));
      },
      act: (bloc) => bloc.add(TvSeriesSearchEvent.search(tQuery)),
      expect:
          () => [
            TvSeriesSearchState(state: RequestState.loading),
            TvSeriesSearchState(
              state: RequestState.loaded,
              searchResult: tTvSeries,
            ),
          ],
      verify: (bloc) {
        verify(mockSearchTvSeries.execute(tQuery));
      },
    );

    blocTest(
      'should emit [loading, error] when search is unsuccessful',
      build: () => createBloc(),
      setUp: () {
        when(
          mockSearchTvSeries.execute(tQuery),
        ).thenAnswer((_) async => Left(ServerFailure('Server Failure')));
      },
      act: (bloc) => bloc.add(TvSeriesSearchEvent.search(tQuery)),
      expect:
          () => [
            TvSeriesSearchState(state: RequestState.loading),
            TvSeriesSearchState(
              state: RequestState.error,
              errorMessage: 'Server Failure',
            ),
          ],
      verify: (bloc) {
        verify(mockSearchTvSeries.execute(tQuery));
      },
    );
  });
}
