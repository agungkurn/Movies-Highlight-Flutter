import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/tv_series.dart';
import 'package:ditonton/domain/usecases/search_tv_series.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tv_series_search_bloc.freezed.dart';
part 'tv_series_search_event.dart';
part 'tv_series_search_state.dart';

class TvSeriesSearchBloc
    extends Bloc<TvSeriesSearchEvent, TvSeriesSearchState> {
  final SearchTvSeries searchTvSeries;

  TvSeriesSearchBloc({required this.searchTvSeries})
    : super(TvSeriesSearchState()) {
    on<_Search>((event, emit) => _fetchTvSeriesSearch(event.query, emit));
  }

  Future<void> _fetchTvSeriesSearch(
    String query,
    Emitter<TvSeriesSearchState> emit,
  ) async {
    emit(state.copyWith(state: RequestState.loading, errorMessage: null));

    final result = await searchTvSeries.execute(query);
    result.fold(
      (failure) {
        emit(
          state.copyWith(
            state: RequestState.error,
            errorMessage: failure.message,
          ),
        );
      },
      (data) {
        emit(state.copyWith(state: RequestState.loaded, searchResult: data));
      },
    );
  }
}
