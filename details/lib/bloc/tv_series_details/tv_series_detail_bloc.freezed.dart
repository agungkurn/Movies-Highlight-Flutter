// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_series_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TvSeriesDetailEvent implements DiagnosticableTreeMixin {


  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'TvSeriesDetailEvent'))
    ;
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TvSeriesDetailEvent);
  }


  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
    return 'TvSeriesDetailEvent()';
  }


}

/// @nodoc
class $TvSeriesDetailEventCopyWith<$Res> {
  $TvSeriesDetailEventCopyWith(TvSeriesDetailEvent _,
      $Res Function(TvSeriesDetailEvent) __);
}


/// @nodoc


class _FetchDetails
    with DiagnosticableTreeMixin
    implements TvSeriesDetailEvent {
  const _FetchDetails(this.id);


  final int id;

  /// Create a copy of TvSeriesDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FetchDetailsCopyWith<_FetchDetails> get copyWith =>
      __$FetchDetailsCopyWithImpl<_FetchDetails>(this, _$identity);


  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(
        DiagnosticsProperty('type', 'TvSeriesDetailEvent.fetchDetails'))..add(
        DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FetchDetails &&
            (identical(other.id, id) || other.id == id));
  }


  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
    return 'TvSeriesDetailEvent.fetchDetails(id: $id)';
  }


}

/// @nodoc
abstract mixin class _$FetchDetailsCopyWith<$Res>
    implements $TvSeriesDetailEventCopyWith<$Res> {
  factory _$FetchDetailsCopyWith(_FetchDetails value,
      $Res Function(_FetchDetails) _then) = __$FetchDetailsCopyWithImpl;

  @useResult
  $Res call({
    int id
  });


}

/// @nodoc
class __$FetchDetailsCopyWithImpl<$Res>
    implements _$FetchDetailsCopyWith<$Res> {
  __$FetchDetailsCopyWithImpl(this._self, this._then);

  final _FetchDetails _self;
  final $Res Function(_FetchDetails) _then;

  /// Create a copy of TvSeriesDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
    return _then(_FetchDetails(
      null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
      as int,
    ));
  }


}

/// @nodoc


class _FetchRecommendations
    with DiagnosticableTreeMixin
    implements TvSeriesDetailEvent {
  const _FetchRecommendations(this.id);


  final int id;

  /// Create a copy of TvSeriesDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FetchRecommendationsCopyWith<_FetchRecommendations> get copyWith =>
      __$FetchRecommendationsCopyWithImpl<_FetchRecommendations>(
          this, _$identity);


  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty(
        'type', 'TvSeriesDetailEvent.fetchRecommendations'))..add(
        DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FetchRecommendations &&
            (identical(other.id, id) || other.id == id));
  }


  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
    return 'TvSeriesDetailEvent.fetchRecommendations(id: $id)';
  }


}

/// @nodoc
abstract mixin class _$FetchRecommendationsCopyWith<$Res>
    implements $TvSeriesDetailEventCopyWith<$Res> {
  factory _$FetchRecommendationsCopyWith(_FetchRecommendations value,
      $Res Function(_FetchRecommendations) _then) = __$FetchRecommendationsCopyWithImpl;

  @useResult
  $Res call({
    int id
  });


}

/// @nodoc
class __$FetchRecommendationsCopyWithImpl<$Res>
    implements _$FetchRecommendationsCopyWith<$Res> {
  __$FetchRecommendationsCopyWithImpl(this._self, this._then);

  final _FetchRecommendations _self;
  final $Res Function(_FetchRecommendations) _then;

  /// Create a copy of TvSeriesDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
    return _then(_FetchRecommendations(
      null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
      as int,
    ));
  }


}

/// @nodoc


