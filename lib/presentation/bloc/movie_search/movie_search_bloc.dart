import 'package:common/state_enum.dart';
import 'package:domain/entities/movie.dart';
import 'package:domain/usecases/search_movies.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_search_bloc.freezed.dart';
part 'movie_search_event.dart';
part 'movie_search_state.dart';

class MovieSearchBloc extends Bloc<MovieSearchEvent, MovieSearchState> {
  final SearchMovies searchMovies;

  MovieSearchBloc({required this.searchMovies}) : super(MovieSearchState()) {
    on<_Search>((event, emit) => _fetchMovieSearch(event.query, emit));
  }

  Future<void> _fetchMovieSearch(
    String query,
    Emitter<MovieSearchState> emit,
  ) async {
    emit(state.copyWith(state: RequestState.loading, errorMessage: null));

    final result = await searchMovies.execute(query);
    result.fold(
      (failure) {
        emit(
          state.copyWith(
            state: RequestState.error,
            errorMessage: failure.message,
          ),
        );
      },
      (data) {
        emit(state.copyWith(state: RequestState.loaded, searchResult: data));
      },
    );
  }
}
