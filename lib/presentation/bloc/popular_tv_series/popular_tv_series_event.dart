part of 'popular_tv_series_bloc.dart';

@freezed
abstract class PopularTvSeriesEvent with _$PopularTvSeriesEvent {
  const factory PopularTvSeriesEvent.fetchPopular() = _FetchPopular;
}
