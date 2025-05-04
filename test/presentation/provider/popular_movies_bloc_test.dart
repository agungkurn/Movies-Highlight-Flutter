import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:ditonton/common/failure.dart';
import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/movie.dart';
import 'package:ditonton/domain/usecases/get_popular_movies.dart';
import 'package:ditonton/presentation/bloc/popular_movies/popular_movies_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'movie_list_bloc_test.mocks.dart';

@GenerateMocks([GetPopularMovies])
void main() {
  late MockGetPopularMovies mockGetPopularMovies;

  setUp(() {
    mockGetPopularMovies = MockGetPopularMovies();
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

  PopularMoviesBloc createBloc() => PopularMoviesBloc(mockGetPopularMovies);

  blocTest(
    'should emit loading state then loaded state when fetching popular movie success',
    build: () => createBloc(),
    setUp: () {
      when(
        mockGetPopularMovies.execute(),
      ).thenAnswer((_) async => Right(tMovieList));
    },
    act: (bloc) {
      bloc.add(PopularMoviesEvent.fetchPopular());
    },
    expect:
        () => [
          PopularMoviesState(state: RequestState.loading),
          PopularMoviesState(state: RequestState.loaded, movies: tMovieList),
        ],
  );

  blocTest(
    'should change state to loading when usecase is called',
    build: () => createBloc(),
    setUp: () {
      when(
        mockGetPopularMovies.execute(),
      ).thenAnswer((_) async => Left(ServerFailure('message')));
    },
    act: (bloc) {
      bloc.add(PopularMoviesEvent.fetchPopular());
    },
    expect:
        () => [
          PopularMoviesState(state: RequestState.loading),
          PopularMoviesState(
            state: RequestState.error,
            errorMessage: 'message',
          ),
        ],
  );
}
