// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'news_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NewsStateTearOff {
  const _$NewsStateTearOff();

// ignore: unused_element
  _NewsState call({bool loading, List<Article> articles}) {
    return _NewsState(
      loading: loading,
      articles: articles,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $NewsState = _$NewsStateTearOff();

/// @nodoc
mixin _$NewsState {
  bool get loading;
  List<Article> get articles;

  $NewsStateCopyWith<NewsState> get copyWith;
}

/// @nodoc
abstract class $NewsStateCopyWith<$Res> {
  factory $NewsStateCopyWith(NewsState value, $Res Function(NewsState) then) =
      _$NewsStateCopyWithImpl<$Res>;
  $Res call({bool loading, List<Article> articles});
}

/// @nodoc
class _$NewsStateCopyWithImpl<$Res> implements $NewsStateCopyWith<$Res> {
  _$NewsStateCopyWithImpl(this._value, this._then);

  final NewsState _value;
  // ignore: unused_field
  final $Res Function(NewsState) _then;

  @override
  $Res call({
    Object loading = freezed,
    Object articles = freezed,
  }) {
    return _then(_value.copyWith(
      loading: loading == freezed ? _value.loading : loading as bool,
      articles:
          articles == freezed ? _value.articles : articles as List<Article>,
    ));
  }
}

/// @nodoc
abstract class _$NewsStateCopyWith<$Res> implements $NewsStateCopyWith<$Res> {
  factory _$NewsStateCopyWith(
          _NewsState value, $Res Function(_NewsState) then) =
      __$NewsStateCopyWithImpl<$Res>;
  @override
  $Res call({bool loading, List<Article> articles});
}

/// @nodoc
class __$NewsStateCopyWithImpl<$Res> extends _$NewsStateCopyWithImpl<$Res>
    implements _$NewsStateCopyWith<$Res> {
  __$NewsStateCopyWithImpl(_NewsState _value, $Res Function(_NewsState) _then)
      : super(_value, (v) => _then(v as _NewsState));

  @override
  _NewsState get _value => super._value as _NewsState;

  @override
  $Res call({
    Object loading = freezed,
    Object articles = freezed,
  }) {
    return _then(_NewsState(
      loading: loading == freezed ? _value.loading : loading as bool,
      articles:
          articles == freezed ? _value.articles : articles as List<Article>,
    ));
  }
}

/// @nodoc
class _$_NewsState implements _NewsState {
  _$_NewsState({this.loading, this.articles});

  @override
  final bool loading;
  @override
  final List<Article> articles;

  @override
  String toString() {
    return 'NewsState(loading: $loading, articles: $articles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewsState &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality()
                    .equals(other.loading, loading)) &&
            (identical(other.articles, articles) ||
                const DeepCollectionEquality()
                    .equals(other.articles, articles)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(articles);

  @override
  _$NewsStateCopyWith<_NewsState> get copyWith =>
      __$NewsStateCopyWithImpl<_NewsState>(this, _$identity);
}

abstract class _NewsState implements NewsState {
  factory _NewsState({bool loading, List<Article> articles}) = _$_NewsState;

  @override
  bool get loading;
  @override
  List<Article> get articles;
  @override
  _$NewsStateCopyWith<_NewsState> get copyWith;
}
