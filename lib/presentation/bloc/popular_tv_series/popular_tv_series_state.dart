part of 'popular_tv_series_bloc.dart';

@freezed
abstract class PopularTvSeriesState with _$PopularTvSeriesState {
  const factory PopularTvSeriesState({
    @Default(RequestState.empty) RequestState state,
    @Default(null) String? errorMessage,
    @Default([]) List<TvSeries> tvSeries,
  }) = _PopularTvSeriesState;
}
