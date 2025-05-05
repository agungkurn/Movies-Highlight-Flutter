import 'package:common/state_enum.dart';
import 'package:domain/entities/tv_series.dart';
import 'package:domain/entities/tv_series_details.dart';
import 'package:domain/usecases/get_tv_series_detail.dart';
import 'package:domain/usecases/get_tv_series_recommendations.dart';
import 'package:domain/usecases/get_tv_series_watchlist_status.dart';
import 'package:domain/usecases/remove_tv_series_watchlist.dart';
import 'package:domain/usecases/save_tv_series_watchlist.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tv_series_detail_bloc.freezed.dart';
part 'tv_series_detail_event.dart';
part 'tv_series_detail_state.dart';

class TvSeriesDetailBloc
    extends Bloc<TvSeriesDetailEvent, TvSeriesDetailState> {
  static const watchlistAddSuccessMessage = 'Added to Watchlist';
  static const watchlistRemoveSuccessMessage = 'Removed from Watchlist';

  final GetTvSeriesDetail getTvSeriesDetail;
  final GetTvSeriesRecommendations getTvSeriesRecommendations;
  final GetTvSeriesWatchListStatus getWatchListStatus;
  final SaveTvSeriesWatchlist saveWatchlist;
  final RemoveTvSeriesWatchlist removeWatchlist;

  TvSeriesDetailBloc({
    required this.getTvSeriesDetail,
    required this.getTvSeriesRecommendations,
    required this.getWatchListStatus,
    required this.saveWatchlist,
    required this.removeWatchlist,
  }) : super(TvSeriesDetailState()) {
    on<_FetchDetails>((event, emit) => _fetchDetail(event.id, emit));
    on<_FetchRecommendations>(
      (event, emit) => _fetchRecommendations(event.id, emit),
    );
    on<_CheckWatchlistStatus>(
      (event, emit) => _loadWatchlistStatus(event.id, emit),
    );
    on<_AddToWatchlist>((event, emit) => _addWatchlist(event.tvSeries, emit));
    on<_RemoveFromWatchlist>(
      (event, emit) => _removeFromWatchlist(event.tvSeries, emit),
    );
  }

  Future<void> _fetchDetail(int id, Emitter<TvSeriesDetailState> emit) async {
    emit(
      state.copyWith(detailsState: RequestState.loading, errorMessage: null),
    );

    final detailResult = await getTvSeriesDetail.execute(id);
    detailResult.fold(
      (failure) {
        emit(
          state.copyWith(
            detailsState: RequestState.error,
            errorMessage: failure.message,
          ),
        );
      },
      (tvSeriesDetails) {
        emit(
          state.copyWith(
            detailsState: RequestState.loaded,
            tvSeries: tvSeriesDetails,
          ),
        );
      },
    );
  }

  Future<void> _fetchRecommendations(
    int id,
    Emitter<TvSeriesDetailState> emit,
  ) async {
    emit(
      state.copyWith(
        recommendationsState: RequestState.loading,
        errorMessage: null,
      ),
    );

    final recommendationResult = await getTvSeriesRecommendations.execute(id);
    recommendationResult.fold(
      (failure) {
        emit(
          state.copyWith(
            recommendationsState: RequestState.error,
            errorMessage: failure.message,
          ),
        );
      },
      (recommendations) {
        emit(
          state.copyWith(
            recommendationsState: RequestState.loaded,
            tvSeriesRecommendations: recommendations,
          ),
        );
      },
    );
  }

  Future<void> _addWatchlist(
    TvSeriesDetails tvSeries,
    Emitter<TvSeriesDetailState> emit,
  ) async {
    final result = await saveWatchlist.execute(tvSeries);
    result.fold(
      (failure) {
        emit(state.copyWith(errorMessage: failure.message));
      },
      (successMessage) {
        emit(state.copyWith(watchlistMessage: successMessage));
      },
    );

    await _loadWatchlistStatus(tvSeries.id, emit);
  }

  Future<void> _removeFromWatchlist(
    TvSeriesDetails tvSeries,
    Emitter<TvSeriesDetailState> emit,
  ) async {
    final result = await removeWatchlist.execute(tvSeries);
    result.fold(
      (failure) {
        emit(state.copyWith(errorMessage: failure.message));
      },
      (successMessage) {
        emit(state.copyWith(watchlistMessage: successMessage));
      },
    );

    await _loadWatchlistStatus(tvSeries.id, emit);
  }

  Future<void> _loadWatchlistStatus(
    int id,
    Emitter<TvSeriesDetailState> emit,
  ) async {
    final result = await getWatchListStatus.execute(id);
    emit(state.copyWith(isInWatchlist: result));
  }
}
