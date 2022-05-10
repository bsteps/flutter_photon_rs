// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'colour_space.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ColourSpace {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ColourSpaceMode mode, double level) hsl,
    required TResult Function(ColourSpaceMode mode, double level) hsv,
    required TResult Function(ColourSpaceMode mode, double level) lch,
    required TResult Function(Rgb rgb, double opacity) mixWithColour,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ColourSpaceMode mode, double level)? hsl,
    TResult Function(ColourSpaceMode mode, double level)? hsv,
    TResult Function(ColourSpaceMode mode, double level)? lch,
    TResult Function(Rgb rgb, double opacity)? mixWithColour,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ColourSpaceMode mode, double level)? hsl,
    TResult Function(ColourSpaceMode mode, double level)? hsv,
    TResult Function(ColourSpaceMode mode, double level)? lch,
    TResult Function(Rgb rgb, double opacity)? mixWithColour,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ColourHsl value) hsl,
    required TResult Function(_ColourHsv value) hsv,
    required TResult Function(_ColourLch value) lch,
    required TResult Function(_ColourMixWithColour value) mixWithColour,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ColourHsl value)? hsl,
    TResult Function(_ColourHsv value)? hsv,
    TResult Function(_ColourLch value)? lch,
    TResult Function(_ColourMixWithColour value)? mixWithColour,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ColourHsl value)? hsl,
    TResult Function(_ColourHsv value)? hsv,
    TResult Function(_ColourLch value)? lch,
    TResult Function(_ColourMixWithColour value)? mixWithColour,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColourSpaceCopyWith<$Res> {
  factory $ColourSpaceCopyWith(
          ColourSpace value, $Res Function(ColourSpace) then) =
      _$ColourSpaceCopyWithImpl<$Res>;
}

/// @nodoc
class _$ColourSpaceCopyWithImpl<$Res> implements $ColourSpaceCopyWith<$Res> {
  _$ColourSpaceCopyWithImpl(this._value, this._then);

  final ColourSpace _value;
  // ignore: unused_field
  final $Res Function(ColourSpace) _then;
}

/// @nodoc
abstract class _$ColourHslCopyWith<$Res> {
  factory _$ColourHslCopyWith(
          _ColourHsl value, $Res Function(_ColourHsl) then) =
      __$ColourHslCopyWithImpl<$Res>;
  $Res call({ColourSpaceMode mode, double level});
}

/// @nodoc
class __$ColourHslCopyWithImpl<$Res> extends _$ColourSpaceCopyWithImpl<$Res>
    implements _$ColourHslCopyWith<$Res> {
  __$ColourHslCopyWithImpl(_ColourHsl _value, $Res Function(_ColourHsl) _then)
      : super(_value, (v) => _then(v as _ColourHsl));

  @override
  _ColourHsl get _value => super._value as _ColourHsl;

  @override
  $Res call({
    Object? mode = freezed,
    Object? level = freezed,
  }) {
    return _then(_ColourHsl(
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ColourSpaceMode,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_ColourHsl extends _ColourHsl {
  const _$_ColourHsl({required this.mode, required this.level})
      : assert(level >= 0 && level <= 1),
        super._();

  @override
  final ColourSpaceMode mode;
  @override
  final double level;

  @override
  String toString() {
    return 'ColourSpace.hsl(mode: $mode, level: $level)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ColourHsl &&
            const DeepCollectionEquality().equals(other.mode, mode) &&
            const DeepCollectionEquality().equals(other.level, level));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(mode),
      const DeepCollectionEquality().hash(level));

  @JsonKey(ignore: true)
  @override
  _$ColourHslCopyWith<_ColourHsl> get copyWith =>
      __$ColourHslCopyWithImpl<_ColourHsl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ColourSpaceMode mode, double level) hsl,
    required TResult Function(ColourSpaceMode mode, double level) hsv,
    required TResult Function(ColourSpaceMode mode, double level) lch,
    required TResult Function(Rgb rgb, double opacity) mixWithColour,
  }) {
    return hsl(mode, level);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ColourSpaceMode mode, double level)? hsl,
    TResult Function(ColourSpaceMode mode, double level)? hsv,
    TResult Function(ColourSpaceMode mode, double level)? lch,
    TResult Function(Rgb rgb, double opacity)? mixWithColour,
  }) {
    return hsl?.call(mode, level);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ColourSpaceMode mode, double level)? hsl,
    TResult Function(ColourSpaceMode mode, double level)? hsv,
    TResult Function(ColourSpaceMode mode, double level)? lch,
    TResult Function(Rgb rgb, double opacity)? mixWithColour,
    required TResult orElse(),
  }) {
    if (hsl != null) {
      return hsl(mode, level);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ColourHsl value) hsl,
    required TResult Function(_ColourHsv value) hsv,
    required TResult Function(_ColourLch value) lch,
    required TResult Function(_ColourMixWithColour value) mixWithColour,
  }) {
    return hsl(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ColourHsl value)? hsl,
    TResult Function(_ColourHsv value)? hsv,
    TResult Function(_ColourLch value)? lch,
    TResult Function(_ColourMixWithColour value)? mixWithColour,
  }) {
    return hsl?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ColourHsl value)? hsl,
    TResult Function(_ColourHsv value)? hsv,
    TResult Function(_ColourLch value)? lch,
    TResult Function(_ColourMixWithColour value)? mixWithColour,
    required TResult orElse(),
  }) {
    if (hsl != null) {
      return hsl(this);
    }
    return orElse();
  }
}

