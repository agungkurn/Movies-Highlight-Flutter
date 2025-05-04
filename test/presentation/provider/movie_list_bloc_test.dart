import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:ditonton/common/failure.dart';
import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/movie.dart';
import 'package:ditonton/domain/usecases/get_now_playing_movies.dart';
import 'package:ditonton/domain/usecases/get_popular_movies.dart';
import 'package:ditonton/domain/usecases/get_top_rated_movies.dart';
import 'package:ditonton/presentation/bloc/movie_list/movie_list_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'movie_list_bloc_test.mocks.dart';

@GenerateMocks([GetNowPlayingMovies, GetPopularMovies, GetTopRatedMovies])
void main() {
  late MockGetNowPlayingMovies mockGetNowPlayingMovies;
  late MockGetPopularMovies mockGetPopularMovies;
  late MockGetTopRatedMovies mockGetTopRatedMovies;

  setUp(() {
    mockGetNowPlayingMovies = MockGetNowPlayingMovies();
    mockGetPopularMovies = MockGetPopularMovies();
    mockGetTopRatedMovies = MockGetTopRatedMovies();
  });

  final tMovie = Movie(
    adult: false,
    backdropPath: 'backdropPath',
    genreIds: [1, 2, 3],
    id: 1,
    originalTitle: 'originalTitle',
    overview: 'overview',
    popularity: 1,
    posterPath: 'posterPath',
    releaseDate: 'releaseDate',
    title: 'title',
    video: false,
    voteAverage: 1,
    voteCount: 1,
  );
  final tMovieList = <Movie>[tMovie];

  MovieListBloc createBloc() =>
      MovieListBloc(
        getNowPlayingMovies: mockGetNowPlayingMovies,
        getPopularMovies: mockGetPopularMovies,
        getTopRatedMovies: mockGetTopRatedMovies,
      );

  group('now playing movies', () {
    test('initialState should be Empty', () {
      // arrange & act
      final bloc = createBloc();

      // assert
      expect(bloc.state.nowPlayingMoviesState, equals(RequestState.empty));
    });

    blocTest<MovieListBloc, MovieListState>(
      'should emit loading state then loaded state when fetching now playing movies success',
      build: () => createBloc(),
      setUp: () {
        when(
          mockGetNowPlayingMovies.execute(),
        ).thenAnswer((_) async => Right(tMovieList));
      },
      act: (bloc) => bloc.add(MovieListEvent.fetchNowPlaying()),
      expect:
          () =>
      [
        MovieListState(nowPlayingMoviesState: RequestState.loading),
        MovieListState(
          nowPlayingMoviesState: RequestState.loaded,
          nowPlayingMovies: tMovieList,
        ),
      ],
      verify: (bloc) {
        verify(mockGetNowPlayingMovies.execute());
      },
    );

    blocTest<MovieListBloc, MovieListState>(
      'should emit error state when fetching now playing movies failed',
      build: () => createBloc(),
      setUp: () {
        when(
          mockGetNowPlayingMovies.execute(),
        ).thenAnswer((_) async => Left(ServerFailure('Server Failure')));
      },
      act: (bloc) => bloc.add(MovieListEvent.fetchNowPlaying()),
      expect:
          () =>
      [
        MovieListState(nowPlayingMoviesState: RequestState.loading),
        MovieListState(
          nowPlayingMoviesState: RequestState.error,
          errorMessage: 'Server Failure',
        ),
      ],
    );
  });

  group('popular movies', () {
    blocTest<MovieListBloc, MovieListState>(
      'should emit loading state then loaded state when fetching popular movies success',
      build: () => createBloc(),
      setUp: () {
        when(
          mockGetPopularMovies.execute(),
        ).thenAnswer((_) async => Right(tMovieList));
      },
      act: (bloc) => bloc.add(MovieListEvent.fetchPopular()),
      expect:
          () =>
      [
        MovieListState(popularMoviesState: RequestState.loading),
        MovieListState(
          popularMoviesState: RequestState.loaded,
          popularMovies: tMovieList,
        ),
      ],
      verify: (bloc) {
        verify(mockGetPopularMovies.execute());
      },
    );

    blocTest<MovieListBloc, MovieListState>(
      'should emit error state when fetching popular movies failed',
      build: () => createBloc(),
      setUp: () {
        when(
          mockGetPopularMovies.execute(),
        ).thenAnswer((_) async => Left(ServerFailure('Server Failure')));
      },
      act: (bloc) => bloc.add(MovieListEvent.fetchPopular()),
      expect:
          () =>
      [
        MovieListState(popularMoviesState: RequestState.loading),
        MovieListState(
          popularMoviesState: RequestState.error,
          errorMessage: 'Server Failure',
        ),
      ],
    );
  });

  group('top rated movies', () {
    blocTest<MovieListBloc, MovieListState>(
        'should emit loading state then loaded state when fetching top rated movies success',
        build: () => createBloc(),
        setUp: () {
          when(
            mockGetTopRatedMovies.execute(),
          ).thenAnswer((_) async => Right(tMovieList));
        },
        act: (bloc) => bloc.add(MovieListEvent.fetchTopRated()),
        expect:
            () =>
        [
          MovieListState(topRatedMoviesState: RequestState.loading),
          MovieListState(
            topRatedMoviesState: RequestState.loaded,
            topRatedMovies: tMovieList,
          ),
        ],
        verify: (bloc) {
          verify(mockGetTopRatedMovies.execute());
        }
    );

    blocTest<MovieListBloc, MovieListState>(
      'should emit error state when fetching top rated movies failed',
      build: () => createBloc(),
      setUp: () {
        when(
          mockGetTopRatedMovies.execute(),
        ).thenAnswer((_) async => Left(ServerFailure('Server Failure')));
      },
      act: (bloc) => bloc.add(MovieListEvent.fetchTopRated()),
      expect:
          () =>
      [
        MovieListState(topRatedMoviesState: RequestState.loading),
        MovieListState(
          topRatedMoviesState: RequestState.error,
          errorMessage: 'Server Failure',
        ),
      ],
    );
  });
}
