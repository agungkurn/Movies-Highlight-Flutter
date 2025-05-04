import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:ditonton/common/failure.dart';
import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/usecases/get_watchlist_movies.dart';
import 'package:ditonton/presentation/bloc/watchlist_movie/watchlist_movie_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../dummy_data/dummy_objects.dart';
import 'watchlist_movie_bloc_test.mocks.dart';

@GenerateMocks([GetWatchlistMovies])
void main() {
  late MockGetWatchlistMovies mockGetWatchlistMovies;

  setUp(() {
    mockGetWatchlistMovies = MockGetWatchlistMovies();
  });

  WatchlistMovieBloc createBloc() =>
      WatchlistMovieBloc(getWatchlistMovies: mockGetWatchlistMovies);

  blocTest(
    'should emit [loading, loaded] when data is fetched successfully',
    build: () => createBloc(),
    setUp: () {
      when(
        mockGetWatchlistMovies.execute(),
      ).thenAnswer((_) async => Right([testWatchlistMovie]));
    },
    act: (bloc) {
      bloc.add(WatchlistMovieEvent.fetchWatchlist());
    },
    expect:
        () => [
          WatchlistMovieState(state: RequestState.loading),
          WatchlistMovieState(
            state: RequestState.loaded,
            movies: [testWatchlistMovie],
          ),
        ],
  );

  blocTest(
    'should emit [loading, error] when getting data fails',
    build: () => createBloc(),
    setUp: () {
      when(
        mockGetWatchlistMovies.execute(),
      ).thenAnswer((_) async => Left(DatabaseFailure("Can't get data")));
    },
    act: (bloc) {
      bloc.add(WatchlistMovieEvent.fetchWatchlist());
    },
    expect:
        () => [
          WatchlistMovieState(state: RequestState.loading),
          WatchlistMovieState(
            state: RequestState.error,
            errorMessage: "Can't get data",
          ),
        ],
  );
}