abstract class _ColourHsl extends ColourSpace implements Filter {
  const factory _ColourHsl(
      {required final ColourSpaceMode mode,
      required final double level}) = _$_ColourHsl;
  const _ColourHsl._() : super._();

  ColourSpaceMode get mode => throw _privateConstructorUsedError;
  double get level => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ColourHslCopyWith<_ColourHsl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ColourHsvCopyWith<$Res> {
  factory _$ColourHsvCopyWith(
          _ColourHsv value, $Res Function(_ColourHsv) then) =
      __$ColourHsvCopyWithImpl<$Res>;
  $Res call({ColourSpaceMode mode, double level});
}

/// @nodoc
class __$ColourHsvCopyWithImpl<$Res> extends _$ColourSpaceCopyWithImpl<$Res>
    implements _$ColourHsvCopyWith<$Res> {
  __$ColourHsvCopyWithImpl(_ColourHsv _value, $Res Function(_ColourHsv) _then)
      : super(_value, (v) => _then(v as _ColourHsv));

  @override
  _ColourHsv get _value => super._value as _ColourHsv;

  @override
  $Res call({
    Object? mode = freezed,
    Object? level = freezed,
  }) {
    return _then(_ColourHsv(
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ColourSpaceMode,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_ColourHsv extends _ColourHsv {
  const _$_ColourHsv({required this.mode, required this.level}) : super._();

  @override
  final ColourSpaceMode mode;
  @override
  final double level;

  @override
  String toString() {
    return 'ColourSpace.hsv(mode: $mode, level: $level)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ColourHsv &&
            const DeepCollectionEquality().equals(other.mode, mode) &&
            const DeepCollectionEquality().equals(other.level, level));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(mode),
      const DeepCollectionEquality().hash(level));

  @JsonKey(ignore: true)
  @override
  _$ColourHsvCopyWith<_ColourHsv> get copyWith =>
      __$ColourHsvCopyWithImpl<_ColourHsv>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ColourSpaceMode mode, double level) hsl,
    required TResult Function(ColourSpaceMode mode, double level) hsv,
    required TResult Function(ColourSpaceMode mode, double level) lch,
    required TResult Function(Rgb rgb, double opacity) mixWithColour,
  }) {
    return hsv(mode, level);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ColourSpaceMode mode, double level)? hsl,
    TResult Function(ColourSpaceMode mode, double level)? hsv,
    TResult Function(ColourSpaceMode mode, double level)? lch,
    TResult Function(Rgb rgb, double opacity)? mixWithColour,
  }) {
    return hsv?.call(mode, level);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ColourSpaceMode mode, double level)? hsl,
    TResult Function(ColourSpaceMode mode, double level)? hsv,
    TResult Function(ColourSpaceMode mode, double level)? lch,
    TResult Function(Rgb rgb, double opacity)? mixWithColour,
    required TResult orElse(),
  }) {
    if (hsv != null) {
      return hsv(mode, level);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ColourHsl value) hsl,
    required TResult Function(_ColourHsv value) hsv,
    required TResult Function(_ColourLch value) lch,
    required TResult Function(_ColourMixWithColour value) mixWithColour,
  }) {
    return hsv(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ColourHsl value)? hsl,
    TResult Function(_ColourHsv value)? hsv,
    TResult Function(_ColourLch value)? lch,
    TResult Function(_ColourMixWithColour value)? mixWithColour,
  }) {
    return hsv?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ColourHsl value)? hsl,
    TResult Function(_ColourHsv value)? hsv,
    TResult Function(_ColourLch value)? lch,
    TResult Function(_ColourMixWithColour value)? mixWithColour,
    required TResult orElse(),
  }) {
    if (hsv != null) {
      return hsv(this);
    }
    return orElse();
  }
}

