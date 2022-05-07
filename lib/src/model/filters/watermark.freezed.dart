// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'watermark.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Watermark {
  int get x => throw _privateConstructorUsedError;
  int get y => throw _privateConstructorUsedError;
  Uint8List get bytes => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int x, int y, Uint8List bytes) bytes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int x, int y, Uint8List bytes)? bytes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int x, int y, Uint8List bytes)? bytes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatermarkWatermark value) bytes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatermarkWatermark value)? bytes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatermarkWatermark value)? bytes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WatermarkCopyWith<Watermark> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatermarkCopyWith<$Res> {
  factory $WatermarkCopyWith(Watermark value, $Res Function(Watermark) then) =
      _$WatermarkCopyWithImpl<$Res>;
  $Res call({int x, int y, Uint8List bytes});
}

/// @nodoc
class _$WatermarkCopyWithImpl<$Res> implements $WatermarkCopyWith<$Res> {
  _$WatermarkCopyWithImpl(this._value, this._then);

  final Watermark _value;
  // ignore: unused_field
  final $Res Function(Watermark) _then;

  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
    Object? bytes = freezed,
  }) {
    return _then(_value.copyWith(
      x: x == freezed
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: y == freezed
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
      bytes: bytes == freezed
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc
abstract class _$WatermarkWatermarkCopyWith<$Res>
    implements $WatermarkCopyWith<$Res> {
  factory _$WatermarkWatermarkCopyWith(
          _WatermarkWatermark value, $Res Function(_WatermarkWatermark) then) =
      __$WatermarkWatermarkCopyWithImpl<$Res>;
  @override
  $Res call({int x, int y, Uint8List bytes});
}

/// @nodoc
class __$WatermarkWatermarkCopyWithImpl<$Res>
    extends _$WatermarkCopyWithImpl<$Res>
    implements _$WatermarkWatermarkCopyWith<$Res> {
  __$WatermarkWatermarkCopyWithImpl(
      _WatermarkWatermark _value, $Res Function(_WatermarkWatermark) _then)
      : super(_value, (v) => _then(v as _WatermarkWatermark));

  @override
  _WatermarkWatermark get _value => super._value as _WatermarkWatermark;

  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
    Object? bytes = freezed,
  }) {
    return _then(_WatermarkWatermark(
      x: x == freezed
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: y == freezed
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
      bytes: bytes == freezed
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$_WatermarkWatermark extends _WatermarkWatermark {
  const _$_WatermarkWatermark(
      {required this.x, required this.y, required this.bytes})
      : super._();

  @override
  final int x;
  @override
  final int y;
  @override
  final Uint8List bytes;

  @override
  String toString() {
    return 'Watermark.bytes(x: $x, y: $y, bytes: $bytes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WatermarkWatermark &&
            const DeepCollectionEquality().equals(other.x, x) &&
            const DeepCollectionEquality().equals(other.y, y) &&
            const DeepCollectionEquality().equals(other.bytes, bytes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(x),
      const DeepCollectionEquality().hash(y),
      const DeepCollectionEquality().hash(bytes));

  @JsonKey(ignore: true)
  @override
  _$WatermarkWatermarkCopyWith<_WatermarkWatermark> get copyWith =>
      __$WatermarkWatermarkCopyWithImpl<_WatermarkWatermark>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int x, int y, Uint8List bytes) bytes,
  }) {
    return bytes(x, y, this.bytes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int x, int y, Uint8List bytes)? bytes,
  }) {
    return bytes?.call(x, y, this.bytes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int x, int y, Uint8List bytes)? bytes,
    required TResult orElse(),
  }) {
    if (bytes != null) {
      return bytes(x, y, this.bytes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatermarkWatermark value) bytes,
  }) {
    return bytes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatermarkWatermark value)? bytes,
  }) {
    return bytes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatermarkWatermark value)? bytes,
    required TResult orElse(),
  }) {
    if (bytes != null) {
      return bytes(this);
    }
    return orElse();
  }
}

abstract class _WatermarkWatermark extends Watermark implements Filter {
  const factory _WatermarkWatermark(
      {required final int x,
      required final int y,
      required final Uint8List bytes}) = _$_WatermarkWatermark;
  const _WatermarkWatermark._() : super._();

  @override
  int get x => throw _privateConstructorUsedError;
  @override
  int get y => throw _privateConstructorUsedError;
  @override
  Uint8List get bytes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WatermarkWatermarkCopyWith<_WatermarkWatermark> get copyWith =>
      throw _privateConstructorUsedError;
}
