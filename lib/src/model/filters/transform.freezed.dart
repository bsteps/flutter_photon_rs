// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transform.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Transform {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int x1, int y1, int x2, int y2) crop,
    required TResult Function() flipH,
    required TResult Function() flipV,
    required TResult Function(int padding, Color color) paddingTop,
    required TResult Function(int padding, Color color) paddingRight,
    required TResult Function(int padding, Color color) paddingLeft,
    required TResult Function(int padding, Color color) paddingBottom,
    required TResult Function(int padding, Color color) paddingUniform,
    required TResult Function(
            int height, int width, SamplingFilter samplingFilter)
        resize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int x1, int y1, int x2, int y2)? crop,
    TResult Function()? flipH,
    TResult Function()? flipV,
    TResult Function(int padding, Color color)? paddingTop,
    TResult Function(int padding, Color color)? paddingRight,
    TResult Function(int padding, Color color)? paddingLeft,
    TResult Function(int padding, Color color)? paddingBottom,
    TResult Function(int padding, Color color)? paddingUniform,
    TResult Function(int height, int width, SamplingFilter samplingFilter)?
        resize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int x1, int y1, int x2, int y2)? crop,
    TResult Function()? flipH,
    TResult Function()? flipV,
    TResult Function(int padding, Color color)? paddingTop,
    TResult Function(int padding, Color color)? paddingRight,
    TResult Function(int padding, Color color)? paddingLeft,
    TResult Function(int padding, Color color)? paddingBottom,
    TResult Function(int padding, Color color)? paddingUniform,
    TResult Function(int height, int width, SamplingFilter samplingFilter)?
        resize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TransformCrop value) crop,
    required TResult Function(_TransformFlipH value) flipH,
    required TResult Function(_TransformFlipV value) flipV,
    required TResult Function(_TransformPaddingTop value) paddingTop,
    required TResult Function(_TransformPaddingRight value) paddingRight,
    required TResult Function(_TransformPaddingLeft value) paddingLeft,
    required TResult Function(_TransformPaddingBottom value) paddingBottom,
    required TResult Function(_TransformPaddingUniform value) paddingUniform,
    required TResult Function(_TransformResize value) resize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TransformCrop value)? crop,
    TResult Function(_TransformFlipH value)? flipH,
    TResult Function(_TransformFlipV value)? flipV,
    TResult Function(_TransformPaddingTop value)? paddingTop,
    TResult Function(_TransformPaddingRight value)? paddingRight,
    TResult Function(_TransformPaddingLeft value)? paddingLeft,
    TResult Function(_TransformPaddingBottom value)? paddingBottom,
    TResult Function(_TransformPaddingUniform value)? paddingUniform,
    TResult Function(_TransformResize value)? resize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TransformCrop value)? crop,
    TResult Function(_TransformFlipH value)? flipH,
    TResult Function(_TransformFlipV value)? flipV,
    TResult Function(_TransformPaddingTop value)? paddingTop,
    TResult Function(_TransformPaddingRight value)? paddingRight,
    TResult Function(_TransformPaddingLeft value)? paddingLeft,
    TResult Function(_TransformPaddingBottom value)? paddingBottom,
    TResult Function(_TransformPaddingUniform value)? paddingUniform,
    TResult Function(_TransformResize value)? resize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransformCopyWith<$Res> {
  factory $TransformCopyWith(Transform value, $Res Function(Transform) then) =
      _$TransformCopyWithImpl<$Res>;
}

/// @nodoc
class _$TransformCopyWithImpl<$Res> implements $TransformCopyWith<$Res> {
  _$TransformCopyWithImpl(this._value, this._then);

  final Transform _value;
  // ignore: unused_field
  final $Res Function(Transform) _then;
}

/// @nodoc
abstract class _$TransformCropCopyWith<$Res> {
  factory _$TransformCropCopyWith(
          _TransformCrop value, $Res Function(_TransformCrop) then) =
      __$TransformCropCopyWithImpl<$Res>;
  $Res call({int x1, int y1, int x2, int y2});
}

