import 'package:common/state_enum.dart';
import 'package:domain/entities/movie.dart';
import 'package:domain/entities/movie_detail.dart';
import 'package:domain/usecases/get_movie_detail.dart';
import 'package:domain/usecases/get_movie_recommendations.dart';
import 'package:domain/usecases/get_movie_watchlist_status.dart';
import 'package:domain/usecases/remove_movie_watchlist.dart';
import 'package:domain/usecases/save_movie_watchlist.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_detail_bloc.freezed.dart';
part 'movie_detail_event.dart';
part 'movie_detail_state.dart';

class MovieDetailBloc extends Bloc<MovieDetailEvent, MovieDetailState> {
  final GetMovieDetail getMovieDetail;
  final GetMovieRecommendations getMovieRecommendations;
  final GetMovieWatchListStatus getWatchListStatus;
  final SaveMovieWatchlist saveWatchlist;
  final RemoveMovieWatchlist removeWatchlist;

  MovieDetailBloc({
    required this.getMovieDetail,
    required this.getMovieRecommendations,
    required this.getWatchListStatus,
    required this.saveWatchlist,
    required this.removeWatchlist,
  }) : super(MovieDetailState.initial()) {
    on<_FetchDetails>((event, emit) => _fetchMovieDetail(event, emit));
    on<_FetchRecommendations>(
      (event, emit) => _fetchRecommendations(event, emit),
    );
    on<_CheckWatchlistStatus>(
      (event, emit) => _loadWatchlistStatus(event.id, emit),
    );
    on<_AddToWatchlist>((event, emit) => _addWatchlist(event, emit));
    on<_RemoveFromWatchlist>(
      (event, emit) => _removeFromWatchlist(event, emit),
    );
  }

  Future<void> _fetchMovieDetail(
    _FetchDetails event,
    Emitter<MovieDetailState> emit,
  ) async {
    emit(
      state.copyWith(detailsState: RequestState.loading, errorMessage: null),
    );

    final detailResult = await getMovieDetail.execute(event.id);

    detailResult.fold(
      (failure) {
        emit(
          state.copyWith(
            detailsState: RequestState.error,
            errorMessage: failure.message,
          ),
        );
      },
      (movie) {
        emit(state.copyWith(detailsState: RequestState.loaded, movie: movie));
      },
    );
  }

  Future<void> _fetchRecommendations(
    _FetchRecommendations event,
    Emitter<MovieDetailState> emit,
  ) async {
    emit(
      state.copyWith(
        recommendationsState: RequestState.loading,
        errorMessage: null,
      ),
    );

    final recommendationResult = await getMovieRecommendations.execute(
      event.id,
    );

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
            movieRecommendations: recommendations,
          ),
        );
      },
    );
  }

  Future<void> _addWatchlist(
    _AddToWatchlist event,
    Emitter<MovieDetailState> emit,
  ) async {
    final result = await saveWatchlist.execute(event.movie);

    result.fold(
      (failure) {
        emit(state.copyWith(errorMessage: failure.message));
      },
      (successMessage) {
        emit(state.copyWith(watchlistMessage: successMessage));
      },
    );

    await _loadWatchlistStatus(event.movie.id, emit);
  }

  Future<void> _removeFromWatchlist(
    _RemoveFromWatchlist event,
    Emitter<MovieDetailState> emit,
  ) async {
    final result = await removeWatchlist.execute(event.movie);

    result.fold(
      (failure) {
        emit(state.copyWith(errorMessage: failure.message));
      },
      (successMessage) {
        emit(state.copyWith(watchlistMessage: successMessage));
      },
    );

    await _loadWatchlistStatus(event.movie.id, emit);
  }

  Future<void> _loadWatchlistStatus(
    int id,
    Emitter<MovieDetailState> emit,
  ) async {
    final result = await getWatchListStatus.execute(id);
    emit(state.copyWith(isInWatchlist: result));
  }
}
