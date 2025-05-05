// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'popular_tv_series_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PopularTvSeriesEvent implements DiagnosticableTreeMixin {


  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'PopularTvSeriesEvent'))
    ;
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PopularTvSeriesEvent);
  }


  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
    return 'PopularTvSeriesEvent()';
  }


}

/// @nodoc
class $PopularTvSeriesEventCopyWith<$Res> {
  $PopularTvSeriesEventCopyWith(PopularTvSeriesEvent _,
      $Res Function(PopularTvSeriesEvent) __);
}


/// @nodoc


class _FetchPopular
    with DiagnosticableTreeMixin
    implements PopularTvSeriesEvent {
  const _FetchPopular();


  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'PopularTvSeriesEvent.fetchPopular'))
    ;
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FetchPopular);
  }


  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
    return 'PopularTvSeriesEvent.fetchPopular()';
  }


}


/// @nodoc
mixin _$PopularTvSeriesState implements DiagnosticableTreeMixin {

  RequestState get state;

  String? get errorMessage;

  List<TvSeries> get tvSeries;

  /// Create a copy of PopularTvSeriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PopularTvSeriesStateCopyWith<PopularTvSeriesState> get copyWith =>
      _$PopularTvSeriesStateCopyWithImpl<PopularTvSeriesState>(
          this as PopularTvSeriesState, _$identity);


  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'PopularTvSeriesState'))..add(
        DiagnosticsProperty('state', state))..add(
        DiagnosticsProperty('errorMessage', errorMessage))..add(
        DiagnosticsProperty('tvSeries', tvSeries));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PopularTvSeriesState &&
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
    return 'PopularTvSeriesState(state: $state, errorMessage: $errorMessage, tvSeries: $tvSeries)';
  }


}

/// @nodoc
abstract mixin class $PopularTvSeriesStateCopyWith<$Res> {
  factory $PopularTvSeriesStateCopyWith(PopularTvSeriesState value,
      $Res Function(PopularTvSeriesState) _then) = _$PopularTvSeriesStateCopyWithImpl;

  @useResult
  $Res call({
    RequestState state, String? errorMessage, List<TvSeries> tvSeries
  });


}
/// @nodoc
class _$PopularTvSeriesStateCopyWithImpl<$Res>
    implements $PopularTvSeriesStateCopyWith<$Res> {
  _$PopularTvSeriesStateCopyWithImpl(this._self, this._then);

  final PopularTvSeriesState _self;
  final $Res Function(PopularTvSeriesState) _then;

  /// Create a copy of PopularTvSeriesState
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


class _PopularTvSeriesState
    with DiagnosticableTreeMixin
    implements PopularTvSeriesState {
  const _PopularTvSeriesState(
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


  /// Create a copy of PopularTvSeriesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PopularTvSeriesStateCopyWith<_PopularTvSeriesState> get copyWith =>
      __$PopularTvSeriesStateCopyWithImpl<_PopularTvSeriesState>(
          this, _$identity);


  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'PopularTvSeriesState'))..add(
        DiagnosticsProperty('state', state))..add(
        DiagnosticsProperty('errorMessage', errorMessage))..add(
        DiagnosticsProperty('tvSeries', tvSeries));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PopularTvSeriesState &&
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
    return 'PopularTvSeriesState(state: $state, errorMessage: $errorMessage, tvSeries: $tvSeries)';
  }


}

/// @nodoc
abstract mixin class _$PopularTvSeriesStateCopyWith<$Res>
    implements $PopularTvSeriesStateCopyWith<$Res> {
  factory _$PopularTvSeriesStateCopyWith(_PopularTvSeriesState value,
      $Res Function(_PopularTvSeriesState) _then) = __$PopularTvSeriesStateCopyWithImpl;

  @override
  @useResult
  $Res call({
    RequestState state, String? errorMessage, List<TvSeries> tvSeries
  });


}
/// @nodoc
class __$PopularTvSeriesStateCopyWithImpl<$Res>
    implements _$PopularTvSeriesStateCopyWith<$Res> {
  __$PopularTvSeriesStateCopyWithImpl(this._self, this._then);

  final _PopularTvSeriesState _self;
  final $Res Function(_PopularTvSeriesState) _then;

  /// Create a copy of PopularTvSeriesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call(
      {Object? state = freezed, Object? errorMessage = freezed, Object? tvSeries = null,}) {
    return _then(_PopularTvSeriesState(
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