class _CheckWatchlistStatus
    with DiagnosticableTreeMixin
    implements TvSeriesDetailEvent {
  const _CheckWatchlistStatus(this.id);


  final int id;

  /// Create a copy of TvSeriesDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CheckWatchlistStatusCopyWith<_CheckWatchlistStatus> get copyWith =>
      __$CheckWatchlistStatusCopyWithImpl<_CheckWatchlistStatus>(
          this, _$identity);


  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty(
        'type', 'TvSeriesDetailEvent.checkWatchlistStatus'))..add(
        DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CheckWatchlistStatus &&
            (identical(other.id, id) || other.id == id));
  }


  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
    return 'TvSeriesDetailEvent.checkWatchlistStatus(id: $id)';
  }


}

/// @nodoc
abstract mixin class _$CheckWatchlistStatusCopyWith<$Res>
    implements $TvSeriesDetailEventCopyWith<$Res> {
  factory _$CheckWatchlistStatusCopyWith(_CheckWatchlistStatus value,
      $Res Function(_CheckWatchlistStatus) _then) = __$CheckWatchlistStatusCopyWithImpl;

  @useResult
  $Res call({
    int id
  });


}

/// @nodoc
class __$CheckWatchlistStatusCopyWithImpl<$Res>
    implements _$CheckWatchlistStatusCopyWith<$Res> {
  __$CheckWatchlistStatusCopyWithImpl(this._self, this._then);

  final _CheckWatchlistStatus _self;
  final $Res Function(_CheckWatchlistStatus) _then;

  /// Create a copy of TvSeriesDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
    return _then(_CheckWatchlistStatus(
      null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
      as int,
    ));
  }


}

/// @nodoc


class _AddToWatchlist
    with DiagnosticableTreeMixin
    implements TvSeriesDetailEvent {
  const _AddToWatchlist(this.tvSeries);


  final TvSeriesDetails tvSeries;

  /// Create a copy of TvSeriesDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddToWatchlistCopyWith<_AddToWatchlist> get copyWith =>
      __$AddToWatchlistCopyWithImpl<_AddToWatchlist>(this, _$identity);


  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(
        DiagnosticsProperty('type', 'TvSeriesDetailEvent.addToWatchlist'))..add(
        DiagnosticsProperty('tvSeries', tvSeries));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AddToWatchlist &&
            (identical(other.tvSeries, tvSeries) ||
                other.tvSeries == tvSeries));
  }


  @override
  int get hashCode => Object.hash(runtimeType, tvSeries);

  @override
  String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
    return 'TvSeriesDetailEvent.addToWatchlist(tvSeries: $tvSeries)';
  }


}

/// @nodoc
abstract mixin class _$AddToWatchlistCopyWith<$Res>
    implements $TvSeriesDetailEventCopyWith<$Res> {
  factory _$AddToWatchlistCopyWith(_AddToWatchlist value,
      $Res Function(_AddToWatchlist) _then) = __$AddToWatchlistCopyWithImpl;

  @useResult
  $Res call({
    TvSeriesDetails tvSeries
  });


}

/// @nodoc
class __$AddToWatchlistCopyWithImpl<$Res>
    implements _$AddToWatchlistCopyWith<$Res> {
  __$AddToWatchlistCopyWithImpl(this._self, this._then);

  final _AddToWatchlist _self;
  final $Res Function(_AddToWatchlist) _then;

  /// Create a copy of TvSeriesDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline') $Res call({Object? tvSeries = null,}) {
    return _then(_AddToWatchlist(
      null == tvSeries
          ? _self.tvSeries
          : tvSeries // ignore: cast_nullable_to_non_nullable
      as TvSeriesDetails,
    ));
  }


}

/// @nodoc


class _RemoveFromWatchlist
    with DiagnosticableTreeMixin
    implements TvSeriesDetailEvent {
  const _RemoveFromWatchlist(this.tvSeries);


  final TvSeriesDetails tvSeries;

  /// Create a copy of TvSeriesDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RemoveFromWatchlistCopyWith<_RemoveFromWatchlist> get copyWith =>
      __$RemoveFromWatchlistCopyWithImpl<_RemoveFromWatchlist>(
          this, _$identity);


  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty(
        'type', 'TvSeriesDetailEvent.removeFromWatchlist'))..add(
        DiagnosticsProperty('tvSeries', tvSeries));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _RemoveFromWatchlist &&
            (identical(other.tvSeries, tvSeries) ||
                other.tvSeries == tvSeries));
  }


  @override
  int get hashCode => Object.hash(runtimeType, tvSeries);

  @override
  String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
    return 'TvSeriesDetailEvent.removeFromWatchlist(tvSeries: $tvSeries)';
  }


}

