import 'package:bloc_test/bloc_test.dart';
import 'package:common/failure.dart';
import 'package:common/state_enum.dart';
import 'package:dartz/dartz.dart';
import 'package:ditonton/presentation/bloc/watchlist_tv_series/watchlist_tv_series_bloc.dart';
import 'package:domain/usecases/get_watchlist_tv_series.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../dummy_data/dummy_objects.dart';
import 'watchlist_tv_series_bloc_test.mocks.dart';

@GenerateMocks([GetWatchlistTvSeries])
void main() {
  late MockGetWatchlistTvSeries mockGetWatchlistTvSeries;

  setUp(() {
    mockGetWatchlistTvSeries = MockGetWatchlistTvSeries();
  });

  WatchlistTvSeriesBloc createBloc() =>
      WatchlistTvSeriesBloc(getWatchlistTvSeries: mockGetWatchlistTvSeries);

  blocTest(
    'should emit [loading, loaded] when data is fetched successfully',
    build: () => createBloc(),
    setUp: () {
      when(
        mockGetWatchlistTvSeries.execute(),
      ).thenAnswer((_) async => Right([testWatchlistTvSeries]));
    },
    act: (bloc) {
      bloc.add(WatchlistTvSeriesEvent.fetchWatchlist());
    },
    expect:
        () => [
          WatchlistTvSeriesState(state: RequestState.loading),
          WatchlistTvSeriesState(
            state: RequestState.loaded,
            tvSeries: [testWatchlistTvSeries],
          ),
        ],
  );

  blocTest(
    'should emit [loading, error] when getting data fails',
    build: () => createBloc(),
    setUp: () {
      when(
        mockGetWatchlistTvSeries.execute(),
      ).thenAnswer((_) async => Left(DatabaseFailure("Can't get data")));
    },
    act: (bloc) {
      bloc.add(WatchlistTvSeriesEvent.fetchWatchlist());
    },
    expect:
        () => [
          WatchlistTvSeriesState(state: RequestState.loading),
          WatchlistTvSeriesState(
            state: RequestState.error,
            errorMessage: "Can't get data",
          ),
        ],
  );
}