/// @nodoc
class __$TransformCropCopyWithImpl<$Res> extends _$TransformCopyWithImpl<$Res>
    implements _$TransformCropCopyWith<$Res> {
  __$TransformCropCopyWithImpl(
      _TransformCrop _value, $Res Function(_TransformCrop) _then)
      : super(_value, (v) => _then(v as _TransformCrop));

  @override
  _TransformCrop get _value => super._value as _TransformCrop;

  @override
  $Res call({
    Object? x1 = freezed,
    Object? y1 = freezed,
    Object? x2 = freezed,
    Object? y2 = freezed,
  }) {
    return _then(_TransformCrop(
      x1: x1 == freezed
          ? _value.x1
          : x1 // ignore: cast_nullable_to_non_nullable
              as int,
      y1: y1 == freezed
          ? _value.y1
          : y1 // ignore: cast_nullable_to_non_nullable
              as int,
      x2: x2 == freezed
          ? _value.x2
          : x2 // ignore: cast_nullable_to_non_nullable
              as int,
      y2: y2 == freezed
          ? _value.y2
          : y2 // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_TransformCrop extends _TransformCrop {
  const _$_TransformCrop(
      {required this.x1, required this.y1, required this.x2, required this.y2})
      : super._();

  @override
  final int x1;
  @override
  final int y1;
  @override
  final int x2;
  @override
  final int y2;

  @override
  String toString() {
    return 'Transform.crop(x1: $x1, y1: $y1, x2: $x2, y2: $y2)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TransformCrop &&
            const DeepCollectionEquality().equals(other.x1, x1) &&
            const DeepCollectionEquality().equals(other.y1, y1) &&
            const DeepCollectionEquality().equals(other.x2, x2) &&
            const DeepCollectionEquality().equals(other.y2, y2));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(x1),
      const DeepCollectionEquality().hash(y1),
      const DeepCollectionEquality().hash(x2),
      const DeepCollectionEquality().hash(y2));

  @JsonKey(ignore: true)
  @override
  _$TransformCropCopyWith<_TransformCrop> get copyWith =>
      __$TransformCropCopyWithImpl<_TransformCrop>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int x1, int y1, int x2, int y2) crop,
    required TResult Function() flipH,
    required TResult Function() flipV,
    required TResult Function(int padding, Color color) paddingTop,
    required TResult Function(int padding, Color color) paddingRight,
    required TResult Function(int padding, Color color) paddingLeft,
    required TResult Function(int padding, Color color) paddingBottom,
    required TResult Function(int padding, Color color) paddingUniform,
    required TResult Function(
            int height, int width, SamplingFilter samplingFilter)
        resize,
  }) {
    return crop(x1, y1, x2, y2);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int x1, int y1, int x2, int y2)? crop,
    TResult Function()? flipH,
    TResult Function()? flipV,
    TResult Function(int padding, Color color)? paddingTop,
    TResult Function(int padding, Color color)? paddingRight,
    TResult Function(int padding, Color color)? paddingLeft,
    TResult Function(int padding, Color color)? paddingBottom,
    TResult Function(int padding, Color color)? paddingUniform,
    TResult Function(int height, int width, SamplingFilter samplingFilter)?
        resize,
  }) {
    return crop?.call(x1, y1, x2, y2);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int x1, int y1, int x2, int y2)? crop,
    TResult Function()? flipH,
    TResult Function()? flipV,
    TResult Function(int padding, Color color)? paddingTop,
    TResult Function(int padding, Color color)? paddingRight,
    TResult Function(int padding, Color color)? paddingLeft,
    TResult Function(int padding, Color color)? paddingBottom,
    TResult Function(int padding, Color color)? paddingUniform,
    TResult Function(int height, int width, SamplingFilter samplingFilter)?
        resize,
    required TResult orElse(),
  }) {
    if (crop != null) {
      return crop(x1, y1, x2, y2);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TransformCrop value) crop,
    required TResult Function(_TransformFlipH value) flipH,
    required TResult Function(_TransformFlipV value) flipV,
    required TResult Function(_TransformPaddingTop value) paddingTop,
    required TResult Function(_TransformPaddingRight value) paddingRight,
    required TResult Function(_TransformPaddingLeft value) paddingLeft,
    required TResult Function(_TransformPaddingBottom value) paddingBottom,
    required TResult Function(_TransformPaddingUniform value) paddingUniform,
    required TResult Function(_TransformResize value) resize,
  }) {
    return crop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TransformCrop value)? crop,
    TResult Function(_TransformFlipH value)? flipH,
    TResult Function(_TransformFlipV value)? flipV,
    TResult Function(_TransformPaddingTop value)? paddingTop,
    TResult Function(_TransformPaddingRight value)? paddingRight,
    TResult Function(_TransformPaddingLeft value)? paddingLeft,
    TResult Function(_TransformPaddingBottom value)? paddingBottom,
    TResult Function(_TransformPaddingUniform value)? paddingUniform,
    TResult Function(_TransformResize value)? resize,
  }) {
    return crop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TransformCrop value)? crop,
    TResult Function(_TransformFlipH value)? flipH,
    TResult Function(_TransformFlipV value)? flipV,
    TResult Function(_TransformPaddingTop value)? paddingTop,
    TResult Function(_TransformPaddingRight value)? paddingRight,
    TResult Function(_TransformPaddingLeft value)? paddingLeft,
    TResult Function(_TransformPaddingBottom value)? paddingBottom,
    TResult Function(_TransformPaddingUniform value)? paddingUniform,
    TResult Function(_TransformResize value)? resize,
    required TResult orElse(),
  }) {
    if (crop != null) {
      return crop(this);
    }
    return orElse();
  }
}

abstract class _TransformCrop extends Transform implements Filter {
  const factory _TransformCrop(
      {required final int x1,
      required final int y1,
      required final int x2,
      required final int y2}) = _$_TransformCrop;
  const _TransformCrop._() : super._();

  int get x1 => throw _privateConstructorUsedError;
  int get y1 => throw _privateConstructorUsedError;
  int get x2 => throw _privateConstructorUsedError;
  int get y2 => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TransformCropCopyWith<_TransformCrop> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TransformFlipHCopyWith<$Res> {
  factory _$TransformFlipHCopyWith(
          _TransformFlipH value, $Res Function(_TransformFlipH) then) =
      __$TransformFlipHCopyWithImpl<$Res>;
}

/// @nodoc
class __$TransformFlipHCopyWithImpl<$Res> extends _$TransformCopyWithImpl<$Res>
    implements _$TransformFlipHCopyWith<$Res> {
  __$TransformFlipHCopyWithImpl(
      _TransformFlipH _value, $Res Function(_TransformFlipH) _then)
      : super(_value, (v) => _then(v as _TransformFlipH));

  @override
  _TransformFlipH get _value => super._value as _TransformFlipH;
}

/// @nodoc

class _$_TransformFlipH extends _TransformFlipH {
  const _$_TransformFlipH() : super._();

  @override
  String toString() {
    return 'Transform.flipH()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _TransformFlipH);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int x1, int y1, int x2, int y2) crop,
    required TResult Function() flipH,
    required TResult Function() flipV,
    required TResult Function(int padding, Color color) paddingTop,
    required TResult Function(int padding, Color color) paddingRight,
    required TResult Function(int padding, Color color) paddingLeft,
    required TResult Function(int padding, Color color) paddingBottom,
    required TResult Function(int padding, Color color) paddingUniform,
    required TResult Function(
            int height, int width, SamplingFilter samplingFilter)
        resize,
  }) {
    return flipH();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int x1, int y1, int x2, int y2)? crop,
    TResult Function()? flipH,
    TResult Function()? flipV,
    TResult Function(int padding, Color color)? paddingTop,
    TResult Function(int padding, Color color)? paddingRight,
    TResult Function(int padding, Color color)? paddingLeft,
    TResult Function(int padding, Color color)? paddingBottom,
    TResult Function(int padding, Color color)? paddingUniform,
    TResult Function(int height, int width, SamplingFilter samplingFilter)?
        resize,
  }) {
    return flipH?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int x1, int y1, int x2, int y2)? crop,
    TResult Function()? flipH,
    TResult Function()? flipV,
    TResult Function(int padding, Color color)? paddingTop,
    TResult Function(int padding, Color color)? paddingRight,
    TResult Function(int padding, Color color)? paddingLeft,
    TResult Function(int padding, Color color)? paddingBottom,
    TResult Function(int padding, Color color)? paddingUniform,
    TResult Function(int height, int width, SamplingFilter samplingFilter)?
        resize,
    required TResult orElse(),
  }) {
    if (flipH != null) {
      return flipH();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TransformCrop value) crop,
    required TResult Function(_TransformFlipH value) flipH,
    required TResult Function(_TransformFlipV value) flipV,
    required TResult Function(_TransformPaddingTop value) paddingTop,
    required TResult Function(_TransformPaddingRight value) paddingRight,
    required TResult Function(_TransformPaddingLeft value) paddingLeft,
    required TResult Function(_TransformPaddingBottom value) paddingBottom,
    required TResult Function(_TransformPaddingUniform value) paddingUniform,
    required TResult Function(_TransformResize value) resize,
  }) {
    return flipH(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TransformCrop value)? crop,
    TResult Function(_TransformFlipH value)? flipH,
    TResult Function(_TransformFlipV value)? flipV,
    TResult Function(_TransformPaddingTop value)? paddingTop,
    TResult Function(_TransformPaddingRight value)? paddingRight,
    TResult Function(_TransformPaddingLeft value)? paddingLeft,
    TResult Function(_TransformPaddingBottom value)? paddingBottom,
    TResult Function(_TransformPaddingUniform value)? paddingUniform,
    TResult Function(_TransformResize value)? resize,
  }) {
    return flipH?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TransformCrop value)? crop,
    TResult Function(_TransformFlipH value)? flipH,
    TResult Function(_TransformFlipV value)? flipV,
    TResult Function(_TransformPaddingTop value)? paddingTop,
    TResult Function(_TransformPaddingRight value)? paddingRight,
    TResult Function(_TransformPaddingLeft value)? paddingLeft,
    TResult Function(_TransformPaddingBottom value)? paddingBottom,
    TResult Function(_TransformPaddingUniform value)? paddingUniform,
    TResult Function(_TransformResize value)? resize,
    required TResult orElse(),
  }) {
    if (flipH != null) {
      return flipH(this);
    }
    return orElse();
  }
}

