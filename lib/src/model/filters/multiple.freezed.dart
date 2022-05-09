// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'multiple.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Rgb {
  int get r => throw _privateConstructorUsedError;
  int get g => throw _privateConstructorUsedError;
  int get b => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RgbCopyWith<Rgb> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RgbCopyWith<$Res> {
  factory $RgbCopyWith(Rgb value, $Res Function(Rgb) then) =
      _$RgbCopyWithImpl<$Res>;
  $Res call({int r, int g, int b});
}

/// @nodoc
class _$RgbCopyWithImpl<$Res> implements $RgbCopyWith<$Res> {
  _$RgbCopyWithImpl(this._value, this._then);

  final Rgb _value;
  // ignore: unused_field
  final $Res Function(Rgb) _then;

  @override
  $Res call({
    Object? r = freezed,
    Object? g = freezed,
    Object? b = freezed,
  }) {
    return _then(_value.copyWith(
      r: r == freezed
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as int,
      g: g == freezed
          ? _value.g
          : g // ignore: cast_nullable_to_non_nullable
              as int,
      b: b == freezed
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$RgbCopyWith<$Res> implements $RgbCopyWith<$Res> {
  factory _$RgbCopyWith(_Rgb value, $Res Function(_Rgb) then) =
      __$RgbCopyWithImpl<$Res>;
  @override
  $Res call({int r, int g, int b});
}

/// @nodoc
class __$RgbCopyWithImpl<$Res> extends _$RgbCopyWithImpl<$Res>
    implements _$RgbCopyWith<$Res> {
  __$RgbCopyWithImpl(_Rgb _value, $Res Function(_Rgb) _then)
      : super(_value, (v) => _then(v as _Rgb));

  @override
  _Rgb get _value => super._value as _Rgb;

  @override
  $Res call({
    Object? r = freezed,
    Object? g = freezed,
    Object? b = freezed,
  }) {
    return _then(_Rgb(
      r: r == freezed
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as int,
      g: g == freezed
          ? _value.g
          : g // ignore: cast_nullable_to_non_nullable
              as int,
      b: b == freezed
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Rgb extends _Rgb {
  const _$_Rgb({required this.r, required this.g, required this.b})
      : assert(r <= 255 && r >= 0),
        assert(g <= 255 && g >= 0),
        assert(b <= 255 && b >= 0),
        super._();

  @override
  final int r;
  @override
  final int g;
  @override
  final int b;

  @override
  String toString() {
    return 'Rgb(r: $r, g: $g, b: $b)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Rgb &&
            const DeepCollectionEquality().equals(other.r, r) &&
            const DeepCollectionEquality().equals(other.g, g) &&
            const DeepCollectionEquality().equals(other.b, b));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(r),
      const DeepCollectionEquality().hash(g),
      const DeepCollectionEquality().hash(b));

  @JsonKey(ignore: true)
  @override
  _$RgbCopyWith<_Rgb> get copyWith =>
      __$RgbCopyWithImpl<_Rgb>(this, _$identity);
}

abstract class _Rgb extends Rgb {
  const factory _Rgb(
      {required final int r,
      required final int g,
      required final int b}) = _$_Rgb;
  const _Rgb._() : super._();

  @override
  int get r => throw _privateConstructorUsedError;
  @override
  int get g => throw _privateConstructorUsedError;
  @override
  int get b => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RgbCopyWith<_Rgb> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Multiple {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int x, int y, Uint8List bytes) watermarkFromBytes,
    required TResult Function() applyGradient,
    required TResult Function(Uint8List bytes, Rgb rgb) replaceBackground,
    required TResult Function(Uint8List bytes, BlendMode blendMode) blend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int x, int y, Uint8List bytes)? watermarkFromBytes,
    TResult Function()? applyGradient,
    TResult Function(Uint8List bytes, Rgb rgb)? replaceBackground,
    TResult Function(Uint8List bytes, BlendMode blendMode)? blend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int x, int y, Uint8List bytes)? watermarkFromBytes,
    TResult Function()? applyGradient,
    TResult Function(Uint8List bytes, Rgb rgb)? replaceBackground,
    TResult Function(Uint8List bytes, BlendMode blendMode)? blend,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MultipleWatermarkFromBytes value)
        watermarkFromBytes,
    required TResult Function(_MultipleApplyGradient value) applyGradient,
    required TResult Function(_MultipleReplaceBackground value)
        replaceBackground,
    required TResult Function(_MultipleBlend value) blend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MultipleWatermarkFromBytes value)? watermarkFromBytes,
    TResult Function(_MultipleApplyGradient value)? applyGradient,
    TResult Function(_MultipleReplaceBackground value)? replaceBackground,
    TResult Function(_MultipleBlend value)? blend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MultipleWatermarkFromBytes value)? watermarkFromBytes,
    TResult Function(_MultipleApplyGradient value)? applyGradient,
    TResult Function(_MultipleReplaceBackground value)? replaceBackground,
    TResult Function(_MultipleBlend value)? blend,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultipleCopyWith<$Res> {
  factory $MultipleCopyWith(Multiple value, $Res Function(Multiple) then) =
      _$MultipleCopyWithImpl<$Res>;
}

/// @nodoc
class _$MultipleCopyWithImpl<$Res> implements $MultipleCopyWith<$Res> {
  _$MultipleCopyWithImpl(this._value, this._then);

  final Multiple _value;
  // ignore: unused_field
  final $Res Function(Multiple) _then;
}

/// @nodoc
abstract class _$MultipleWatermarkFromBytesCopyWith<$Res> {
  factory _$MultipleWatermarkFromBytesCopyWith(
          _MultipleWatermarkFromBytes value,
          $Res Function(_MultipleWatermarkFromBytes) then) =
      __$MultipleWatermarkFromBytesCopyWithImpl<$Res>;
  $Res call({int x, int y, Uint8List bytes});
}

/// @nodoc
class __$MultipleWatermarkFromBytesCopyWithImpl<$Res>
    extends _$MultipleCopyWithImpl<$Res>
    implements _$MultipleWatermarkFromBytesCopyWith<$Res> {
  __$MultipleWatermarkFromBytesCopyWithImpl(_MultipleWatermarkFromBytes _value,
      $Res Function(_MultipleWatermarkFromBytes) _then)
      : super(_value, (v) => _then(v as _MultipleWatermarkFromBytes));

  @override
  _MultipleWatermarkFromBytes get _value =>
      super._value as _MultipleWatermarkFromBytes;

  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
    Object? bytes = freezed,
  }) {
    return _then(_MultipleWatermarkFromBytes(
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

class _$_MultipleWatermarkFromBytes extends _MultipleWatermarkFromBytes {
  const _$_MultipleWatermarkFromBytes(
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
    return 'Multiple.watermarkFromBytes(x: $x, y: $y, bytes: $bytes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MultipleWatermarkFromBytes &&
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
  _$MultipleWatermarkFromBytesCopyWith<_MultipleWatermarkFromBytes>
      get copyWith => __$MultipleWatermarkFromBytesCopyWithImpl<
          _MultipleWatermarkFromBytes>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int x, int y, Uint8List bytes) watermarkFromBytes,
    required TResult Function() applyGradient,
    required TResult Function(Uint8List bytes, Rgb rgb) replaceBackground,
    required TResult Function(Uint8List bytes, BlendMode blendMode) blend,
  }) {
    return watermarkFromBytes(x, y, bytes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int x, int y, Uint8List bytes)? watermarkFromBytes,
    TResult Function()? applyGradient,
    TResult Function(Uint8List bytes, Rgb rgb)? replaceBackground,
    TResult Function(Uint8List bytes, BlendMode blendMode)? blend,
  }) {
    return watermarkFromBytes?.call(x, y, bytes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int x, int y, Uint8List bytes)? watermarkFromBytes,
    TResult Function()? applyGradient,
    TResult Function(Uint8List bytes, Rgb rgb)? replaceBackground,
    TResult Function(Uint8List bytes, BlendMode blendMode)? blend,
    required TResult orElse(),
  }) {
    if (watermarkFromBytes != null) {
      return watermarkFromBytes(x, y, bytes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MultipleWatermarkFromBytes value)
        watermarkFromBytes,
    required TResult Function(_MultipleApplyGradient value) applyGradient,
    required TResult Function(_MultipleReplaceBackground value)
        replaceBackground,
    required TResult Function(_MultipleBlend value) blend,
  }) {
    return watermarkFromBytes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MultipleWatermarkFromBytes value)? watermarkFromBytes,
    TResult Function(_MultipleApplyGradient value)? applyGradient,
    TResult Function(_MultipleReplaceBackground value)? replaceBackground,
    TResult Function(_MultipleBlend value)? blend,
  }) {
    return watermarkFromBytes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MultipleWatermarkFromBytes value)? watermarkFromBytes,
    TResult Function(_MultipleApplyGradient value)? applyGradient,
    TResult Function(_MultipleReplaceBackground value)? replaceBackground,
    TResult Function(_MultipleBlend value)? blend,
    required TResult orElse(),
  }) {
    if (watermarkFromBytes != null) {
      return watermarkFromBytes(this);
    }
    return orElse();
  }
}

