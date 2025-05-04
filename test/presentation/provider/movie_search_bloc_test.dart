import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:ditonton/common/failure.dart';
import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/movie.dart';
import 'package:ditonton/domain/usecases/search_movies.dart';
import 'package:ditonton/presentation/bloc/movie_search/movie_search_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'movie_search_bloc_test.mocks.dart';

@GenerateMocks([SearchMovies])
void main() {
  late MockSearchMovies mockSearchMovies;

  setUp(() {
    mockSearchMovies = MockSearchMovies();
  });

  final tMovieModel = Movie(
    adult: false,
    backdropPath: '/muth4OYamXf41G2evdrLEg8d3om.jpg',
    genreIds: [14, 28],
    id: 557,
    originalTitle: 'Spider-Man',
    overview:
        'After being bitten by a genetically altered spider, nerdy high school student Peter Parker is endowed with amazing powers to become the Amazing superhero known as Spider-Man.',
    popularity: 60.441,
    posterPath: '/rweIrveL43TaxUN0akQEaAXL6x0.jpg',
    releaseDate: '2002-05-01',
    title: 'Spider-Man',
    video: false,
    voteAverage: 7.2,
    voteCount: 13507,
  );
  final tMovieList = <Movie>[tMovieModel];
  final tQuery = 'spiderman';

  MovieSearchBloc createBloc() =>
      MovieSearchBloc(searchMovies: mockSearchMovies);

  group('search movies', () {
    blocTest<MovieSearchBloc, MovieSearchState>(
      'should emit loading state then loaded state when fetching search result success',
      build: () => createBloc(),
      setUp: () {
        when(
          mockSearchMovies.execute(tQuery),
        ).thenAnswer((_) async => Right(tMovieList));
      },
      act: (bloc) => bloc.add(MovieSearchEvent.search(tQuery)),
      expect:
          () => [
            MovieSearchState(state: RequestState.loading),
            MovieSearchState(
              state: RequestState.loaded,
              searchResult: tMovieList,
            ),
          ],
    );

    blocTest<MovieSearchBloc, MovieSearchState>(
      'should return error when data is unsuccessful',
      build: () => createBloc(),
      setUp: () {
        when(
          mockSearchMovies.execute(tQuery),
        ).thenAnswer((_) async => Left(ServerFailure('Server Failure')));
      },
      act: (bloc) => bloc.add(MovieSearchEvent.search(tQuery)),
      expect:
          () => [
            MovieSearchState(state: RequestState.loading),
            MovieSearchState(
              state: RequestState.error,
              errorMessage: 'Server Failure',
            ),
          ],
    );
  });
}