abstract class _TransformFlipH extends Transform {
  const factory _TransformFlipH() = _$_TransformFlipH;
  const _TransformFlipH._() : super._();
}

/// @nodoc
abstract class _$TransformFlipVCopyWith<$Res> {
  factory _$TransformFlipVCopyWith(
          _TransformFlipV value, $Res Function(_TransformFlipV) then) =
      __$TransformFlipVCopyWithImpl<$Res>;
}

/// @nodoc
class __$TransformFlipVCopyWithImpl<$Res> extends _$TransformCopyWithImpl<$Res>
    implements _$TransformFlipVCopyWith<$Res> {
  __$TransformFlipVCopyWithImpl(
      _TransformFlipV _value, $Res Function(_TransformFlipV) _then)
      : super(_value, (v) => _then(v as _TransformFlipV));

  @override
  _TransformFlipV get _value => super._value as _TransformFlipV;
}

/// @nodoc

class _$_TransformFlipV extends _TransformFlipV {
  const _$_TransformFlipV() : super._();

  @override
  String toString() {
    return 'Transform.flipV()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _TransformFlipV);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int x1, int y1, int x2, int y2) crop,
    required TResult Function() flipH,
    required TResult Function() flipV,
    required TResult Function(int padding, Color color) paddingTop,
    required TResult Function(int padding, Color color) paddingRight,
    required TResult Function(int padding, Color color) paddingLeft,
    required TResult Function(int padding, Color color) paddingBottom,
    required TResult Function(int padding, Color color) paddingUniform,
    required TResult Function(
            int height, int width, SamplingFilter samplingFilter)
        resize,
  }) {
    return flipV();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int x1, int y1, int x2, int y2)? crop,
    TResult Function()? flipH,
    TResult Function()? flipV,
    TResult Function(int padding, Color color)? paddingTop,
    TResult Function(int padding, Color color)? paddingRight,
    TResult Function(int padding, Color color)? paddingLeft,
    TResult Function(int padding, Color color)? paddingBottom,
    TResult Function(int padding, Color color)? paddingUniform,
    TResult Function(int height, int width, SamplingFilter samplingFilter)?
        resize,
  }) {
    return flipV?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int x1, int y1, int x2, int y2)? crop,
    TResult Function()? flipH,
    TResult Function()? flipV,
    TResult Function(int padding, Color color)? paddingTop,
    TResult Function(int padding, Color color)? paddingRight,
    TResult Function(int padding, Color color)? paddingLeft,
    TResult Function(int padding, Color color)? paddingBottom,
    TResult Function(int padding, Color color)? paddingUniform,
    TResult Function(int height, int width, SamplingFilter samplingFilter)?
        resize,
    required TResult orElse(),
  }) {
    if (flipV != null) {
      return flipV();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TransformCrop value) crop,
    required TResult Function(_TransformFlipH value) flipH,
    required TResult Function(_TransformFlipV value) flipV,
    required TResult Function(_TransformPaddingTop value) paddingTop,
    required TResult Function(_TransformPaddingRight value) paddingRight,
    required TResult Function(_TransformPaddingLeft value) paddingLeft,
    required TResult Function(_TransformPaddingBottom value) paddingBottom,
    required TResult Function(_TransformPaddingUniform value) paddingUniform,
    required TResult Function(_TransformResize value) resize,
  }) {
    return flipV(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TransformCrop value)? crop,
    TResult Function(_TransformFlipH value)? flipH,
    TResult Function(_TransformFlipV value)? flipV,
    TResult Function(_TransformPaddingTop value)? paddingTop,
    TResult Function(_TransformPaddingRight value)? paddingRight,
    TResult Function(_TransformPaddingLeft value)? paddingLeft,
    TResult Function(_TransformPaddingBottom value)? paddingBottom,
    TResult Function(_TransformPaddingUniform value)? paddingUniform,
    TResult Function(_TransformResize value)? resize,
  }) {
    return flipV?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TransformCrop value)? crop,
    TResult Function(_TransformFlipH value)? flipH,
    TResult Function(_TransformFlipV value)? flipV,
    TResult Function(_TransformPaddingTop value)? paddingTop,
    TResult Function(_TransformPaddingRight value)? paddingRight,
    TResult Function(_TransformPaddingLeft value)? paddingLeft,
    TResult Function(_TransformPaddingBottom value)? paddingBottom,
    TResult Function(_TransformPaddingUniform value)? paddingUniform,
    TResult Function(_TransformResize value)? resize,
    required TResult orElse(),
  }) {
    if (flipV != null) {
      return flipV(this);
    }
    return orElse();
  }
}

abstract class _TransformFlipV extends Transform {
  const factory _TransformFlipV() = _$_TransformFlipV;
  const _TransformFlipV._() : super._();
}

/// @nodoc
abstract class _$TransformPaddingTopCopyWith<$Res> {
  factory _$TransformPaddingTopCopyWith(_TransformPaddingTop value,
          $Res Function(_TransformPaddingTop) then) =
      __$TransformPaddingTopCopyWithImpl<$Res>;
  $Res call({int padding, Color color});
}

