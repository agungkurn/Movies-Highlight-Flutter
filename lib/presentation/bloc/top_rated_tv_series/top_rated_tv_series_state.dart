part of 'top_rated_tv_series_bloc.dart';

@freezed
abstract class TopRatedTvSeriesState with _$TopRatedTvSeriesState {
  const factory TopRatedTvSeriesState({
    @Default(RequestState.empty) RequestState state,
    @Default(null) String? errorMessage,
    @Default([]) List<TvSeries> tvSeries,
  }) = _TopRatedTvSeriesState;
}
