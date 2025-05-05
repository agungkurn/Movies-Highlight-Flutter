import 'package:common/state_enum.dart';
import 'package:domain/entities/movie.dart';
import 'package:domain/usecases/get_top_rated_movies.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_rated_movies_bloc.freezed.dart';
part 'top_rated_movies_event.dart';
part 'top_rated_movies_state.dart';

class TopRatedMoviesBloc
    extends Bloc<TopRatedMoviesEvent, TopRatedMoviesState> {
  final GetTopRatedMovies getTopRatedMovies;

  TopRatedMoviesBloc({required this.getTopRatedMovies})
    : super(TopRatedMoviesState()) {
    on<_FetchTopRated>((event, emit) => _fetchTopRatedMovies(emit));
  }

  Future<void> _fetchTopRatedMovies(Emitter<TopRatedMoviesState> emit) async {
    emit(state.copyWith(state: RequestState.loading, errorMessage: null));

    final result = await getTopRatedMovies.execute();

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