/// @nodoc
class __$TransformPaddingTopCopyWithImpl<$Res>
    extends _$TransformCopyWithImpl<$Res>
    implements _$TransformPaddingTopCopyWith<$Res> {
  __$TransformPaddingTopCopyWithImpl(
      _TransformPaddingTop _value, $Res Function(_TransformPaddingTop) _then)
      : super(_value, (v) => _then(v as _TransformPaddingTop));

  @override
  _TransformPaddingTop get _value => super._value as _TransformPaddingTop;

  @override
  $Res call({
    Object? padding = freezed,
    Object? color = freezed,
  }) {
    return _then(_TransformPaddingTop(
      padding: padding == freezed
          ? _value.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as int,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$_TransformPaddingTop extends _TransformPaddingTop {
  const _$_TransformPaddingTop({required this.padding, required this.color})
      : super._();

  @override
  final int padding;
  @override
  final Color color;

  @override
  String toString() {
    return 'Transform.paddingTop(padding: $padding, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TransformPaddingTop &&
            const DeepCollectionEquality().equals(other.padding, padding) &&
            const DeepCollectionEquality().equals(other.color, color));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(padding),
      const DeepCollectionEquality().hash(color));

  @JsonKey(ignore: true)
  @override
  _$TransformPaddingTopCopyWith<_TransformPaddingTop> get copyWith =>
      __$TransformPaddingTopCopyWithImpl<_TransformPaddingTop>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int x1, int y1, int x2, int y2) crop,
    required TResult Function() flipH,
    required TResult Function() flipV,
    required TResult Function(int padding, Color color) paddingTop,
    required TResult Function(int padding, Color color) paddingRight,
    required TResult Function(int padding, Color color) paddingLeft,
    required TResult Function(int padding, Color color) paddingBottom,
    required TResult Function(int padding, Color color) paddingUniform,
    required TResult Function(
            int height, int width, SamplingFilter samplingFilter)
        resize,
  }) {
    return paddingTop(padding, color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int x1, int y1, int x2, int y2)? crop,
    TResult Function()? flipH,
    TResult Function()? flipV,
    TResult Function(int padding, Color color)? paddingTop,
    TResult Function(int padding, Color color)? paddingRight,
    TResult Function(int padding, Color color)? paddingLeft,
    TResult Function(int padding, Color color)? paddingBottom,
    TResult Function(int padding, Color color)? paddingUniform,
    TResult Function(int height, int width, SamplingFilter samplingFilter)?
        resize,
  }) {
    return paddingTop?.call(padding, color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int x1, int y1, int x2, int y2)? crop,
    TResult Function()? flipH,
    TResult Function()? flipV,
    TResult Function(int padding, Color color)? paddingTop,
    TResult Function(int padding, Color color)? paddingRight,
    TResult Function(int padding, Color color)? paddingLeft,
    TResult Function(int padding, Color color)? paddingBottom,
    TResult Function(int padding, Color color)? paddingUniform,
    TResult Function(int height, int width, SamplingFilter samplingFilter)?
        resize,
    required TResult orElse(),
  }) {
    if (paddingTop != null) {
      return paddingTop(padding, color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TransformCrop value) crop,
    required TResult Function(_TransformFlipH value) flipH,
    required TResult Function(_TransformFlipV value) flipV,
    required TResult Function(_TransformPaddingTop value) paddingTop,
    required TResult Function(_TransformPaddingRight value) paddingRight,
    required TResult Function(_TransformPaddingLeft value) paddingLeft,
    required TResult Function(_TransformPaddingBottom value) paddingBottom,
    required TResult Function(_TransformPaddingUniform value) paddingUniform,
    required TResult Function(_TransformResize value) resize,
  }) {
    return paddingTop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TransformCrop value)? crop,
    TResult Function(_TransformFlipH value)? flipH,
    TResult Function(_TransformFlipV value)? flipV,
    TResult Function(_TransformPaddingTop value)? paddingTop,
    TResult Function(_TransformPaddingRight value)? paddingRight,
    TResult Function(_TransformPaddingLeft value)? paddingLeft,
    TResult Function(_TransformPaddingBottom value)? paddingBottom,
    TResult Function(_TransformPaddingUniform value)? paddingUniform,
    TResult Function(_TransformResize value)? resize,
  }) {
    return paddingTop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TransformCrop value)? crop,
    TResult Function(_TransformFlipH value)? flipH,
    TResult Function(_TransformFlipV value)? flipV,
    TResult Function(_TransformPaddingTop value)? paddingTop,
    TResult Function(_TransformPaddingRight value)? paddingRight,
    TResult Function(_TransformPaddingLeft value)? paddingLeft,
    TResult Function(_TransformPaddingBottom value)? paddingBottom,
    TResult Function(_TransformPaddingUniform value)? paddingUniform,
    TResult Function(_TransformResize value)? resize,
    required TResult orElse(),
  }) {
    if (paddingTop != null) {
      return paddingTop(this);
    }
    return orElse();
  }
}

abstract class _TransformPaddingTop extends Transform {
  const factory _TransformPaddingTop(
      {required final int padding,
      required final Color color}) = _$_TransformPaddingTop;
  const _TransformPaddingTop._() : super._();

