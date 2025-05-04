// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_series_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TvSeriesListEvent {


  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TvSeriesListEvent);
  }


  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'TvSeriesListEvent()';
  }


}

/// @nodoc
class $TvSeriesListEventCopyWith<$Res> {
  $TvSeriesListEventCopyWith(TvSeriesListEvent _,
      $Res Function(TvSeriesListEvent) __);
}


/// @nodoc


class _FetchNowAiring implements TvSeriesListEvent {
  const _FetchNowAiring();


  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FetchNowAiring);
  }


  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'TvSeriesListEvent.fetchNowAiring()';
  }


}


/// @nodoc


class _FetchPopular implements TvSeriesListEvent {
  const _FetchPopular();


  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FetchPopular);
  }


  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'TvSeriesListEvent.fetchPopular()';
  }


}


/// @nodoc


class _FetchTopRated implements TvSeriesListEvent {
  const _FetchTopRated();


  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FetchTopRated);
  }


  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'TvSeriesListEvent.fetchTopRated()';
  }


}


/// @nodoc
mixin _$TvSeriesListState {

  RequestState get nowAiringState;

  RequestState get popularState;

  RequestState get topRatedState;

  String? get errorMessage;

  List<TvSeries> get nowAiring;

  List<TvSeries> get popular;

  List<TvSeries> get topRated;

  /// Create a copy of TvSeriesListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TvSeriesListStateCopyWith<TvSeriesListState> get copyWith =>
      _$TvSeriesListStateCopyWithImpl<TvSeriesListState>(
          this as TvSeriesListState, _$identity);


  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TvSeriesListState &&
            (identical(other.nowAiringState, nowAiringState) ||
                other.nowAiringState == nowAiringState) &&
            (identical(other.popularState, popularState) ||
                other.popularState == popularState) &&
            (identical(other.topRatedState, topRatedState) ||
                other.topRatedState == topRatedState) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(other.nowAiring, nowAiring) &&
            const DeepCollectionEquality().equals(other.popular, popular) &&
            const DeepCollectionEquality().equals(other.topRated, topRated));
  }


  @override
  int get hashCode =>
      Object.hash(
          runtimeType,
          nowAiringState,
          popularState,
          topRatedState,
          errorMessage,
          const DeepCollectionEquality().hash(nowAiring),
          const DeepCollectionEquality().hash(popular),
          const DeepCollectionEquality().hash(topRated));

  @override
  String toString() {
    return 'TvSeriesListState(nowAiringState: $nowAiringState, popularState: $popularState, topRatedState: $topRatedState, errorMessage: $errorMessage, nowAiring: $nowAiring, popular: $popular, topRated: $topRated)';
  }


}

/// @nodoc
abstract mixin class $TvSeriesListStateCopyWith<$Res> {
  factory $TvSeriesListStateCopyWith(TvSeriesListState value,
      $Res Function(TvSeriesListState) _then) = _$TvSeriesListStateCopyWithImpl;

  @useResult
  $Res call({
    RequestState nowAiringState, RequestState popularState, RequestState topRatedState, String? errorMessage, List<
        TvSeries> nowAiring, List<TvSeries> popular, List<TvSeries> topRated
  });


}

/// @nodoc
class _$TvSeriesListStateCopyWithImpl<$Res>
    implements $TvSeriesListStateCopyWith<$Res> {
  _$TvSeriesListStateCopyWithImpl(this._self, this._then);

  final TvSeriesListState _self;
  final $Res Function(TvSeriesListState) _then;

  /// Create a copy of TvSeriesListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call(
      {Object? nowAiringState = null, Object? popularState = null, Object? topRatedState = null, Object? errorMessage = freezed, Object? nowAiring = null, Object? popular = null, Object? topRated = null,}) {
    return _then(_self.copyWith(
      nowAiringState: null == nowAiringState
          ? _self.nowAiringState
          : nowAiringState // ignore: cast_nullable_to_non_nullable
      as RequestState,
      popularState: null == popularState
          ? _self.popularState
          : popularState // ignore: cast_nullable_to_non_nullable
      as RequestState,
      topRatedState: null == topRatedState
          ? _self.topRatedState
          : topRatedState // ignore: cast_nullable_to_non_nullable
      as RequestState,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
      as String?,
      nowAiring: null == nowAiring
          ? _self.nowAiring
          : nowAiring // ignore: cast_nullable_to_non_nullable
      as List<TvSeries>,
      popular: null == popular
          ? _self.popular
          : popular // ignore: cast_nullable_to_non_nullable
      as List<TvSeries>,
      topRated: null == topRated
          ? _self.topRated
          : topRated // ignore: cast_nullable_to_non_nullable
      as List<TvSeries>,
    ));
  }

}


/// @nodoc


