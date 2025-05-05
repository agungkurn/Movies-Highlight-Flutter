import 'package:common/state_enum.dart';
import 'package:domain/entities/tv_series.dart';
import 'package:domain/usecases/get_popular_tv_series.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'popular_tv_series_bloc.freezed.dart';
part 'popular_tv_series_event.dart';
part 'popular_tv_series_state.dart';

class PopularTvSeriesBloc
    extends Bloc<PopularTvSeriesEvent, PopularTvSeriesState> {
  final GetPopularTvSeries getPopularTvSeries;

  PopularTvSeriesBloc(this.getPopularTvSeries) : super(PopularTvSeriesState()) {
    on<_FetchPopular>((event, emit) => _fetchPopularTvSeries(emit));
  }

  Future<void> _fetchPopularTvSeries(Emitter<PopularTvSeriesState> emit) async {
    emit(state.copyWith(state: RequestState.loading, errorMessage: null));

    final result = await getPopularTvSeries.execute();

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