  int get padding => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TransformPaddingTopCopyWith<_TransformPaddingTop> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TransformPaddingRightCopyWith<$Res> {
  factory _$TransformPaddingRightCopyWith(_TransformPaddingRight value,
          $Res Function(_TransformPaddingRight) then) =
      __$TransformPaddingRightCopyWithImpl<$Res>;
  $Res call({int padding, Color color});
}

/// @nodoc
class __$TransformPaddingRightCopyWithImpl<$Res>
    extends _$TransformCopyWithImpl<$Res>
    implements _$TransformPaddingRightCopyWith<$Res> {
  __$TransformPaddingRightCopyWithImpl(_TransformPaddingRight _value,
      $Res Function(_TransformPaddingRight) _then)
      : super(_value, (v) => _then(v as _TransformPaddingRight));

  @override
  _TransformPaddingRight get _value => super._value as _TransformPaddingRight;

  @override
  $Res call({
    Object? padding = freezed,
    Object? color = freezed,
  }) {
    return _then(_TransformPaddingRight(
      padding: padding == freezed
          ? _value.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as int,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$_TransformPaddingRight extends _TransformPaddingRight {
  const _$_TransformPaddingRight({required this.padding, required this.color})
      : super._();

  @override
  final int padding;
  @override
  final Color color;

  @override
  String toString() {
    return 'Transform.paddingRight(padding: $padding, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TransformPaddingRight &&
            const DeepCollectionEquality().equals(other.padding, padding) &&
            const DeepCollectionEquality().equals(other.color, color));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(padding),
      const DeepCollectionEquality().hash(color));

  @JsonKey(ignore: true)
  @override
  _$TransformPaddingRightCopyWith<_TransformPaddingRight> get copyWith =>
      __$TransformPaddingRightCopyWithImpl<_TransformPaddingRight>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int x1, int y1, int x2, int y2) crop,
    required TResult Function() flipH,
    required TResult Function() flipV,
    required TResult Function(int padding, Color color) paddingTop,
    required TResult Function(int padding, Color color) paddingRight,
    required TResult Function(int padding, Color color) paddingLeft,
    required TResult Function(int padding, Color color) paddingBottom,
    required TResult Function(int padding, Color color) paddingUniform,
    required TResult Function(
            int height, int width, SamplingFilter samplingFilter)
        resize,
  }) {
    return paddingRight(padding, color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int x1, int y1, int x2, int y2)? crop,
    TResult Function()? flipH,
    TResult Function()? flipV,
    TResult Function(int padding, Color color)? paddingTop,
    TResult Function(int padding, Color color)? paddingRight,
    TResult Function(int padding, Color color)? paddingLeft,
    TResult Function(int padding, Color color)? paddingBottom,
    TResult Function(int padding, Color color)? paddingUniform,
    TResult Function(int height, int width, SamplingFilter samplingFilter)?
        resize,
  }) {
    return paddingRight?.call(padding, color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int x1, int y1, int x2, int y2)? crop,
    TResult Function()? flipH,
    TResult Function()? flipV,
    TResult Function(int padding, Color color)? paddingTop,
    TResult Function(int padding, Color color)? paddingRight,
    TResult Function(int padding, Color color)? paddingLeft,
    TResult Function(int padding, Color color)? paddingBottom,
    TResult Function(int padding, Color color)? paddingUniform,
    TResult Function(int height, int width, SamplingFilter samplingFilter)?
        resize,
    required TResult orElse(),
  }) {
    if (paddingRight != null) {
      return paddingRight(padding, color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TransformCrop value) crop,
    required TResult Function(_TransformFlipH value) flipH,
    required TResult Function(_TransformFlipV value) flipV,
    required TResult Function(_TransformPaddingTop value) paddingTop,
    required TResult Function(_TransformPaddingRight value) paddingRight,
    required TResult Function(_TransformPaddingLeft value) paddingLeft,
    required TResult Function(_TransformPaddingBottom value) paddingBottom,
    required TResult Function(_TransformPaddingUniform value) paddingUniform,
    required TResult Function(_TransformResize value) resize,
  }) {
    return paddingRight(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TransformCrop value)? crop,
    TResult Function(_TransformFlipH value)? flipH,
    TResult Function(_TransformFlipV value)? flipV,
    TResult Function(_TransformPaddingTop value)? paddingTop,
    TResult Function(_TransformPaddingRight value)? paddingRight,
    TResult Function(_TransformPaddingLeft value)? paddingLeft,
    TResult Function(_TransformPaddingBottom value)? paddingBottom,
    TResult Function(_TransformPaddingUniform value)? paddingUniform,
    TResult Function(_TransformResize value)? resize,
  }) {
    return paddingRight?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TransformCrop value)? crop,
    TResult Function(_TransformFlipH value)? flipH,
    TResult Function(_TransformFlipV value)? flipV,
    TResult Function(_TransformPaddingTop value)? paddingTop,
    TResult Function(_TransformPaddingRight value)? paddingRight,
    TResult Function(_TransformPaddingLeft value)? paddingLeft,
    TResult Function(_TransformPaddingBottom value)? paddingBottom,
    TResult Function(_TransformPaddingUniform value)? paddingUniform,
    TResult Function(_TransformResize value)? resize,
    required TResult orElse(),
  }) {
    if (paddingRight != null) {
      return paddingRight(this);
    }
    return orElse();
  }
}

abstract class _TransformPaddingRight extends Transform {
  const factory _TransformPaddingRight(
      {required final int padding,
      required final Color color}) = _$_TransformPaddingRight;
  const _TransformPaddingRight._() : super._();

  int get padding => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TransformPaddingRightCopyWith<_TransformPaddingRight> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TransformPaddingLeftCopyWith<$Res> {
  factory _$TransformPaddingLeftCopyWith(_TransformPaddingLeft value,
          $Res Function(_TransformPaddingLeft) then) =
      __$TransformPaddingLeftCopyWithImpl<$Res>;
  $Res call({int padding, Color color});
}

/// @nodoc
class __$TransformPaddingLeftCopyWithImpl<$Res>
    extends _$TransformCopyWithImpl<$Res>
    implements _$TransformPaddingLeftCopyWith<$Res> {
  __$TransformPaddingLeftCopyWithImpl(
      _TransformPaddingLeft _value, $Res Function(_TransformPaddingLeft) _then)
      : super(_value, (v) => _then(v as _TransformPaddingLeft));

  @override
  _TransformPaddingLeft get _value => super._value as _TransformPaddingLeft;

  @override
  $Res call({
    Object? padding = freezed,
    Object? color = freezed,
  }) {
    return _then(_TransformPaddingLeft(
      padding: padding == freezed
          ? _value.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as int,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$_TransformPaddingLeft extends _TransformPaddingLeft {
  const _$_TransformPaddingLeft({required this.padding, required this.color})
      : super._();

  @override
  final int padding;
  @override
  final Color color;

  @override
  String toString() {
    return 'Transform.paddingLeft(padding: $padding, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TransformPaddingLeft &&
            const DeepCollectionEquality().equals(other.padding, padding) &&
            const DeepCollectionEquality().equals(other.color, color));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(padding),
      const DeepCollectionEquality().hash(color));

  @JsonKey(ignore: true)
  @override
  _$TransformPaddingLeftCopyWith<_TransformPaddingLeft> get copyWith =>
      __$TransformPaddingLeftCopyWithImpl<_TransformPaddingLeft>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int x1, int y1, int x2, int y2) crop,
    required TResult Function() flipH,
    required TResult Function() flipV,
    required TResult Function(int padding, Color color) paddingTop,
    required TResult Function(int padding, Color color) paddingRight,
    required TResult Function(int padding, Color color) paddingLeft,
    required TResult Function(int padding, Color color) paddingBottom,
    required TResult Function(int padding, Color color) paddingUniform,
    required TResult Function(
            int height, int width, SamplingFilter samplingFilter)
        resize,
  }) {
    return paddingLeft(padding, color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int x1, int y1, int x2, int y2)? crop,
    TResult Function()? flipH,
    TResult Function()? flipV,
    TResult Function(int padding, Color color)? paddingTop,
    TResult Function(int padding, Color color)? paddingRight,
    TResult Function(int padding, Color color)? paddingLeft,
    TResult Function(int padding, Color color)? paddingBottom,
    TResult Function(int padding, Color color)? paddingUniform,
    TResult Function(int height, int width, SamplingFilter samplingFilter)?
        resize,
  }) {
    return paddingLeft?.call(padding, color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int x1, int y1, int x2, int y2)? crop,
    TResult Function()? flipH,
    TResult Function()? flipV,
    TResult Function(int padding, Color color)? paddingTop,
    TResult Function(int padding, Color color)? paddingRight,
    TResult Function(int padding, Color color)? paddingLeft,
    TResult Function(int padding, Color color)? paddingBottom,
    TResult Function(int padding, Color color)? paddingUniform,
    TResult Function(int height, int width, SamplingFilter samplingFilter)?
        resize,
    required TResult orElse(),
  }) {
    if (paddingLeft != null) {
      return paddingLeft(padding, color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TransformCrop value) crop,
    required TResult Function(_TransformFlipH value) flipH,
    required TResult Function(_TransformFlipV value) flipV,
    required TResult Function(_TransformPaddingTop value) paddingTop,
    required TResult Function(_TransformPaddingRight value) paddingRight,
    required TResult Function(_TransformPaddingLeft value) paddingLeft,
    required TResult Function(_TransformPaddingBottom value) paddingBottom,
    required TResult Function(_TransformPaddingUniform value) paddingUniform,
    required TResult Function(_TransformResize value) resize,
  }) {
    return paddingLeft(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TransformCrop value)? crop,
    TResult Function(_TransformFlipH value)? flipH,
    TResult Function(_TransformFlipV value)? flipV,
    TResult Function(_TransformPaddingTop value)? paddingTop,
    TResult Function(_TransformPaddingRight value)? paddingRight,
    TResult Function(_TransformPaddingLeft value)? paddingLeft,
    TResult Function(_TransformPaddingBottom value)? paddingBottom,
    TResult Function(_TransformPaddingUniform value)? paddingUniform,
    TResult Function(_TransformResize value)? resize,
  }) {
    return paddingLeft?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TransformCrop value)? crop,
    TResult Function(_TransformFlipH value)? flipH,
    TResult Function(_TransformFlipV value)? flipV,
    TResult Function(_TransformPaddingTop value)? paddingTop,
    TResult Function(_TransformPaddingRight value)? paddingRight,
    TResult Function(_TransformPaddingLeft value)? paddingLeft,
    TResult Function(_TransformPaddingBottom value)? paddingBottom,
    TResult Function(_TransformPaddingUniform value)? paddingUniform,
    TResult Function(_TransformResize value)? resize,
    required TResult orElse(),
  }) {
    if (paddingLeft != null) {
      return paddingLeft(this);
    }
    return orElse();
  }
}