class _TvSeriesListState implements TvSeriesListState {
  const _TvSeriesListState({this.nowAiringState = RequestState
      .empty, this.popularState = RequestState
      .empty, this.topRatedState = RequestState
      .empty, this.errorMessage = null, final List<TvSeries> nowAiring = const [
  ], final List<TvSeries> popular = const [], final List<
      TvSeries> topRated = const []})
      : _nowAiring = nowAiring,
        _popular = popular,
        _topRated = topRated;


  @override
  @JsonKey()
  final RequestState nowAiringState;
  @override
  @JsonKey()
  final RequestState popularState;
  @override
  @JsonKey()
  final RequestState topRatedState;
  @override
  @JsonKey()
  final String? errorMessage;
  final List<TvSeries> _nowAiring;

  @override
  @JsonKey()
  List<TvSeries> get nowAiring {
    if (_nowAiring is EqualUnmodifiableListView) return _nowAiring;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nowAiring);
  }

  final List<TvSeries> _popular;

  @override
  @JsonKey()
  List<TvSeries> get popular {
    if (_popular is EqualUnmodifiableListView) return _popular;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popular);
  }

  final List<TvSeries> _topRated;

  @override
  @JsonKey()
  List<TvSeries> get topRated {
    if (_topRated is EqualUnmodifiableListView) return _topRated;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topRated);
  }


  /// Create a copy of TvSeriesListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TvSeriesListStateCopyWith<_TvSeriesListState> get copyWith =>
      __$TvSeriesListStateCopyWithImpl<_TvSeriesListState>(this, _$identity);


  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _TvSeriesListState &&
            (identical(other.nowAiringState, nowAiringState) ||
                other.nowAiringState == nowAiringState) &&
            (identical(other.popularState, popularState) ||
                other.popularState == popularState) &&
            (identical(other.topRatedState, topRatedState) ||
                other.topRatedState == topRatedState) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(
                other._nowAiring, _nowAiring) &&
            const DeepCollectionEquality().equals(other._popular, _popular) &&
            const DeepCollectionEquality().equals(other._topRated, _topRated));
  }


  @override
  int get hashCode =>
      Object.hash(
          runtimeType,
          nowAiringState,
          popularState,
          topRatedState,
          errorMessage,
          const DeepCollectionEquality().hash(_nowAiring),
          const DeepCollectionEquality().hash(_popular),
          const DeepCollectionEquality().hash(_topRated));

  @override
  String toString() {
    return 'TvSeriesListState(nowAiringState: $nowAiringState, popularState: $popularState, topRatedState: $topRatedState, errorMessage: $errorMessage, nowAiring: $nowAiring, popular: $popular, topRated: $topRated)';
  }


}

/// @nodoc
abstract mixin class _$TvSeriesListStateCopyWith<$Res>
    implements $TvSeriesListStateCopyWith<$Res> {
  factory _$TvSeriesListStateCopyWith(_TvSeriesListState value,
      $Res Function(_TvSeriesListState) _then) = __$TvSeriesListStateCopyWithImpl;

  @override
  @useResult
  $Res call({
    RequestState nowAiringState, RequestState popularState, RequestState topRatedState, String? errorMessage, List<
        TvSeries> nowAiring, List<TvSeries> popular, List<TvSeries> topRated
  });


}

/// @nodoc
class __$TvSeriesListStateCopyWithImpl<$Res>
    implements _$TvSeriesListStateCopyWith<$Res> {
  __$TvSeriesListStateCopyWithImpl(this._self, this._then);

  final _TvSeriesListState _self;
  final $Res Function(_TvSeriesListState) _then;

  /// Create a copy of TvSeriesListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call(
      {Object? nowAiringState = null, Object? popularState = null, Object? topRatedState = null, Object? errorMessage = freezed, Object? nowAiring = null, Object? popular = null, Object? topRated = null,}) {
    return _then(_TvSeriesListState(
      nowAiringState: null == nowAiringState
          ? _self.nowAiringState
          : nowAiringState // ignore: cast_nullable_to_non_nullable
      as RequestState,
      popularState: null == popularState
          ? _self.popularState
          : popularState // ignore: cast_nullable_to_non_nullable
      as RequestState,
      topRatedState: null == topRatedState
          ? _self.topRatedState
          : topRatedState // ignore: cast_nullable_to_non_nullable
      as RequestState,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
      as String?,
      nowAiring: null == nowAiring
          ? _self._nowAiring
          : nowAiring // ignore: cast_nullable_to_non_nullable
      as List<TvSeries>,
      popular: null == popular
          ? _self._popular
          : popular // ignore: cast_nullable_to_non_nullable
      as List<TvSeries>,
      topRated: null == topRated
          ? _self._topRated
          : topRated // ignore: cast_nullable_to_non_nullable
      as List<TvSeries>,
    ));
  }


}

// dart format on
