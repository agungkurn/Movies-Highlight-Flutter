import 'package:common/state_enum.dart';
import 'package:domain/entities/movie.dart';
import 'package:domain/usecases/get_popular_movies.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'popular_movies_bloc.freezed.dart';
part 'popular_movies_event.dart';
part 'popular_movies_state.dart';

class PopularMoviesBloc extends Bloc<PopularMoviesEvent, PopularMoviesState> {
  final GetPopularMovies getPopularMovies;

  PopularMoviesBloc(this.getPopularMovies) : super(PopularMoviesState()) {
    on<_FetchPopular>((event, emit) => _fetchPopularMovies(emit));
  }

  Future<void> _fetchPopularMovies(Emitter<PopularMoviesState> emit) async {
    emit(state.copyWith(state: RequestState.loading, errorMessage: null));

    final result = await getPopularMovies.execute();

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
