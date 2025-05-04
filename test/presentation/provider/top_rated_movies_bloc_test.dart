import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:ditonton/common/failure.dart';
import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/movie.dart';
import 'package:ditonton/domain/usecases/get_top_rated_movies.dart';
import 'package:ditonton/presentation/bloc/top_rated_movies/top_rated_movies_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'movie_list_bloc_test.mocks.dart';

@GenerateMocks([GetTopRatedMovies])
void main() {
  late MockGetTopRatedMovies mockGetTopRatedMovies;

  setUp(() {
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

  TopRatedMoviesBloc createBloc() =>
      TopRatedMoviesBloc(getTopRatedMovies: mockGetTopRatedMovies);

  blocTest(
    'should emit loading state then loaded state when fetching top rated movies success',
    build: () => createBloc(),
    setUp: () {
      when(
        mockGetTopRatedMovies.execute(),
      ).thenAnswer((_) async => Right(tMovieList));
    },
    act: (bloc) {
      bloc.add(TopRatedMoviesEvent.fetchTopRated());
    },
    expect:
        () => [
          TopRatedMoviesState(state: RequestState.loading),
          TopRatedMoviesState(state: RequestState.loaded, movies: tMovieList),
        ],
  );

  blocTest(
    'should emit error state when fetching top rated movies failed',
    build: () => createBloc(),
    setUp: () {
      when(
        mockGetTopRatedMovies.execute(),
      ).thenAnswer((_) async => Left(ServerFailure('message')));
    },
    act: (bloc) => bloc.add(TopRatedMoviesEvent.fetchTopRated()),
    expect:
        () => [
          TopRatedMoviesState(state: RequestState.loading),
          TopRatedMoviesState(
            state: RequestState.error,
            errorMessage: 'message',
          ),
        ],
  );
}
