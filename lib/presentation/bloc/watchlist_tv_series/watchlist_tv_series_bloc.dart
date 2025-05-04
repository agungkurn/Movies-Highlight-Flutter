import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/tv_series.dart';
import 'package:ditonton/domain/usecases/get_watchlist_tv_series.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'watchlist_tv_series_bloc.freezed.dart';
part 'watchlist_tv_series_event.dart';
part 'watchlist_tv_series_state.dart';

class WatchlistTvSeriesBloc
    extends Bloc<WatchlistTvSeriesEvent, WatchlistTvSeriesState> {
  WatchlistTvSeriesBloc({required this.getWatchlistTvSeries})
    : super(WatchlistTvSeriesState()) {
    on<_FetchWatchlist>((event, emit) => _fetchWatchlist(emit));
  }

  final GetWatchlistTvSeries getWatchlistTvSeries;

  Future<void> _fetchWatchlist(Emitter<WatchlistTvSeriesState> emit) async {
    emit(state.copyWith(state: RequestState.loading, errorMessage: null));

    final result = await getWatchlistTvSeries.execute();
    result.fold(
      (failure) {
        emit(
          state.copyWith(
            state: RequestState.error,
            errorMessage: failure.message,
          ),
        );
      },
      (tvSeries) {
        emit(state.copyWith(state: RequestState.loaded, tvSeries: tvSeries));
      },
    );
  }
}
