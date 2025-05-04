part of 'tv_series_list_bloc.dart';

@freezed
abstract class TvSeriesListState with _$TvSeriesListState {
  const factory TvSeriesListState({
    @Default(RequestState.empty) RequestState nowAiringState,
    @Default(RequestState.empty) RequestState popularState,
    @Default(RequestState.empty) RequestState topRatedState,
    @Default(null) String? errorMessage,
    @Default([]) List<TvSeries> nowAiring,
    @Default([]) List<TvSeries> popular,
    @Default([]) List<TvSeries> topRated,
  }) = _TvSeriesListState;
}
