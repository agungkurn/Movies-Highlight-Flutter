import 'package:bloc_test/bloc_test.dart';
import 'package:common/failure.dart';
import 'package:common/state_enum.dart';
import 'package:dartz/dartz.dart';
import 'package:details/bloc/movie_details/movie_detail_bloc.dart';
import 'package:domain/entities/movie.dart';
import 'package:domain/usecases/get_movie_detail.dart';
import 'package:domain/usecases/get_movie_recommendations.dart';
import 'package:domain/usecases/get_movie_watchlist_status.dart';
import 'package:domain/usecases/remove_movie_watchlist.dart';
import 'package:domain/usecases/save_movie_watchlist.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../dummy_data/dummy_objects.dart';
import 'movie_detail_bloc_test.mocks.dart';

@GenerateMocks([
  GetMovieDetail,
  GetMovieRecommendations,
  GetMovieWatchListStatus,
  SaveMovieWatchlist,
  RemoveMovieWatchlist,
])
void main() {
  late MockGetMovieDetail mockGetMovieDetail;
  late MockGetMovieRecommendations mockGetMovieRecommendations;
  late MockGetMovieWatchListStatus mockGetWatchlistStatus;
  late MockSaveMovieWatchlist mockSaveWatchlist;
  late MockRemoveMovieWatchlist mockRemoveWatchlist;

  setUp(() {
    mockGetMovieDetail = MockGetMovieDetail();
    mockGetMovieRecommendations = MockGetMovieRecommendations();
    mockGetWatchlistStatus = MockGetMovieWatchListStatus();
    mockSaveWatchlist = MockSaveMovieWatchlist();
    mockRemoveWatchlist = MockRemoveMovieWatchlist();
  });

  final tId = 1;

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
  final tMovies = <Movie>[tMovie];

  MovieDetailBloc createBloc() => MovieDetailBloc(
    getMovieDetail: mockGetMovieDetail,
    getMovieRecommendations: mockGetMovieRecommendations,
    getWatchListStatus: mockGetWatchlistStatus,
    saveWatchlist: mockSaveWatchlist,
    removeWatchlist: mockRemoveWatchlist,
  );

  group('Get Movie Detail', () {
    test('initial state should be correct', () {
      final bloc = createBloc();
      expect(bloc.state, MovieDetailState.initial());
    });

    blocTest(
      'should emit loading state then loaded state when fetching movie detail success',
      build: () => createBloc(),
      setUp: () {
        when(
          mockGetMovieDetail.execute(tId),
        ).thenAnswer((_) async => Right(testMovieDetail));
      },
      act: (bloc) => bloc.add(MovieDetailEvent.fetchDetails(tId)),
      expect:
          () => [
            MovieDetailState(
              detailsState: RequestState.loading,
              errorMessage: null,
            ),
            MovieDetailState(
              detailsState: RequestState.loaded,
              movie: testMovieDetail,
            ),
          ],
      verify: (bloc) {
        verify(mockGetMovieDetail.execute(tId));
      },
    );

    blocTest(
      'should emit error state when fetching movie detail failed',
      build: () => createBloc(),
      setUp: () {
        when(
          mockGetMovieDetail.execute(tId),
        ).thenAnswer((_) async => Left(ServerFailure('message')));
      },
      act: (bloc) => bloc.add(MovieDetailEvent.fetchDetails(tId)),
      expect:
          () => [
            MovieDetailState(
              detailsState: RequestState.loading,
              errorMessage: null,
            ),
            MovieDetailState(
              detailsState: RequestState.error,
              errorMessage: 'message',
            ),
          ],
    );
  });

  group('Get Movie Recommendations', () {
    blocTest(
      'should emit loading state then loaded state when fetching movie recommendations success',
      build: () => createBloc(),
      setUp: () {
        when(
          mockGetMovieRecommendations.execute(tId),
        ).thenAnswer((_) async => Right(tMovies));
      },
      act: (bloc) => bloc.add(MovieDetailEvent.fetchRecommendations(tId)),
      expect:
          () => [
            MovieDetailState(
              recommendationsState: RequestState.loading,
              errorMessage: null,
            ),
            MovieDetailState(
              recommendationsState: RequestState.loaded,
              movieRecommendations: tMovies,
            ),
          ],
    );

    blocTest(
      'should emit error state when fetching movie recommendations failed',
      build: () => createBloc(),
      setUp: () {
        when(
          mockGetMovieRecommendations.execute(tId),
        ).thenAnswer((_) async => Left(ServerFailure('Failed')));
      },
      act: (bloc) => bloc.add(MovieDetailEvent.fetchRecommendations(tId)),
      expect:
          () => [
            MovieDetailState(
              recommendationsState: RequestState.loading,
              errorMessage: null,
            ),
            MovieDetailState(
              recommendationsState: RequestState.error,
              errorMessage: 'Failed',
            ),
          ],
    );
  });

  group('Watchlist', () {
    blocTest<MovieDetailBloc, MovieDetailState>(
      'should update watchlist status',
      build: () => createBloc(),
      setUp: () {
        when(mockGetWatchlistStatus.execute(tId)).thenAnswer((_) async => true);
      },
      act: (bloc) => bloc.add(MovieDetailEvent.checkWatchlistStatus(tId)),
      expect: () => [MovieDetailState(isInWatchlist: true)],
      verify: (bloc) {
        verify(mockGetWatchlistStatus.execute(tId));
      },
    );

    blocTest<MovieDetailBloc, MovieDetailState>(
      'should emit success message when adding to watchlist succeeds',
      build: () => createBloc(),
      setUp: () {
        when(
          mockSaveWatchlist.execute(testMovieDetail),
        ).thenAnswer((_) async => Right('Added to Watchlist'));
        when(
          mockGetWatchlistStatus.execute(testMovieDetail.id),
        ).thenAnswer((_) async => true);
      },
      act: (bloc) => bloc.add(MovieDetailEvent.addToWatchlist(testMovieDetail)),
      expect:
          () => [
            MovieDetailState(watchlistMessage: 'Added to Watchlist'),
            MovieDetailState(
              watchlistMessage: 'Added to Watchlist',
              isInWatchlist: true,
            ),
          ],
      verify: (bloc) {
        verify(mockSaveWatchlist.execute(testMovieDetail));
        verify(mockGetWatchlistStatus.execute(testMovieDetail.id));
      },
    );

    blocTest<MovieDetailBloc, MovieDetailState>(
      'should emit success message when removing from watchlist succeeds',
      build: () => createBloc(),
      setUp: () {
        when(
          mockRemoveWatchlist.execute(testMovieDetail),
        ).thenAnswer((_) async => Right('Removed from Watchlist'));
        when(
          mockGetWatchlistStatus.execute(testMovieDetail.id),
        ).thenAnswer((_) async => false);
      },
      act:
          (bloc) =>
              bloc.add(MovieDetailEvent.removeFromWatchlist(testMovieDetail)),
      expect:
          () => [
            MovieDetailState(
              watchlistMessage: 'Removed from Watchlist',
              isInWatchlist: false,
            ),
          ],
      verify: (bloc) {
        verify(mockRemoveWatchlist.execute(testMovieDetail));
        verify(mockGetWatchlistStatus.execute(testMovieDetail.id));
      },
    );
  });
}
