part of 'watchlist_tv_series_bloc.dart';

@freezed
abstract class WatchlistTvSeriesState with _$WatchlistTvSeriesState {
  const factory WatchlistTvSeriesState({
    @Default(RequestState.empty) RequestState state,
    @Default([]) List<TvSeries> tvSeries,
    @Default(null) String? errorMessage,
  }) = _WatchlistTvSeriesState;
}