abstract class _MultipleWatermarkFromBytes extends Multiple implements Filter {
  const factory _MultipleWatermarkFromBytes(
      {required final int x,
      required final int y,
      required final Uint8List bytes}) = _$_MultipleWatermarkFromBytes;
  const _MultipleWatermarkFromBytes._() : super._();

  int get x => throw _privateConstructorUsedError;
  int get y => throw _privateConstructorUsedError;
  Uint8List get bytes => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$MultipleWatermarkFromBytesCopyWith<_MultipleWatermarkFromBytes>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$MultipleApplyGradientCopyWith<$Res> {
  factory _$MultipleApplyGradientCopyWith(_MultipleApplyGradient value,
          $Res Function(_MultipleApplyGradient) then) =
      __$MultipleApplyGradientCopyWithImpl<$Res>;
}

/// @nodoc
class __$MultipleApplyGradientCopyWithImpl<$Res>
    extends _$MultipleCopyWithImpl<$Res>
    implements _$MultipleApplyGradientCopyWith<$Res> {
  __$MultipleApplyGradientCopyWithImpl(_MultipleApplyGradient _value,
      $Res Function(_MultipleApplyGradient) _then)
      : super(_value, (v) => _then(v as _MultipleApplyGradient));

  @override
  _MultipleApplyGradient get _value => super._value as _MultipleApplyGradient;
}

/// @nodoc

class _$_MultipleApplyGradient extends _MultipleApplyGradient {
  const _$_MultipleApplyGradient() : super._();