abstract class _TransformPaddingLeft extends Transform {
  const factory _TransformPaddingLeft(
      {required final int padding,
      required final Color color}) = _$_TransformPaddingLeft;
  const _TransformPaddingLeft._() : super._();

  int get padding => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TransformPaddingLeftCopyWith<_TransformPaddingLeft> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TransformPaddingBottomCopyWith<$Res> {
  factory _$TransformPaddingBottomCopyWith(_TransformPaddingBottom value,
          $Res Function(_TransformPaddingBottom) then) =
      __$TransformPaddingBottomCopyWithImpl<$Res>;
  $Res call({int padding, Color color});
}

/// @nodoc
class __$TransformPaddingBottomCopyWithImpl<$Res>
    extends _$TransformCopyWithImpl<$Res>
    implements _$TransformPaddingBottomCopyWith<$Res> {
  __$TransformPaddingBottomCopyWithImpl(_TransformPaddingBottom _value,
      $Res Function(_TransformPaddingBottom) _then)
      : super(_value, (v) => _then(v as _TransformPaddingBottom));

  @override
  _TransformPaddingBottom get _value => super._value as _TransformPaddingBottom;

  @override
  $Res call({
    Object? padding = freezed,
    Object? color = freezed,
  }) {
    return _then(_TransformPaddingBottom(
      padding: padding == freezed
          ? _value.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as int,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$_TransformPaddingBottom extends _TransformPaddingBottom {
  const _$_TransformPaddingBottom({required this.padding, required this.color})
      : super._();

  @override
  final int padding;
  @override
  final Color color;

  @override
  String toString() {
    return 'Transform.paddingBottom(padding: $padding, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TransformPaddingBottom &&
            const DeepCollectionEquality().equals(other.padding, padding) &&
            const DeepCollectionEquality().equals(other.color, color));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(padding),
      const DeepCollectionEquality().hash(color));

  @JsonKey(ignore: true)
  @override
  _$TransformPaddingBottomCopyWith<_TransformPaddingBottom> get copyWith =>
      __$TransformPaddingBottomCopyWithImpl<_TransformPaddingBottom>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int x1, int y1, int x2, int y2) crop,
    required TResult Function() flipH,
    required TResult Function() flipV,
    required TResult Function(int padding, Color color) paddingTop,
    required TResult Function(int padding, Color color) paddingRight,
    required TResult Function(int padding, Color color) paddingLeft,
    required TResult Function(int padding, Color color) paddingBottom,
    required TResult Function(int padding, Color color) paddingUniform,
    required TResult Function(
            int height, int width, SamplingFilter samplingFilter)
        resize,
  }) {
    return paddingBottom(padding, color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int x1, int y1, int x2, int y2)? crop,
    TResult Function()? flipH,
    TResult Function()? flipV,
    TResult Function(int padding, Color color)? paddingTop,
    TResult Function(int padding, Color color)? paddingRight,
    TResult Function(int padding, Color color)? paddingLeft,
    TResult Function(int padding, Color color)? paddingBottom,
    TResult Function(int padding, Color color)? paddingUniform,
    TResult Function(int height, int width, SamplingFilter samplingFilter)?
        resize,
  }) {
    return paddingBottom?.call(padding, color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int x1, int y1, int x2, int y2)? crop,
    TResult Function()? flipH,
    TResult Function()? flipV,
    TResult Function(int padding, Color color)? paddingTop,
    TResult Function(int padding, Color color)? paddingRight,
    TResult Function(int padding, Color color)? paddingLeft,
    TResult Function(int padding, Color color)? paddingBottom,
    TResult Function(int padding, Color color)? paddingUniform,
    TResult Function(int height, int width, SamplingFilter samplingFilter)?
        resize,
    required TResult orElse(),
  }) {
    if (paddingBottom != null) {
      return paddingBottom(padding, color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TransformCrop value) crop,
    required TResult Function(_TransformFlipH value) flipH,
    required TResult Function(_TransformFlipV value) flipV,
    required TResult Function(_TransformPaddingTop value) paddingTop,
    required TResult Function(_TransformPaddingRight value) paddingRight,
    required TResult Function(_TransformPaddingLeft value) paddingLeft,
    required TResult Function(_TransformPaddingBottom value) paddingBottom,
    required TResult Function(_TransformPaddingUniform value) paddingUniform,
    required TResult Function(_TransformResize value) resize,
  }) {
    return paddingBottom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TransformCrop value)? crop,
    TResult Function(_TransformFlipH value)? flipH,
    TResult Function(_TransformFlipV value)? flipV,
    TResult Function(_TransformPaddingTop value)? paddingTop,
    TResult Function(_TransformPaddingRight value)? paddingRight,
    TResult Function(_TransformPaddingLeft value)? paddingLeft,
    TResult Function(_TransformPaddingBottom value)? paddingBottom,
    TResult Function(_TransformPaddingUniform value)? paddingUniform,
    TResult Function(_TransformResize value)? resize,
  }) {
    return paddingBottom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TransformCrop value)? crop,
    TResult Function(_TransformFlipH value)? flipH,
    TResult Function(_TransformFlipV value)? flipV,
    TResult Function(_TransformPaddingTop value)? paddingTop,
    TResult Function(_TransformPaddingRight value)? paddingRight,
    TResult Function(_TransformPaddingLeft value)? paddingLeft,
    TResult Function(_TransformPaddingBottom value)? paddingBottom,
    TResult Function(_TransformPaddingUniform value)? paddingUniform,
    TResult Function(_TransformResize value)? resize,
    required TResult orElse(),
  }) {
    if (paddingBottom != null) {
      return paddingBottom(this);
    }
    return orElse();
  }
}