/// @nodoc
abstract mixin class _$RemoveFromWatchlistCopyWith<$Res>
    implements $TvSeriesDetailEventCopyWith<$Res> {
  factory _$RemoveFromWatchlistCopyWith(_RemoveFromWatchlist value,
      $Res Function(_RemoveFromWatchlist) _then) = __$RemoveFromWatchlistCopyWithImpl;

  @useResult
  $Res call({
    TvSeriesDetails tvSeries
  });


}

/// @nodoc
class __$RemoveFromWatchlistCopyWithImpl<$Res>
    implements _$RemoveFromWatchlistCopyWith<$Res> {
  __$RemoveFromWatchlistCopyWithImpl(this._self, this._then);

  final _RemoveFromWatchlist _self;
  final $Res Function(_RemoveFromWatchlist) _then;

  /// Create a copy of TvSeriesDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline') $Res call({Object? tvSeries = null,}) {
    return _then(_RemoveFromWatchlist(
      null == tvSeries
          ? _self.tvSeries
          : tvSeries // ignore: cast_nullable_to_non_nullable
      as TvSeriesDetails,
    ));
  }


}

/// @nodoc
mixin _$TvSeriesDetailState implements DiagnosticableTreeMixin {

  RequestState get detailsState;

  RequestState get recommendationsState;

  String? get errorMessage;

  String? get watchlistMessage;

  TvSeriesDetails? get tvSeries;

  List<TvSeries> get tvSeriesRecommendations;

  bool get isInWatchlist;

  /// Create a copy of TvSeriesDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TvSeriesDetailStateCopyWith<TvSeriesDetailState> get copyWith =>
      _$TvSeriesDetailStateCopyWithImpl<TvSeriesDetailState>(
          this as TvSeriesDetailState, _$identity);


  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'TvSeriesDetailState'))..add(
        DiagnosticsProperty('detailsState', detailsState))..add(
        DiagnosticsProperty('recommendationsState', recommendationsState))..add(
        DiagnosticsProperty('errorMessage', errorMessage))..add(
        DiagnosticsProperty('watchlistMessage', watchlistMessage))..add(
        DiagnosticsProperty('tvSeries', tvSeries))..add(DiagnosticsProperty(
        'tvSeriesRecommendations', tvSeriesRecommendations))..add(
        DiagnosticsProperty('isInWatchlist', isInWatchlist));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TvSeriesDetailState &&
            (identical(other.detailsState, detailsState) ||
                other.detailsState == detailsState) &&
            (identical(other.recommendationsState, recommendationsState) ||
                other.recommendationsState == recommendationsState) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.watchlistMessage, watchlistMessage) ||
                other.watchlistMessage == watchlistMessage) &&
            (identical(other.tvSeries, tvSeries) ||
                other.tvSeries == tvSeries) &&
            const DeepCollectionEquality().equals(
                other.tvSeriesRecommendations, tvSeriesRecommendations) &&
            (identical(other.isInWatchlist, isInWatchlist) ||
                other.isInWatchlist == isInWatchlist));
  }


  @override
  int get hashCode =>
      Object.hash(
          runtimeType,
          detailsState,
          recommendationsState,
          errorMessage,
          watchlistMessage,
          tvSeries,
          const DeepCollectionEquality().hash(tvSeriesRecommendations),
          isInWatchlist);

  @override
  String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
    return 'TvSeriesDetailState(detailsState: $detailsState, recommendationsState: $recommendationsState, errorMessage: $errorMessage, watchlistMessage: $watchlistMessage, tvSeries: $tvSeries, tvSeriesRecommendations: $tvSeriesRecommendations, isInWatchlist: $isInWatchlist)';
  }


}

