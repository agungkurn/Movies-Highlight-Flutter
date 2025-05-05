part of 'tv_series_detail_bloc.dart';

@freezed
abstract class TvSeriesDetailEvent with _$TvSeriesDetailEvent {
  const factory TvSeriesDetailEvent.fetchDetails(int id) = _FetchDetails;

  const factory TvSeriesDetailEvent.fetchRecommendations(int id) =
      _FetchRecommendations;

  const factory TvSeriesDetailEvent.checkWatchlistStatus(int id) =
      _CheckWatchlistStatus;

  const factory TvSeriesDetailEvent.addToWatchlist(TvSeriesDetails tvSeries) =
      _AddToWatchlist;

  const factory TvSeriesDetailEvent.removeFromWatchlist(
    TvSeriesDetails tvSeries,
  ) = _RemoveFromWatchlist;
}
