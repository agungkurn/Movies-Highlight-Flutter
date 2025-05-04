part of 'tv_series_search_bloc.dart';

@freezed
abstract class TvSeriesSearchState with _$TvSeriesSearchState {
  const factory TvSeriesSearchState({
    @Default(RequestState.empty) RequestState state,
    @Default([]) List<TvSeries> searchResult,
    @Default(null) String? errorMessage,
  }) = _TvSeriesSearchState;
}