/// @nodoc
abstract mixin class $TvSeriesDetailStateCopyWith<$Res> {
  factory $TvSeriesDetailStateCopyWith(TvSeriesDetailState value,
      $Res Function(TvSeriesDetailState) _then) = _$TvSeriesDetailStateCopyWithImpl;

  @useResult
  $Res call({
    RequestState detailsState, RequestState recommendationsState, String? errorMessage, String? watchlistMessage, TvSeriesDetails? tvSeries, List<
        TvSeries> tvSeriesRecommendations, bool isInWatchlist
  });


}

/// @nodoc
class _$TvSeriesDetailStateCopyWithImpl<$Res>
    implements $TvSeriesDetailStateCopyWith<$Res> {
  _$TvSeriesDetailStateCopyWithImpl(this._self, this._then);

  final TvSeriesDetailState _self;
  final $Res Function(TvSeriesDetailState) _then;

  /// Create a copy of TvSeriesDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call(
      {Object? detailsState = null, Object? recommendationsState = null, Object? errorMessage = freezed, Object? watchlistMessage = freezed, Object? tvSeries = freezed, Object? tvSeriesRecommendations = null, Object? isInWatchlist = null,}) {
    return _then(_self.copyWith(
      detailsState: null == detailsState
          ? _self.detailsState
          : detailsState // ignore: cast_nullable_to_non_nullable
      as RequestState,
      recommendationsState: null == recommendationsState
          ? _self.recommendationsState
          : recommendationsState // ignore: cast_nullable_to_non_nullable
      as RequestState,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
      as String?,
      watchlistMessage: freezed == watchlistMessage
          ? _self.watchlistMessage
          : watchlistMessage // ignore: cast_nullable_to_non_nullable
      as String?,
      tvSeries: freezed == tvSeries
          ? _self.tvSeries
          : tvSeries // ignore: cast_nullable_to_non_nullable
      as TvSeriesDetails?,
      tvSeriesRecommendations: null == tvSeriesRecommendations
          ? _self.tvSeriesRecommendations
          : tvSeriesRecommendations // ignore: cast_nullable_to_non_nullable
      as List<TvSeries>,
      isInWatchlist: null == isInWatchlist
          ? _self.isInWatchlist
          : isInWatchlist // ignore: cast_nullable_to_non_nullable
      as bool,
    ));
  }

}


/// @nodoc


class _TvSeriesDetailState
    with DiagnosticableTreeMixin
    implements TvSeriesDetailState {
  const _TvSeriesDetailState({this.detailsState = RequestState
      .empty, this.recommendationsState = RequestState
      .empty, this.errorMessage = null, this.watchlistMessage = null, this.tvSeries = null, final List<
      TvSeries> tvSeriesRecommendations = const [], this.isInWatchlist = false})
      : _tvSeriesRecommendations = tvSeriesRecommendations;


  @override
  @JsonKey()
  final RequestState detailsState;
  @override
  @JsonKey()
  final RequestState recommendationsState;
  @override
  @JsonKey()
  final String? errorMessage;
  @override
  @JsonKey()
  final String? watchlistMessage;
  @override
  @JsonKey()
  final TvSeriesDetails? tvSeries;
  final List<TvSeries> _tvSeriesRecommendations;

  @override
  @JsonKey()
  List<TvSeries> get tvSeriesRecommendations {
    if (_tvSeriesRecommendations is EqualUnmodifiableListView)
      return _tvSeriesRecommendations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tvSeriesRecommendations);
  }

  @override
  @JsonKey()
  final bool isInWatchlist;

  /// Create a copy of TvSeriesDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TvSeriesDetailStateCopyWith<_TvSeriesDetailState> get copyWith =>
      __$TvSeriesDetailStateCopyWithImpl<_TvSeriesDetailState>(
          this, _$identity);


  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'TvSeriesDetailState'))..add(
        DiagnosticsProperty('detailsState', detailsState))..add(
        DiagnosticsProperty('recommendationsState', recommendationsState))..add(
        DiagnosticsProperty('errorMessage', errorMessage))..add(
        DiagnosticsProperty('watchlistMessage', watchlistMessage))..add(
        DiagnosticsProperty('tvSeries', tvSeries))..add(DiagnosticsProperty(
        'tvSeriesRecommendations', tvSeriesRecommendations))..add(
        DiagnosticsProperty('isInWatchlist', isInWatchlist));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _TvSeriesDetailState &&
            (identical(other.detailsState, detailsState) ||
                other.detailsState == detailsState) &&
            (identical(other.recommendationsState, recommendationsState) ||
                other.recommendationsState == recommendationsState) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.watchlistMessage, watchlistMessage) ||
                other.watchlistMessage == watchlistMessage) &&
            (identical(other.tvSeries, tvSeries) ||
                other.tvSeries == tvSeries) &&
            const DeepCollectionEquality().equals(
                other._tvSeriesRecommendations, _tvSeriesRecommendations) &&
            (identical(other.isInWatchlist, isInWatchlist) ||
                other.isInWatchlist == isInWatchlist));
  }


  @override
  int get hashCode =>
      Object.hash(
          runtimeType,
          detailsState,
          recommendationsState,
          errorMessage,
          watchlistMessage,
          tvSeries,
          const DeepCollectionEquality().hash(_tvSeriesRecommendations),
          isInWatchlist);

  @override
  String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
    return 'TvSeriesDetailState(detailsState: $detailsState, recommendationsState: $recommendationsState, errorMessage: $errorMessage, watchlistMessage: $watchlistMessage, tvSeries: $tvSeries, tvSeriesRecommendations: $tvSeriesRecommendations, isInWatchlist: $isInWatchlist)';
  }


}

