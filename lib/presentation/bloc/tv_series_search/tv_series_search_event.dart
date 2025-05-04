part of 'tv_series_search_bloc.dart';

@freezed
abstract class TvSeriesSearchEvent with _$TvSeriesSearchEvent {
  const factory TvSeriesSearchEvent.search(String query) = _Search;
}
