import 'package:common/state_enum.dart';
import 'package:domain/entities/tv_series.dart';
import 'package:domain/usecases/get_now_airing_tv_series.dart';
import 'package:domain/usecases/get_popular_tv_series.dart';
import 'package:domain/usecases/get_top_rated_tv_series.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tv_series_list_bloc.freezed.dart';
part 'tv_series_list_event.dart';
part 'tv_series_list_state.dart';

class TvSeriesListBloc extends Bloc<TvSeriesListEvent, TvSeriesListState> {
  TvSeriesListBloc({
    required this.getNowAiringTvSeries,
    required this.getPopularTvSeries,
    required this.getTopRatedTvSeries,
  }) : super(TvSeriesListState()) {
    on<_FetchNowAiring>((event, emit) => _fetchNowAiring(emit));
    on<_FetchPopular>((event, emit) => _fetchPopular(emit));
    on<_FetchTopRated>((event, emit) => _fetchTopRated(emit));
  }

  final GetNowAiringTvSeries getNowAiringTvSeries;
  final GetPopularTvSeries getPopularTvSeries;
  final GetTopRatedTvSeries getTopRatedTvSeries;

  Future<void> _fetchNowAiring(Emitter<TvSeriesListState> emit) async {
    emit(
      state.copyWith(nowAiringState: RequestState.loading, errorMessage: null),
    );

    final result = await getNowAiringTvSeries.execute();
    result.fold(
      (failure) {
        emit(
          state.copyWith(
            nowAiringState: RequestState.error,
            errorMessage: failure.message,
          ),
        );
      },
      (tvSeries) {
        emit(
          state.copyWith(
            nowAiringState: RequestState.loaded,
            nowAiring: tvSeries,
          ),
        );
      },
    );
  }

  Future<void> _fetchPopular(Emitter<TvSeriesListState> emit) async {
    emit(
      state.copyWith(popularState: RequestState.loading, errorMessage: null),
    );

    final result = await getPopularTvSeries.execute();
    result.fold(
      (failure) {
        emit(
          state.copyWith(
            popularState: RequestState.error,
            errorMessage: failure.message,
          ),
        );
      },
      (tvSeries) {
        emit(
          state.copyWith(popularState: RequestState.loaded, popular: tvSeries),
        );
      },
    );
  }

  Future<void> _fetchTopRated(Emitter<TvSeriesListState> emit) async {
    emit(
      state.copyWith(topRatedState: RequestState.loading, errorMessage: null),
    );

    final result = await getTopRatedTvSeries.execute();
    result.fold(
      (failure) {
        emit(
          state.copyWith(
            topRatedState: RequestState.error,
            errorMessage: failure.message,
          ),
        );
      },
      (tvSeries) {
        emit(
          state.copyWith(
            topRatedState: RequestState.loaded,
            topRated: tvSeries,
          ),
        );
      },
    );
  }
}
