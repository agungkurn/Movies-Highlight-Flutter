import 'package:bloc_test/bloc_test.dart';
import 'package:common/failure.dart';
import 'package:common/state_enum.dart';
import 'package:dartz/dartz.dart';
import 'package:details/bloc/tv_series_details/tv_series_detail_bloc.dart';
import 'package:domain/entities/tv_series.dart';
import 'package:domain/usecases/get_tv_series_detail.dart';
import 'package:domain/usecases/get_tv_series_recommendations.dart';
import 'package:domain/usecases/get_tv_series_watchlist_status.dart';
import 'package:domain/usecases/remove_tv_series_watchlist.dart';
import 'package:domain/usecases/save_tv_series_watchlist.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../dummy_data/dummy_objects.dart';
import 'tv_series_detail_bloc_test.mocks.dart';

@GenerateMocks([
  GetTvSeriesDetail,
  GetTvSeriesRecommendations,
  GetTvSeriesWatchListStatus,
  SaveTvSeriesWatchlist,
  RemoveTvSeriesWatchlist,
])
void main() {
  late MockGetTvSeriesDetail mockGetTvDetail;
  late MockGetTvSeriesRecommendations mockGetTvRecommendations;
  late MockGetTvSeriesWatchListStatus mockGetWatchlistStatus;
  late MockSaveTvSeriesWatchlist mockSaveWatchlist;
  late MockRemoveTvSeriesWatchlist mockRemoveWatchlist;

  setUp(() {
    mockGetTvDetail = MockGetTvSeriesDetail();
    mockGetTvRecommendations = MockGetTvSeriesRecommendations();
    mockGetWatchlistStatus = MockGetTvSeriesWatchListStatus();
    mockSaveWatchlist = MockSaveTvSeriesWatchlist();
    mockRemoveWatchlist = MockRemoveTvSeriesWatchlist();
  });

  final tId = 1;

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

  TvSeriesDetailBloc createBloc() => TvSeriesDetailBloc(
    getTvSeriesDetail: mockGetTvDetail,
    getTvSeriesRecommendations: mockGetTvRecommendations,
    getWatchListStatus: mockGetWatchlistStatus,
    saveWatchlist: mockSaveWatchlist,
    removeWatchlist: mockRemoveWatchlist,
  );

  group('Get TV Series Detail', () {
    blocTest(
      'should emit [loading, loaded] when data is fetched successfully',
      build: () => createBloc(),
      setUp: () {
        when(
          mockGetTvDetail.execute(tId),
        ).thenAnswer((_) async => Right(testTvSeriesDetail));
      },
      act: (bloc) => bloc.add(TvSeriesDetailEvent.fetchDetails(tId)),
      expect:
          () => [
            TvSeriesDetailState(detailsState: RequestState.loading),
            TvSeriesDetailState(
              detailsState: RequestState.loaded,
              tvSeries: testTvSeriesDetail,
            ),
          ],
      verify: (bloc) {
        verify(mockGetTvDetail.execute(tId));
      },
    );

    blocTest(
      'should emit [loading, error] when getting data fails',
      build: () => createBloc(),
      setUp: () {
        when(
          mockGetTvDetail.execute(tId),
        ).thenAnswer((_) async => Left(ServerFailure('Server Failure')));
      },
      act: (bloc) => bloc.add(TvSeriesDetailEvent.fetchDetails(tId)),
      expect:
          () => [
            TvSeriesDetailState(detailsState: RequestState.loading),
            TvSeriesDetailState(
              detailsState: RequestState.error,
              errorMessage: 'Server Failure',
            ),
          ],
      verify: (bloc) {
        verify(mockGetTvDetail.execute(tId));
      },
    );
  });

  group('Get TV Series Recommendations', () {
    blocTest(
      'should emit recommendations [loading, loaded] when data is fetched successfully',
      build: () => createBloc(),
      setUp: () {
        when(
          mockGetTvRecommendations.execute(tId),
        ).thenAnswer((_) async => Right(tTvSeries));
      },
      act: (bloc) => bloc.add(TvSeriesDetailEvent.fetchRecommendations(tId)),
      expect:
          () => [
            TvSeriesDetailState(recommendationsState: RequestState.loading),
            TvSeriesDetailState(
              recommendationsState: RequestState.loaded,
              tvSeriesRecommendations: tTvSeries,
            ),
          ],
      verify: (bloc) {
        verify(mockGetTvRecommendations.execute(tId));
      },
    );

    blocTest(
      'should emit recommendations [loading, error] when getting data fails',
      build: () => createBloc(),
      setUp: () {
        when(
          mockGetTvRecommendations.execute(tId),
        ).thenAnswer((_) async => Left(ServerFailure('Failed')));
      },
      act: (bloc) => bloc.add(TvSeriesDetailEvent.fetchRecommendations(tId)),
      expect:
          () => [
            TvSeriesDetailState(recommendationsState: RequestState.loading),
            TvSeriesDetailState(
              recommendationsState: RequestState.error,
              errorMessage: 'Failed',
            ),
          ],
      verify: (bloc) {
        verify(mockGetTvRecommendations.execute(tId));
      },
    );
  });

  group('Watchlist Status', () {
    blocTest(
      'should get watchlist status',
      build: () => createBloc(),
      setUp: () {
        when(mockGetWatchlistStatus.execute(tId)).thenAnswer((_) async => true);
      },
      act: (bloc) => bloc.add(TvSeriesDetailEvent.checkWatchlistStatus(tId)),
      expect: () => [TvSeriesDetailState(isInWatchlist: true)],
      verify: (bloc) {
        verify(mockGetWatchlistStatus.execute(tId));
      },
    );
  });

  group('Add to Watchlist', () {
    blocTest(
      'should update watchlist status when adding to watchlist succeeds',
      build: () => createBloc(),
      setUp: () {
        when(
          mockSaveWatchlist.execute(testTvSeriesDetail),
        ).thenAnswer((_) async => Right('Added to Watchlist'));
        when(
          mockGetWatchlistStatus.execute(testTvSeriesDetail.id),
        ).thenAnswer((_) async => true);
      },
      act:
          (bloc) =>
              bloc.add(TvSeriesDetailEvent.addToWatchlist(testTvSeriesDetail)),
      expect:
          () => [
            TvSeriesDetailState(watchlistMessage: 'Added to Watchlist'),
            TvSeriesDetailState(
              watchlistMessage: 'Added to Watchlist',
              isInWatchlist: true,
            ),
          ],
      verify: (bloc) {
        verify(mockSaveWatchlist.execute(testTvSeriesDetail));
        verify(mockGetWatchlistStatus.execute(testTvSeriesDetail.id));
      },
    );

    blocTest(
      'should update watchlist message when adding to watchlist fails',
      build: () => createBloc(),
      setUp: () {
        when(
          mockSaveWatchlist.execute(testTvSeriesDetail),
        ).thenAnswer((_) async => Left(DatabaseFailure('Failed')));
        when(
          mockGetWatchlistStatus.execute(testTvSeriesDetail.id),
        ).thenAnswer((_) async => false);
      },
      act:
          (bloc) =>
              bloc.add(TvSeriesDetailEvent.addToWatchlist(testTvSeriesDetail)),
      expect:
          () => [
            TvSeriesDetailState(errorMessage: 'Failed', isInWatchlist: false),
          ],
      verify: (bloc) {
        verify(mockSaveWatchlist.execute(testTvSeriesDetail));
        verify(mockGetWatchlistStatus.execute(testTvSeriesDetail.id));
      },
    );
  });

  group('Remove from Watchlist', () {
    blocTest(
      'should update watchlist status when removing from watchlist succeeds',
      build: () => createBloc(),
      setUp: () {
        when(
          mockRemoveWatchlist.execute(testTvSeriesDetail),
        ).thenAnswer((_) async => Right('Removed from Watchlist'));
        when(
          mockGetWatchlistStatus.execute(testTvSeriesDetail.id),
        ).thenAnswer((_) async => false);
      },
      act:
          (bloc) => bloc.add(
            TvSeriesDetailEvent.removeFromWatchlist(testTvSeriesDetail),
          ),
      expect:
          () => [
            TvSeriesDetailState(
              watchlistMessage: 'Removed from Watchlist',
              isInWatchlist: false,
            ),
          ],
      verify: (bloc) {
        verify(mockRemoveWatchlist.execute(testTvSeriesDetail));
        verify(mockGetWatchlistStatus.execute(testTvSeriesDetail.id));
      },
    );

    blocTest(
      'should update watchlist message when removing from watchlist fails',
      build: () => createBloc(),
      setUp: () {
        when(
          mockRemoveWatchlist.execute(testTvSeriesDetail),
        ).thenAnswer((_) async => Left(DatabaseFailure('Failed')));
        when(
          mockGetWatchlistStatus.execute(testTvSeriesDetail.id),
        ).thenAnswer((_) async => true);
      },
      act:
          (bloc) => bloc.add(
            TvSeriesDetailEvent.removeFromWatchlist(testTvSeriesDetail),
          ),
      expect:
          () => [
            TvSeriesDetailState(errorMessage: 'Failed'),
            TvSeriesDetailState(errorMessage: 'Failed', isInWatchlist: true),
          ],
      verify: (bloc) {
        verify(mockRemoveWatchlist.execute(testTvSeriesDetail));
        verify(mockGetWatchlistStatus.execute(testTvSeriesDetail.id));
      },
    );
  });
}
