part of 'tv_series_list_bloc.dart';

@freezed
class TvSeriesListEvent with _$TvSeriesListEvent {
  const factory TvSeriesListEvent.fetchNowAiring() = _FetchNowAiring;

  const factory TvSeriesListEvent.fetchPopular() = _FetchPopular;

  const factory TvSeriesListEvent.fetchTopRated() = _FetchTopRated;
}
