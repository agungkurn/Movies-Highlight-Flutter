import 'package:common/state_enum.dart';
import 'package:domain/entities/movie.dart';
import 'package:domain/usecases/get_now_playing_movies.dart';
import 'package:domain/usecases/get_popular_movies.dart';
import 'package:domain/usecases/get_top_rated_movies.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_list_bloc.freezed.dart';
part 'movie_list_event.dart';
part 'movie_list_state.dart';

class MovieListBloc extends Bloc<MovieListEvent, MovieListState> {
  MovieListBloc({
    required this.getNowPlayingMovies,
    required this.getPopularMovies,
    required this.getTopRatedMovies,
  }) : super(MovieListState()) {
    on<_FetchNowPlaying>((event, emit) => _fetchNowPlayingMovies(emit));
    on<_FetchPopular>((event, emit) => _fetchPopularMovies(emit));
    on<_FetchTopRated>((event, emit) => _fetchTopRatedMovies(emit));
  }

  final GetNowPlayingMovies getNowPlayingMovies;
  final GetPopularMovies getPopularMovies;
  final GetTopRatedMovies getTopRatedMovies;

  Future<void> _fetchNowPlayingMovies(Emitter<MovieListState> emit) async {
    emit(
      state.copyWith(
        nowPlayingMoviesState: RequestState.loading,
        errorMessage: null,
      ),
    );

    final result = await getNowPlayingMovies.execute();
    result.fold(
      (failure) {
        emit(
          state.copyWith(
            nowPlayingMoviesState: RequestState.error,
            errorMessage: failure.message,
          ),
        );
      },
      (moviesData) {
        emit(
          state.copyWith(
            nowPlayingMoviesState: RequestState.loaded,
            nowPlayingMovies: moviesData,
          ),
        );
      },
    );
  }

  Future<void> _fetchPopularMovies(Emitter<MovieListState> emit) async {
    emit(
      state.copyWith(
        popularMoviesState: RequestState.loading,
        errorMessage: null,
      ),
    );

    final result = await getPopularMovies.execute();
    result.fold(
      (failure) {
        emit(
          state.copyWith(
            popularMoviesState: RequestState.error,
            errorMessage: failure.message,
          ),
        );
      },
      (moviesData) {
        emit(
          state.copyWith(
            popularMoviesState: RequestState.loaded,
            popularMovies: moviesData,
          ),
        );
      },
    );
  }

  Future<void> _fetchTopRatedMovies(Emitter<MovieListState> emit) async {
    emit(
      state.copyWith(
        topRatedMoviesState: RequestState.loading,
        errorMessage: null,
      ),
    );

    final result = await getTopRatedMovies.execute();
    result.fold(
      (failure) {
        emit(
          state.copyWith(
            topRatedMoviesState: RequestState.error,
            errorMessage: failure.message,
          ),
        );
      },
      (moviesData) {
        emit(
          state.copyWith(
            topRatedMoviesState: RequestState.loaded,
            topRatedMovies: moviesData,
          ),
        );
      },
    );
  }
}
