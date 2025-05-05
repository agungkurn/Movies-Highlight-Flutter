// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_rated_tv_series_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TopRatedTvSeriesEvent implements DiagnosticableTreeMixin {


  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'TopRatedTvSeriesEvent'))
    ;
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TopRatedTvSeriesEvent);
  }


  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
    return 'TopRatedTvSeriesEvent()';
  }


}

/// @nodoc
class $TopRatedTvSeriesEventCopyWith<$Res> {
  $TopRatedTvSeriesEventCopyWith(TopRatedTvSeriesEvent _,
      $Res Function(TopRatedTvSeriesEvent) __);
}


/// @nodoc


class _FetchTopRated
    with DiagnosticableTreeMixin
    implements TopRatedTvSeriesEvent {
  const _FetchTopRated();


  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'TopRatedTvSeriesEvent.fetchTopRated'))
    ;
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FetchTopRated);
  }


  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
    return 'TopRatedTvSeriesEvent.fetchTopRated()';
  }


}


/// @nodoc
mixin _$TopRatedTvSeriesState implements DiagnosticableTreeMixin {

  RequestState get state;

  String? get errorMessage;

  List<TvSeries> get tvSeries;

  /// Create a copy of TopRatedTvSeriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TopRatedTvSeriesStateCopyWith<TopRatedTvSeriesState> get copyWith =>
      _$TopRatedTvSeriesStateCopyWithImpl<TopRatedTvSeriesState>(
          this as TopRatedTvSeriesState, _$identity);


  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'TopRatedTvSeriesState'))..add(
        DiagnosticsProperty('state', state))..add(
        DiagnosticsProperty('errorMessage', errorMessage))..add(
        DiagnosticsProperty('tvSeries', tvSeries));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TopRatedTvSeriesState &&
            const DeepCollectionEquality().equals(other.state, state) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(other.tvSeries, tvSeries));
  }


  @override
  int get hashCode =>
      Object.hash(
          runtimeType, const DeepCollectionEquality().hash(state), errorMessage,
      const DeepCollectionEquality().hash(tvSeries));

  @override
  String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
    return 'TopRatedTvSeriesState(state: $state, errorMessage: $errorMessage, tvSeries: $tvSeries)';
  }


}

/// @nodoc
abstract mixin class $TopRatedTvSeriesStateCopyWith<$Res> {
  factory $TopRatedTvSeriesStateCopyWith(TopRatedTvSeriesState value,
      $Res Function(TopRatedTvSeriesState) _then) = _$TopRatedTvSeriesStateCopyWithImpl;

  @useResult
  $Res call({
    RequestState state, String? errorMessage, List<TvSeries> tvSeries
  });


}
/// @nodoc
class _$TopRatedTvSeriesStateCopyWithImpl<$Res>
    implements $TopRatedTvSeriesStateCopyWith<$Res> {
  _$TopRatedTvSeriesStateCopyWithImpl(this._self, this._then);

  final TopRatedTvSeriesState _self;
  final $Res Function(TopRatedTvSeriesState) _then;

  /// Create a copy of TopRatedTvSeriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call(
      {Object? state = freezed, Object? errorMessage = freezed, Object? tvSeries = null,}) {
    return _then(_self.copyWith(
      state: freezed == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
      as RequestState,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
      as String?,
      tvSeries: null == tvSeries
          ? _self.tvSeries
          : tvSeries // ignore: cast_nullable_to_non_nullable
      as List<TvSeries>,
    ));
  }

}


/// @nodoc


class _TopRatedTvSeriesState
    with DiagnosticableTreeMixin
    implements TopRatedTvSeriesState {
  const _TopRatedTvSeriesState(
      {this.state = RequestState.empty, this.errorMessage = null, final List<
          TvSeries> tvSeries = const []}) : _tvSeries = tvSeries;


  @override
  @JsonKey()
  final RequestState state;
  @override
  @JsonKey()
  final String? errorMessage;
  final List<TvSeries> _tvSeries;

  @override
  @JsonKey()
  List<TvSeries> get tvSeries {
    if (_tvSeries is EqualUnmodifiableListView) return _tvSeries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tvSeries);
  }


  /// Create a copy of TopRatedTvSeriesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TopRatedTvSeriesStateCopyWith<_TopRatedTvSeriesState> get copyWith =>
      __$TopRatedTvSeriesStateCopyWithImpl<_TopRatedTvSeriesState>(
          this, _$identity);


  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'TopRatedTvSeriesState'))..add(
        DiagnosticsProperty('state', state))..add(
        DiagnosticsProperty('errorMessage', errorMessage))..add(
        DiagnosticsProperty('tvSeries', tvSeries));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _TopRatedTvSeriesState &&
            const DeepCollectionEquality().equals(other.state, state) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(other._tvSeries, _tvSeries));
  }


  @override
  int get hashCode =>
      Object.hash(
          runtimeType, const DeepCollectionEquality().hash(state), errorMessage,
      const DeepCollectionEquality().hash(_tvSeries));

  @override
  String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
    return 'TopRatedTvSeriesState(state: $state, errorMessage: $errorMessage, tvSeries: $tvSeries)';
  }


}

/// @nodoc
abstract mixin class _$TopRatedTvSeriesStateCopyWith<$Res>
    implements $TopRatedTvSeriesStateCopyWith<$Res> {
  factory _$TopRatedTvSeriesStateCopyWith(_TopRatedTvSeriesState value,
      $Res Function(_TopRatedTvSeriesState) _then) = __$TopRatedTvSeriesStateCopyWithImpl;

  @override
  @useResult
  $Res call({
    RequestState state, String? errorMessage, List<TvSeries> tvSeries
  });


}
/// @nodoc
class __$TopRatedTvSeriesStateCopyWithImpl<$Res>
    implements _$TopRatedTvSeriesStateCopyWith<$Res> {
  __$TopRatedTvSeriesStateCopyWithImpl(this._self, this._then);

  final _TopRatedTvSeriesState _self;
  final $Res Function(_TopRatedTvSeriesState) _then;

  /// Create a copy of TopRatedTvSeriesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call(
      {Object? state = freezed, Object? errorMessage = freezed, Object? tvSeries = null,}) {
    return _then(_TopRatedTvSeriesState(
      state: freezed == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
      as RequestState,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
      as String?,
      tvSeries: null == tvSeries
          ? _self._tvSeries
          : tvSeries // ignore: cast_nullable_to_non_nullable
      as List<TvSeries>,
    ));
  }


}

// dart format on