  @override
  String toString() {
    return 'Multiple.applyGradient()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _MultipleApplyGradient);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int x, int y, Uint8List bytes) watermarkFromBytes,
    required TResult Function() applyGradient,
    required TResult Function(Uint8List bytes, Rgb rgb) replaceBackground,
    required TResult Function(Uint8List bytes, BlendMode blendMode) blend,
  }) {
    return applyGradient();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int x, int y, Uint8List bytes)? watermarkFromBytes,
    TResult Function()? applyGradient,
    TResult Function(Uint8List bytes, Rgb rgb)? replaceBackground,
    TResult Function(Uint8List bytes, BlendMode blendMode)? blend,
  }) {
    return applyGradient?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int x, int y, Uint8List bytes)? watermarkFromBytes,
    TResult Function()? applyGradient,
    TResult Function(Uint8List bytes, Rgb rgb)? replaceBackground,
    TResult Function(Uint8List bytes, BlendMode blendMode)? blend,
    required TResult orElse(),
  }) {
    if (applyGradient != null) {
      return applyGradient();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MultipleWatermarkFromBytes value)
        watermarkFromBytes,
    required TResult Function(_MultipleApplyGradient value) applyGradient,
    required TResult Function(_MultipleReplaceBackground value)
        replaceBackground,
    required TResult Function(_MultipleBlend value) blend,
  }) {
    return applyGradient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MultipleWatermarkFromBytes value)? watermarkFromBytes,
    TResult Function(_MultipleApplyGradient value)? applyGradient,
    TResult Function(_MultipleReplaceBackground value)? replaceBackground,
    TResult Function(_MultipleBlend value)? blend,
  }) {
    return applyGradient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MultipleWatermarkFromBytes value)? watermarkFromBytes,
    TResult Function(_MultipleApplyGradient value)? applyGradient,
    TResult Function(_MultipleReplaceBackground value)? replaceBackground,
    TResult Function(_MultipleBlend value)? blend,
    required TResult orElse(),
  }) {
    if (applyGradient != null) {
      return applyGradient(this);
    }
    return orElse();
  }
}

abstract class _MultipleApplyGradient extends Multiple implements Filter {
  const factory _MultipleApplyGradient() = _$_MultipleApplyGradient;
  const _MultipleApplyGradient._() : super._();
}

/// @nodoc
abstract class _$MultipleReplaceBackgroundCopyWith<$Res> {
  factory _$MultipleReplaceBackgroundCopyWith(_MultipleReplaceBackground value,
          $Res Function(_MultipleReplaceBackground) then) =
      __$MultipleReplaceBackgroundCopyWithImpl<$Res>;
  $Res call({Uint8List bytes, Rgb rgb});