abstract class _TransformPaddingBottom extends Transform {
  const factory _TransformPaddingBottom(
      {required final int padding,
      required final Color color}) = _$_TransformPaddingBottom;
  const _TransformPaddingBottom._() : super._();

  int get padding => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TransformPaddingBottomCopyWith<_TransformPaddingBottom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TransformPaddingUniformCopyWith<$Res> {
  factory _$TransformPaddingUniformCopyWith(_TransformPaddingUniform value,
          $Res Function(_TransformPaddingUniform) then) =
      __$TransformPaddingUniformCopyWithImpl<$Res>;
  $Res call({int padding, Color color});
}

/// @nodoc
class __$TransformPaddingUniformCopyWithImpl<$Res>
    extends _$TransformCopyWithImpl<$Res>
    implements _$TransformPaddingUniformCopyWith<$Res> {
  __$TransformPaddingUniformCopyWithImpl(_TransformPaddingUniform _value,
      $Res Function(_TransformPaddingUniform) _then)
      : super(_value, (v) => _then(v as _TransformPaddingUniform));

  @override
  _TransformPaddingUniform get _value =>
      super._value as _TransformPaddingUniform;

  @override
  $Res call({
    Object? padding = freezed,
    Object? color = freezed,
  }) {
    return _then(_TransformPaddingUniform(
      padding: padding == freezed
          ? _value.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as int,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$_TransformPaddingUniform extends _TransformPaddingUniform {
  const _$_TransformPaddingUniform({required this.padding, required this.color})
      : super._();

  @override
  final int padding;
  @override
  final Color color;

  @override
  String toString() {
    return 'Transform.paddingUniform(padding: $padding, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TransformPaddingUniform &&
            const DeepCollectionEquality().equals(other.padding, padding) &&
            const DeepCollectionEquality().equals(other.color, color));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(padding),
      const DeepCollectionEquality().hash(color));

  @JsonKey(ignore: true)
  @override
  _$TransformPaddingUniformCopyWith<_TransformPaddingUniform> get copyWith =>
      __$TransformPaddingUniformCopyWithImpl<_TransformPaddingUniform>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int x1, int y1, int x2, int y2) crop,
    required TResult Function() flipH,
    required TResult Function() flipV,
    required TResult Function(int padding, Color color) paddingTop,
    required TResult Function(int padding, Color color) paddingRight,
    required TResult Function(int padding, Color color) paddingLeft,
    required TResult Function(int padding, Color color) paddingBottom,
    required TResult Function(int padding, Color color) paddingUniform,
    required TResult Function(
            int height, int width, SamplingFilter samplingFilter)
        resize,
  }) {
    return paddingUniform(padding, color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int x1, int y1, int x2, int y2)? crop,
    TResult Function()? flipH,
    TResult Function()? flipV,
    TResult Function(int padding, Color color)? paddingTop,
    TResult Function(int padding, Color color)? paddingRight,
    TResult Function(int padding, Color color)? paddingLeft,
    TResult Function(int padding, Color color)? paddingBottom,
    TResult Function(int padding, Color color)? paddingUniform,
    TResult Function(int height, int width, SamplingFilter samplingFilter)?
        resize,
  }) {
    return paddingUniform?.call(padding, color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int x1, int y1, int x2, int y2)? crop,
    TResult Function()? flipH,
    TResult Function()? flipV,
    TResult Function(int padding, Color color)? paddingTop,
    TResult Function(int padding, Color color)? paddingRight,
    TResult Function(int padding, Color color)? paddingLeft,
    TResult Function(int padding, Color color)? paddingBottom,
    TResult Function(int padding, Color color)? paddingUniform,
    TResult Function(int height, int width, SamplingFilter samplingFilter)?
        resize,
    required TResult orElse(),
  }) {
    if (paddingUniform != null) {
      return paddingUniform(padding, color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TransformCrop value) crop,
    required TResult Function(_TransformFlipH value) flipH,
    required TResult Function(_TransformFlipV value) flipV,
    required TResult Function(_TransformPaddingTop value) paddingTop,
    required TResult Function(_TransformPaddingRight value) paddingRight,
    required TResult Function(_TransformPaddingLeft value) paddingLeft,
    required TResult Function(_TransformPaddingBottom value) paddingBottom,
    required TResult Function(_TransformPaddingUniform value) paddingUniform,
    required TResult Function(_TransformResize value) resize,
  }) {
    return paddingUniform(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TransformCrop value)? crop,
    TResult Function(_TransformFlipH value)? flipH,
    TResult Function(_TransformFlipV value)? flipV,
    TResult Function(_TransformPaddingTop value)? paddingTop,
    TResult Function(_TransformPaddingRight value)? paddingRight,
    TResult Function(_TransformPaddingLeft value)? paddingLeft,
    TResult Function(_TransformPaddingBottom value)? paddingBottom,
    TResult Function(_TransformPaddingUniform value)? paddingUniform,
    TResult Function(_TransformResize value)? resize,
  }) {
    return paddingUniform?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TransformCrop value)? crop,
    TResult Function(_TransformFlipH value)? flipH,
    TResult Function(_TransformFlipV value)? flipV,
    TResult Function(_TransformPaddingTop value)? paddingTop,
    TResult Function(_TransformPaddingRight value)? paddingRight,
    TResult Function(_TransformPaddingLeft value)? paddingLeft,
    TResult Function(_TransformPaddingBottom value)? paddingBottom,
    TResult Function(_TransformPaddingUniform value)? paddingUniform,
    TResult Function(_TransformResize value)? resize,
    required TResult orElse(),
  }) {
    if (paddingUniform != null) {
      return paddingUniform(this);
    }
    return orElse();
  }
}