abstract class _ColourHsv extends ColourSpace {
  const factory _ColourHsv(
      {required final ColourSpaceMode mode,
      required final double level}) = _$_ColourHsv;
  const _ColourHsv._() : super._();

  ColourSpaceMode get mode => throw _privateConstructorUsedError;
  double get level => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ColourHsvCopyWith<_ColourHsv> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ColourLchCopyWith<$Res> {
  factory _$ColourLchCopyWith(
          _ColourLch value, $Res Function(_ColourLch) then) =
      __$ColourLchCopyWithImpl<$Res>;
  $Res call({ColourSpaceMode mode, double level});
}

/// @nodoc
class __$ColourLchCopyWithImpl<$Res> extends _$ColourSpaceCopyWithImpl<$Res>
    implements _$ColourLchCopyWith<$Res> {
  __$ColourLchCopyWithImpl(_ColourLch _value, $Res Function(_ColourLch) _then)
      : super(_value, (v) => _then(v as _ColourLch));

  @override
  _ColourLch get _value => super._value as _ColourLch;

  @override
  $Res call({
    Object? mode = freezed,
    Object? level = freezed,
  }) {
    return _then(_ColourLch(
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ColourSpaceMode,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_ColourLch extends _ColourLch {
  const _$_ColourLch({required this.mode, required this.level}) : super._();

  @override
  final ColourSpaceMode mode;
  @override
  final double level;

  @override
  String toString() {
    return 'ColourSpace.lch(mode: $mode, level: $level)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ColourLch &&
            const DeepCollectionEquality().equals(other.mode, mode) &&
            const DeepCollectionEquality().equals(other.level, level));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(mode),
      const DeepCollectionEquality().hash(level));

  @JsonKey(ignore: true)
  @override
  _$ColourLchCopyWith<_ColourLch> get copyWith =>
      __$ColourLchCopyWithImpl<_ColourLch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ColourSpaceMode mode, double level) hsl,
    required TResult Function(ColourSpaceMode mode, double level) hsv,
    required TResult Function(ColourSpaceMode mode, double level) lch,
    required TResult Function(Rgb rgb, double opacity) mixWithColour,
  }) {
    return lch(mode, level);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ColourSpaceMode mode, double level)? hsl,
    TResult Function(ColourSpaceMode mode, double level)? hsv,
    TResult Function(ColourSpaceMode mode, double level)? lch,
    TResult Function(Rgb rgb, double opacity)? mixWithColour,
  }) {
    return lch?.call(mode, level);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ColourSpaceMode mode, double level)? hsl,
    TResult Function(ColourSpaceMode mode, double level)? hsv,
    TResult Function(ColourSpaceMode mode, double level)? lch,
    TResult Function(Rgb rgb, double opacity)? mixWithColour,
    required TResult orElse(),
  }) {
    if (lch != null) {
      return lch(mode, level);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ColourHsl value) hsl,
    required TResult Function(_ColourHsv value) hsv,
    required TResult Function(_ColourLch value) lch,
    required TResult Function(_ColourMixWithColour value) mixWithColour,
  }) {
    return lch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ColourHsl value)? hsl,
    TResult Function(_ColourHsv value)? hsv,
    TResult Function(_ColourLch value)? lch,
    TResult Function(_ColourMixWithColour value)? mixWithColour,
  }) {
    return lch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ColourHsl value)? hsl,
    TResult Function(_ColourHsv value)? hsv,
    TResult Function(_ColourLch value)? lch,
    TResult Function(_ColourMixWithColour value)? mixWithColour,
    required TResult orElse(),
  }) {
    if (lch != null) {
      return lch(this);
    }
    return orElse();
  }
}

abstract class _ColourLch extends ColourSpace {
  const factory _ColourLch(
      {required final ColourSpaceMode mode,
      required final double level}) = _$_ColourLch;
  const _ColourLch._() : super._();