  $RgbCopyWith<$Res> get rgb;
}

/// @nodoc
class __$MultipleReplaceBackgroundCopyWithImpl<$Res>
    extends _$MultipleCopyWithImpl<$Res>
    implements _$MultipleReplaceBackgroundCopyWith<$Res> {
  __$MultipleReplaceBackgroundCopyWithImpl(_MultipleReplaceBackground _value,
      $Res Function(_MultipleReplaceBackground) _then)
      : super(_value, (v) => _then(v as _MultipleReplaceBackground));

  @override
  _MultipleReplaceBackground get _value =>
      super._value as _MultipleReplaceBackground;

  @override
  $Res call({
    Object? bytes = freezed,
    Object? rgb = freezed,
  }) {
    return _then(_MultipleReplaceBackground(
      bytes: bytes == freezed
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      rgb: rgb == freezed
          ? _value.rgb
          : rgb // ignore: cast_nullable_to_non_nullable
              as Rgb,
    ));
  }

  @override
  $RgbCopyWith<$Res> get rgb {
    return $RgbCopyWith<$Res>(_value.rgb, (value) {
      return _then(_value.copyWith(rgb: value));
    });
  }
}

/// @nodoc

class _$_MultipleReplaceBackground extends _MultipleReplaceBackground {
  const _$_MultipleReplaceBackground({required this.bytes, required this.rgb})
      : super._();

  @override
  final Uint8List bytes;
  @override
  final Rgb rgb;

  @override
  String toString() {
    return 'Multiple.replaceBackground(bytes: $bytes, rgb: $rgb)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MultipleReplaceBackground &&
            const DeepCollectionEquality().equals(other.bytes, bytes) &&
            const DeepCollectionEquality().equals(other.rgb, rgb));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(bytes),
      const DeepCollectionEquality().hash(rgb));

  @JsonKey(ignore: true)
  @override
  _$MultipleReplaceBackgroundCopyWith<_MultipleReplaceBackground>
      get copyWith =>
          __$MultipleReplaceBackgroundCopyWithImpl<_MultipleReplaceBackground>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int x, int y, Uint8List bytes) watermarkFromBytes,
    required TResult Function() applyGradient,
    required TResult Function(Uint8List bytes, Rgb rgb) replaceBackground,
    required TResult Function(Uint8List bytes, BlendMode blendMode) blend,
  }) {
    return replaceBackground(bytes, rgb);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int x, int y, Uint8List bytes)? watermarkFromBytes,
    TResult Function()? applyGradient,
    TResult Function(Uint8List bytes, Rgb rgb)? replaceBackground,
    TResult Function(Uint8List bytes, BlendMode blendMode)? blend,
  }) {
    return replaceBackground?.call(bytes, rgb);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int x, int y, Uint8List bytes)? watermarkFromBytes,
    TResult Function()? applyGradient,
    TResult Function(Uint8List bytes, Rgb rgb)? replaceBackground,
    TResult Function(Uint8List bytes, BlendMode blendMode)? blend,
    required TResult orElse(),
  }) {
    if (replaceBackground != null) {
      return replaceBackground(bytes, rgb);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MultipleWatermarkFromBytes value)
        watermarkFromBytes,
    required TResult Function(_MultipleApplyGradient value) applyGradient,
    required TResult Function(_MultipleReplaceBackground value)
        replaceBackground,
    required TResult Function(_MultipleBlend value) blend,
  }) {
    return replaceBackground(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MultipleWatermarkFromBytes value)? watermarkFromBytes,
    TResult Function(_MultipleApplyGradient value)? applyGradient,
    TResult Function(_MultipleReplaceBackground value)? replaceBackground,
    TResult Function(_MultipleBlend value)? blend,
  }) {
    return replaceBackground?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MultipleWatermarkFromBytes value)? watermarkFromBytes,
    TResult Function(_MultipleApplyGradient value)? applyGradient,
    TResult Function(_MultipleReplaceBackground value)? replaceBackground,
    TResult Function(_MultipleBlend value)? blend,
    required TResult orElse(),
  }) {
    if (replaceBackground != null) {
      return replaceBackground(this);
    }
    return orElse();
  }
}

abstract class _MultipleReplaceBackground extends Multiple {
  const factory _MultipleReplaceBackground(
      {required final Uint8List bytes,
      required final Rgb rgb}) = _$_MultipleReplaceBackground;
  const _MultipleReplaceBackground._() : super._();

