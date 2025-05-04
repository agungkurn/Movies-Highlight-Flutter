import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/tv_series.dart';
import 'package:ditonton/domain/usecases/get_top_rated_tv_series.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_rated_tv_series_bloc.freezed.dart';
part 'top_rated_tv_series_event.dart';
part 'top_rated_tv_series_state.dart';

class TopRatedTvSeriesBloc
    extends Bloc<TopRatedTvSeriesEvent, TopRatedTvSeriesState> {
  final GetTopRatedTvSeries getTopRatedTvSeries;

  TopRatedTvSeriesBloc({required this.getTopRatedTvSeries})
    : super(TopRatedTvSeriesState()) {
    on<_FetchTopRated>((event, emit) => _fetchTopRatedTvSeries(emit));
  }

  Future<void> _fetchTopRatedTvSeries(
    Emitter<TopRatedTvSeriesState> emit,
  ) async {
    emit(state.copyWith(state: RequestState.loading, errorMessage: null));

    final result = await getTopRatedTvSeries.execute();

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