/// @nodoc
abstract mixin class _$TvSeriesDetailStateCopyWith<$Res>
    implements $TvSeriesDetailStateCopyWith<$Res> {
  factory _$TvSeriesDetailStateCopyWith(_TvSeriesDetailState value,
      $Res Function(_TvSeriesDetailState) _then) = __$TvSeriesDetailStateCopyWithImpl;

  @override
  @useResult
  $Res call({
    RequestState detailsState, RequestState recommendationsState, String? errorMessage, String? watchlistMessage, TvSeriesDetails? tvSeries, List<
        TvSeries> tvSeriesRecommendations, bool isInWatchlist
  });


}

/// @nodoc
class __$TvSeriesDetailStateCopyWithImpl<$Res>
    implements _$TvSeriesDetailStateCopyWith<$Res> {
  __$TvSeriesDetailStateCopyWithImpl(this._self, this._then);

  final _TvSeriesDetailState _self;
  final $Res Function(_TvSeriesDetailState) _then;

  /// Create a copy of TvSeriesDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call(
      {Object? detailsState = null, Object? recommendationsState = null, Object? errorMessage = freezed, Object? watchlistMessage = freezed, Object? tvSeries = freezed, Object? tvSeriesRecommendations = null, Object? isInWatchlist = null,}) {
    return _then(_TvSeriesDetailState(
      detailsState: null == detailsState
          ? _self.detailsState
          : detailsState // ignore: cast_nullable_to_non_nullable
      as RequestState,
      recommendationsState: null == recommendationsState
          ? _self.recommendationsState
          : recommendationsState // ignore: cast_nullable_to_non_nullable
      as RequestState,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
      as String?,
      watchlistMessage: freezed == watchlistMessage
          ? _self.watchlistMessage
          : watchlistMessage // ignore: cast_nullable_to_non_nullable
      as String?,
      tvSeries: freezed == tvSeries
          ? _self.tvSeries
          : tvSeries // ignore: cast_nullable_to_non_nullable
      as TvSeriesDetails?,
      tvSeriesRecommendations: null == tvSeriesRecommendations
          ? _self._tvSeriesRecommendations
          : tvSeriesRecommendations // ignore: cast_nullable_to_non_nullable
      as List<TvSeries>,
      isInWatchlist: null == isInWatchlist
          ? _self.isInWatchlist
          : isInWatchlist // ignore: cast_nullable_to_non_nullable
      as bool,
    ));
  }


}

// dart format on