  Uint8List get bytes => throw _privateConstructorUsedError;
  Rgb get rgb => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$MultipleReplaceBackgroundCopyWith<_MultipleReplaceBackground>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$MultipleBlendCopyWith<$Res> {
  factory _$MultipleBlendCopyWith(
          _MultipleBlend value, $Res Function(_MultipleBlend) then) =
      __$MultipleBlendCopyWithImpl<$Res>;
  $Res call({Uint8List bytes, BlendMode blendMode});
}

/// @nodoc
class __$MultipleBlendCopyWithImpl<$Res> extends _$MultipleCopyWithImpl<$Res>
    implements _$MultipleBlendCopyWith<$Res> {
  __$MultipleBlendCopyWithImpl(
      _MultipleBlend _value, $Res Function(_MultipleBlend) _then)
      : super(_value, (v) => _then(v as _MultipleBlend));

  @override
  _MultipleBlend get _value => super._value as _MultipleBlend;

  @override
  $Res call({
    Object? bytes = freezed,
    Object? blendMode = freezed,
  }) {
    return _then(_MultipleBlend(
      bytes: bytes == freezed
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      blendMode: blendMode == freezed
          ? _value.blendMode
          : blendMode // ignore: cast_nullable_to_non_nullable
              as BlendMode,
    ));
  }
}

/// @nodoc

class _$_MultipleBlend extends _MultipleBlend {
  const _$_MultipleBlend({required this.bytes, required this.blendMode})
      : super._();

  @override
  final Uint8List bytes;
  @override
  final BlendMode blendMode;

  @override
  String toString() {
    return 'Multiple.blend(bytes: $bytes, blendMode: $blendMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MultipleBlend &&
            const DeepCollectionEquality().equals(other.bytes, bytes) &&
            const DeepCollectionEquality().equals(other.blendMode, blendMode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(bytes),
      const DeepCollectionEquality().hash(blendMode));

  @JsonKey(ignore: true)
  @override
  _$MultipleBlendCopyWith<_MultipleBlend> get copyWith =>
      __$MultipleBlendCopyWithImpl<_MultipleBlend>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int x, int y, Uint8List bytes) watermarkFromBytes,
    required TResult Function() applyGradient,
    required TResult Function(Uint8List bytes, Rgb rgb) replaceBackground,
    required TResult Function(Uint8List bytes, BlendMode blendMode) blend,
  }) {
    return blend(bytes, blendMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int x, int y, Uint8List bytes)? watermarkFromBytes,
    TResult Function()? applyGradient,
    TResult Function(Uint8List bytes, Rgb rgb)? replaceBackground,
    TResult Function(Uint8List bytes, BlendMode blendMode)? blend,
  }) {
    return blend?.call(bytes, blendMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int x, int y, Uint8List bytes)? watermarkFromBytes,
    TResult Function()? applyGradient,
    TResult Function(Uint8List bytes, Rgb rgb)? replaceBackground,
    TResult Function(Uint8List bytes, BlendMode blendMode)? blend,
    required TResult orElse(),
  }) {
    if (blend != null) {
      return blend(bytes, blendMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MultipleWatermarkFromBytes value)
        watermarkFromBytes,
    required TResult Function(_MultipleApplyGradient value) applyGradient,
    required TResult Function(_MultipleReplaceBackground value)
        replaceBackground,
    required TResult Function(_MultipleBlend value) blend,
  }) {
    return blend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MultipleWatermarkFromBytes value)? watermarkFromBytes,
    TResult Function(_MultipleApplyGradient value)? applyGradient,
    TResult Function(_MultipleReplaceBackground value)? replaceBackground,
    TResult Function(_MultipleBlend value)? blend,
  }) {
    return blend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MultipleWatermarkFromBytes value)? watermarkFromBytes,
    TResult Function(_MultipleApplyGradient value)? applyGradient,
    TResult Function(_MultipleReplaceBackground value)? replaceBackground,
    TResult Function(_MultipleBlend value)? blend,
    required TResult orElse(),
  }) {
    if (blend != null) {
      return blend(this);
    }
    return orElse();
  }
}

abstract class _MultipleBlend extends Multiple {
  const factory _MultipleBlend(
      {required final Uint8List bytes,
      required final BlendMode blendMode}) = _$_MultipleBlend;
  const _MultipleBlend._() : super._();

  Uint8List get bytes => throw _privateConstructorUsedError;
  BlendMode get blendMode => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$MultipleBlendCopyWith<_MultipleBlend> get copyWith =>
      throw _privateConstructorUsedError;
}
