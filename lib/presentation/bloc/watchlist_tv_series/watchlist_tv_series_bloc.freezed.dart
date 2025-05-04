// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'watchlist_tv_series_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WatchlistTvSeriesEvent implements DiagnosticableTreeMixin {


  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'WatchlistTvSeriesEvent'))
    ;
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is WatchlistTvSeriesEvent);
  }


  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
    return 'WatchlistTvSeriesEvent()';
  }


}

/// @nodoc
class $WatchlistTvSeriesEventCopyWith<$Res> {
  $WatchlistTvSeriesEventCopyWith(WatchlistTvSeriesEvent _,
      $Res Function(WatchlistTvSeriesEvent) __);
}


/// @nodoc


class _FetchWatchlist
    with DiagnosticableTreeMixin
    implements WatchlistTvSeriesEvent {
  const _FetchWatchlist();


  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(
          DiagnosticsProperty('type', 'WatchlistTvSeriesEvent.fetchWatchlist'))
    ;
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FetchWatchlist);
  }


  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
    return 'WatchlistTvSeriesEvent.fetchWatchlist()';
  }


}


/// @nodoc
mixin _$WatchlistTvSeriesState implements DiagnosticableTreeMixin {

  RequestState get state;

  List<TvSeries> get tvSeries;

  String? get errorMessage;

  /// Create a copy of WatchlistTvSeriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WatchlistTvSeriesStateCopyWith<WatchlistTvSeriesState> get copyWith =>
      _$WatchlistTvSeriesStateCopyWithImpl<WatchlistTvSeriesState>(
          this as WatchlistTvSeriesState, _$identity);


  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'WatchlistTvSeriesState'))..add(
        DiagnosticsProperty('state', state))..add(
        DiagnosticsProperty('tvSeries', tvSeries))..add(
        DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is WatchlistTvSeriesState &&
            (identical(other.state, state) || other.state == state) &&
            const DeepCollectionEquality().equals(other.tvSeries, tvSeries) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }


  @override
  int get hashCode =>
      Object.hash(
      runtimeType, state, const DeepCollectionEquality().hash(tvSeries),
      errorMessage);

  @override
  String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
    return 'WatchlistTvSeriesState(state: $state, tvSeries: $tvSeries, errorMessage: $errorMessage)';
  }


}

/// @nodoc
abstract mixin class $WatchlistTvSeriesStateCopyWith<$Res> {
  factory $WatchlistTvSeriesStateCopyWith(WatchlistTvSeriesState value,
      $Res Function(WatchlistTvSeriesState) _then) = _$WatchlistTvSeriesStateCopyWithImpl;

  @useResult
  $Res call({
    RequestState state, List<TvSeries> tvSeries, String? errorMessage
  });


}

/// @nodoc
class _$WatchlistTvSeriesStateCopyWithImpl<$Res>
    implements $WatchlistTvSeriesStateCopyWith<$Res> {
  _$WatchlistTvSeriesStateCopyWithImpl(this._self, this._then);

  final WatchlistTvSeriesState _self;
  final $Res Function(WatchlistTvSeriesState) _then;

  /// Create a copy of WatchlistTvSeriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call(
      {Object? state = null, Object? tvSeries = null, Object? errorMessage = freezed,}) {
    return _then(_self.copyWith(
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
      as RequestState,
      tvSeries: null == tvSeries
          ? _self.tvSeries
          : tvSeries // ignore: cast_nullable_to_non_nullable
      as List<TvSeries>,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
      as String?,
    ));
  }

}


/// @nodoc


class _WatchlistTvSeriesState
    with DiagnosticableTreeMixin
    implements WatchlistTvSeriesState {
  const _WatchlistTvSeriesState(
      {this.state = RequestState.empty, final List<TvSeries> tvSeries = const [
      ], this.errorMessage = null}) : _tvSeries = tvSeries;


  @override
  @JsonKey()
  final RequestState state;
  final List<TvSeries> _tvSeries;

  @override
  @JsonKey()
  List<TvSeries> get tvSeries {
    if (_tvSeries is EqualUnmodifiableListView) return _tvSeries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tvSeries);
  }

  @override
  @JsonKey()
  final String? errorMessage;

  /// Create a copy of WatchlistTvSeriesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WatchlistTvSeriesStateCopyWith<_WatchlistTvSeriesState> get copyWith =>
      __$WatchlistTvSeriesStateCopyWithImpl<_WatchlistTvSeriesState>(
          this, _$identity);


  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'WatchlistTvSeriesState'))..add(
        DiagnosticsProperty('state', state))..add(
        DiagnosticsProperty('tvSeries', tvSeries))..add(
        DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _WatchlistTvSeriesState &&
            (identical(other.state, state) || other.state == state) &&
            const DeepCollectionEquality().equals(other._tvSeries, _tvSeries) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }


  @override
  int get hashCode =>
      Object.hash(
      runtimeType, state, const DeepCollectionEquality().hash(_tvSeries),
      errorMessage);

  @override
  String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
    return 'WatchlistTvSeriesState(state: $state, tvSeries: $tvSeries, errorMessage: $errorMessage)';
  }


}

/// @nodoc
abstract mixin class _$WatchlistTvSeriesStateCopyWith<$Res>
    implements $WatchlistTvSeriesStateCopyWith<$Res> {
  factory _$WatchlistTvSeriesStateCopyWith(_WatchlistTvSeriesState value,
      $Res Function(_WatchlistTvSeriesState) _then) = __$WatchlistTvSeriesStateCopyWithImpl;

  @override
  @useResult
  $Res call({
    RequestState state, List<TvSeries> tvSeries, String? errorMessage
  });


}

/// @nodoc
class __$WatchlistTvSeriesStateCopyWithImpl<$Res>
    implements _$WatchlistTvSeriesStateCopyWith<$Res> {
  __$WatchlistTvSeriesStateCopyWithImpl(this._self, this._then);

  final _WatchlistTvSeriesState _self;
  final $Res Function(_WatchlistTvSeriesState) _then;

  /// Create a copy of WatchlistTvSeriesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call(
      {Object? state = null, Object? tvSeries = null, Object? errorMessage = freezed,}) {
    return _then(_WatchlistTvSeriesState(
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
      as RequestState,
      tvSeries: null == tvSeries
          ? _self._tvSeries
          : tvSeries // ignore: cast_nullable_to_non_nullable
      as List<TvSeries>,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
      as String?,
    ));
  }


}

// dart format on
