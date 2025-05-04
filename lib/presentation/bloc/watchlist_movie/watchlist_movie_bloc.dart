import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/movie.dart';
import 'package:ditonton/domain/usecases/get_watchlist_movies.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'watchlist_movie_bloc.freezed.dart';
part 'watchlist_movie_event.dart';
part 'watchlist_movie_state.dart';

class WatchlistMovieBloc
    extends Bloc<WatchlistMovieEvent, WatchlistMovieState> {
  WatchlistMovieBloc({required this.getWatchlistMovies})
    : super(WatchlistMovieState()) {
    on<_FetchWatchlist>((event, emit) => _fetchWatchlistMovies(emit));
  }

  final GetWatchlistMovies getWatchlistMovies;

  Future<void> _fetchWatchlistMovies(Emitter<WatchlistMovieState> emit) async {
    emit(state.copyWith(state: RequestState.loading, errorMessage: null));

    final result = await getWatchlistMovies.execute();
    result.fold(
      (failure) {
        emit(
          state.copyWith(
            state: RequestState.error,
            errorMessage: failure.message,
          ),
        );
      },
      (moviesData) {
        emit(state.copyWith(state: RequestState.loaded, movies: moviesData));
      },
    );
  }
}