abstract class _TransformPaddingUniform extends Transform {
  const factory _TransformPaddingUniform(
      {required final int padding,
      required final Color color}) = _$_TransformPaddingUniform;
  const _TransformPaddingUniform._() : super._();

  int get padding => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TransformPaddingUniformCopyWith<_TransformPaddingUniform> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TransformResizeCopyWith<$Res> {
  factory _$TransformResizeCopyWith(
          _TransformResize value, $Res Function(_TransformResize) then) =
      __$TransformResizeCopyWithImpl<$Res>;
  $Res call({int height, int width, SamplingFilter samplingFilter});
}

/// @nodoc
class __$TransformResizeCopyWithImpl<$Res> extends _$TransformCopyWithImpl<$Res>
    implements _$TransformResizeCopyWith<$Res> {
  __$TransformResizeCopyWithImpl(
      _TransformResize _value, $Res Function(_TransformResize) _then)
      : super(_value, (v) => _then(v as _TransformResize));

  @override
  _TransformResize get _value => super._value as _TransformResize;

  @override
  $Res call({
    Object? height = freezed,
    Object? width = freezed,
    Object? samplingFilter = freezed,
  }) {
    return _then(_TransformResize(
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      samplingFilter: samplingFilter == freezed
          ? _value.samplingFilter
          : samplingFilter // ignore: cast_nullable_to_non_nullable
              as SamplingFilter,
    ));
  }
}

/// @nodoc

class _$_TransformResize extends _TransformResize {
  const _$_TransformResize(
      {required this.height,
      required this.width,
      this.samplingFilter = SamplingFilter.nearest})
      : super._();

  @override
  final int height;
  @override
  final int width;
  @override
  @JsonKey()
  final SamplingFilter samplingFilter;

  @override
  String toString() {
    return 'Transform.resize(height: $height, width: $width, samplingFilter: $samplingFilter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TransformResize &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.width, width) &&
            const DeepCollectionEquality()
                .equals(other.samplingFilter, samplingFilter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(width),
      const DeepCollectionEquality().hash(samplingFilter));

  @JsonKey(ignore: true)
  @override
  _$TransformResizeCopyWith<_TransformResize> get copyWith =>
      __$TransformResizeCopyWithImpl<_TransformResize>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int x1, int y1, int x2, int y2) crop,
    required TResult Function() flipH,
    required TResult Function() flipV,
    required TResult Function(int padding, Color color) paddingTop,
    required TResult Function(int padding, Color color) paddingRight,
    required TResult Function(int padding, Color color) paddingLeft,
    required TResult Function(int padding, Color color) paddingBottom,
    required TResult Function(int padding, Color color) paddingUniform,
    required TResult Function(
            int height, int width, SamplingFilter samplingFilter)
        resize,
  }) {
    return resize(height, width, samplingFilter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int x1, int y1, int x2, int y2)? crop,
    TResult Function()? flipH,
    TResult Function()? flipV,
    TResult Function(int padding, Color color)? paddingTop,
    TResult Function(int padding, Color color)? paddingRight,
    TResult Function(int padding, Color color)? paddingLeft,
    TResult Function(int padding, Color color)? paddingBottom,
    TResult Function(int padding, Color color)? paddingUniform,
    TResult Function(int height, int width, SamplingFilter samplingFilter)?
        resize,
  }) {
    return resize?.call(height, width, samplingFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int x1, int y1, int x2, int y2)? crop,
    TResult Function()? flipH,
    TResult Function()? flipV,
    TResult Function(int padding, Color color)? paddingTop,
    TResult Function(int padding, Color color)? paddingRight,
    TResult Function(int padding, Color color)? paddingLeft,
    TResult Function(int padding, Color color)? paddingBottom,
    TResult Function(int padding, Color color)? paddingUniform,
    TResult Function(int height, int width, SamplingFilter samplingFilter)?
        resize,
    required TResult orElse(),
  }) {
    if (resize != null) {
      return resize(height, width, samplingFilter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TransformCrop value) crop,
    required TResult Function(_TransformFlipH value) flipH,
    required TResult Function(_TransformFlipV value) flipV,
    required TResult Function(_TransformPaddingTop value) paddingTop,
    required TResult Function(_TransformPaddingRight value) paddingRight,
    required TResult Function(_TransformPaddingLeft value) paddingLeft,
    required TResult Function(_TransformPaddingBottom value) paddingBottom,
    required TResult Function(_TransformPaddingUniform value) paddingUniform,
    required TResult Function(_TransformResize value) resize,
  }) {
    return resize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TransformCrop value)? crop,
    TResult Function(_TransformFlipH value)? flipH,
    TResult Function(_TransformFlipV value)? flipV,
    TResult Function(_TransformPaddingTop value)? paddingTop,
    TResult Function(_TransformPaddingRight value)? paddingRight,
    TResult Function(_TransformPaddingLeft value)? paddingLeft,
    TResult Function(_TransformPaddingBottom value)? paddingBottom,
    TResult Function(_TransformPaddingUniform value)? paddingUniform,
    TResult Function(_TransformResize value)? resize,
  }) {
    return resize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TransformCrop value)? crop,
    TResult Function(_TransformFlipH value)? flipH,
    TResult Function(_TransformFlipV value)? flipV,
    TResult Function(_TransformPaddingTop value)? paddingTop,
    TResult Function(_TransformPaddingRight value)? paddingRight,
    TResult Function(_TransformPaddingLeft value)? paddingLeft,
    TResult Function(_TransformPaddingBottom value)? paddingBottom,
    TResult Function(_TransformPaddingUniform value)? paddingUniform,
    TResult Function(_TransformResize value)? resize,
    required TResult orElse(),
  }) {
    if (resize != null) {
      return resize(this);
    }
    return orElse();
  }
}

abstract class _TransformResize extends Transform {
  const factory _TransformResize(
      {required final int height,
      required final int width,
      final SamplingFilter samplingFilter}) = _$_TransformResize;
  const _TransformResize._() : super._();

  int get height => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  SamplingFilter get samplingFilter => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TransformResizeCopyWith<_TransformResize> get copyWith =>
      throw _privateConstructorUsedError;
}