  ColourSpaceMode get mode => throw _privateConstructorUsedError;
  double get level => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ColourLchCopyWith<_ColourLch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ColourMixWithColourCopyWith<$Res> {
  factory _$ColourMixWithColourCopyWith(_ColourMixWithColour value,
          $Res Function(_ColourMixWithColour) then) =
      __$ColourMixWithColourCopyWithImpl<$Res>;
  $Res call({Rgb rgb, double opacity});

  $RgbCopyWith<$Res> get rgb;
}

/// @nodoc
class __$ColourMixWithColourCopyWithImpl<$Res>
    extends _$ColourSpaceCopyWithImpl<$Res>
    implements _$ColourMixWithColourCopyWith<$Res> {
  __$ColourMixWithColourCopyWithImpl(
      _ColourMixWithColour _value, $Res Function(_ColourMixWithColour) _then)
      : super(_value, (v) => _then(v as _ColourMixWithColour));

  @override
  _ColourMixWithColour get _value => super._value as _ColourMixWithColour;

  @override
  $Res call({
    Object? rgb = freezed,
    Object? opacity = freezed,
  }) {
    return _then(_ColourMixWithColour(
      rgb: rgb == freezed
          ? _value.rgb
          : rgb // ignore: cast_nullable_to_non_nullable
              as Rgb,
      opacity: opacity == freezed
          ? _value.opacity
          : opacity // ignore: cast_nullable_to_non_nullable
              as double,
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

class _$_ColourMixWithColour extends _ColourMixWithColour {
  const _$_ColourMixWithColour({required this.rgb, required this.opacity})
      : super._();

  @override
  final Rgb rgb;
  @override
  final double opacity;

  @override
  String toString() {
    return 'ColourSpace.mixWithColour(rgb: $rgb, opacity: $opacity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ColourMixWithColour &&
            const DeepCollectionEquality().equals(other.rgb, rgb) &&
            const DeepCollectionEquality().equals(other.opacity, opacity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(rgb),
      const DeepCollectionEquality().hash(opacity));

  @JsonKey(ignore: true)
  @override
  _$ColourMixWithColourCopyWith<_ColourMixWithColour> get copyWith =>
      __$ColourMixWithColourCopyWithImpl<_ColourMixWithColour>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ColourSpaceMode mode, double level) hsl,
    required TResult Function(ColourSpaceMode mode, double level) hsv,
    required TResult Function(ColourSpaceMode mode, double level) lch,
    required TResult Function(Rgb rgb, double opacity) mixWithColour,
  }) {
    return mixWithColour(rgb, opacity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ColourSpaceMode mode, double level)? hsl,
    TResult Function(ColourSpaceMode mode, double level)? hsv,
    TResult Function(ColourSpaceMode mode, double level)? lch,
    TResult Function(Rgb rgb, double opacity)? mixWithColour,
  }) {
    return mixWithColour?.call(rgb, opacity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ColourSpaceMode mode, double level)? hsl,
    TResult Function(ColourSpaceMode mode, double level)? hsv,
    TResult Function(ColourSpaceMode mode, double level)? lch,
    TResult Function(Rgb rgb, double opacity)? mixWithColour,
    required TResult orElse(),
  }) {
    if (mixWithColour != null) {
      return mixWithColour(rgb, opacity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ColourHsl value) hsl,
    required TResult Function(_ColourHsv value) hsv,
    required TResult Function(_ColourLch value) lch,
    required TResult Function(_ColourMixWithColour value) mixWithColour,
  }) {
    return mixWithColour(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ColourHsl value)? hsl,
    TResult Function(_ColourHsv value)? hsv,
    TResult Function(_ColourLch value)? lch,
    TResult Function(_ColourMixWithColour value)? mixWithColour,
  }) {
    return mixWithColour?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ColourHsl value)? hsl,
    TResult Function(_ColourHsv value)? hsv,
    TResult Function(_ColourLch value)? lch,
    TResult Function(_ColourMixWithColour value)? mixWithColour,
    required TResult orElse(),
  }) {
    if (mixWithColour != null) {
      return mixWithColour(this);
    }
    return orElse();
  }
}

abstract class _ColourMixWithColour extends ColourSpace {
  const factory _ColourMixWithColour(
      {required final Rgb rgb,
      required final double opacity}) = _$_ColourMixWithColour;
  const _ColourMixWithColour._() : super._();

  Rgb get rgb => throw _privateConstructorUsedError;
  double get opacity => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ColourMixWithColourCopyWith<_ColourMixWithColour> get copyWith =>
      throw _privateConstructorUsedError;
}
