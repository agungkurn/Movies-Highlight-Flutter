part of 'tv_series_detail_bloc.dart';

@freezed
abstract class TvSeriesDetailState with _$TvSeriesDetailState {
  const factory TvSeriesDetailState({
    @Default(RequestState.empty) RequestState detailsState,
    @Default(RequestState.empty) RequestState recommendationsState,
    @Default(null) String? errorMessage,
    @Default(null) String? watchlistMessage,
    @Default(null) TvSeriesDetails? tvSeries,
    @Default([]) List<TvSeries> tvSeriesRecommendations,
    @Default(false) bool isInWatchlist,
  }) = _TvSeriesDetailState;
}
