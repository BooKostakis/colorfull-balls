// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'baloon_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BaloonState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int colorQuantity, int ballsQuantity) sucsess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int colorQuantity, int ballsQuantity)? sucsess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int colorQuantity, int ballsQuantity)? sucsess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BaloonStateInitial value) initial,
    required TResult Function(BaloonStateSucsess value) sucsess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BaloonStateInitial value)? initial,
    TResult? Function(BaloonStateSucsess value)? sucsess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BaloonStateInitial value)? initial,
    TResult Function(BaloonStateSucsess value)? sucsess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaloonStateCopyWith<$Res> {
  factory $BaloonStateCopyWith(
          BaloonState value, $Res Function(BaloonState) then) =
      _$BaloonStateCopyWithImpl<$Res, BaloonState>;
}

/// @nodoc
class _$BaloonStateCopyWithImpl<$Res, $Val extends BaloonState>
    implements $BaloonStateCopyWith<$Res> {
  _$BaloonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BaloonStateInitialImplCopyWith<$Res> {
  factory _$$BaloonStateInitialImplCopyWith(_$BaloonStateInitialImpl value,
          $Res Function(_$BaloonStateInitialImpl) then) =
      __$$BaloonStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BaloonStateInitialImplCopyWithImpl<$Res>
    extends _$BaloonStateCopyWithImpl<$Res, _$BaloonStateInitialImpl>
    implements _$$BaloonStateInitialImplCopyWith<$Res> {
  __$$BaloonStateInitialImplCopyWithImpl(_$BaloonStateInitialImpl _value,
      $Res Function(_$BaloonStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BaloonStateInitialImpl implements BaloonStateInitial {
  _$BaloonStateInitialImpl();

  @override
  String toString() {
    return 'BaloonState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BaloonStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int colorQuantity, int ballsQuantity) sucsess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int colorQuantity, int ballsQuantity)? sucsess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int colorQuantity, int ballsQuantity)? sucsess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BaloonStateInitial value) initial,
    required TResult Function(BaloonStateSucsess value) sucsess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BaloonStateInitial value)? initial,
    TResult? Function(BaloonStateSucsess value)? sucsess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BaloonStateInitial value)? initial,
    TResult Function(BaloonStateSucsess value)? sucsess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class BaloonStateInitial implements BaloonState {
  factory BaloonStateInitial() = _$BaloonStateInitialImpl;
}

/// @nodoc
abstract class _$$BaloonStateSucsessImplCopyWith<$Res> {
  factory _$$BaloonStateSucsessImplCopyWith(_$BaloonStateSucsessImpl value,
          $Res Function(_$BaloonStateSucsessImpl) then) =
      __$$BaloonStateSucsessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int colorQuantity, int ballsQuantity});
}

/// @nodoc
class __$$BaloonStateSucsessImplCopyWithImpl<$Res>
    extends _$BaloonStateCopyWithImpl<$Res, _$BaloonStateSucsessImpl>
    implements _$$BaloonStateSucsessImplCopyWith<$Res> {
  __$$BaloonStateSucsessImplCopyWithImpl(_$BaloonStateSucsessImpl _value,
      $Res Function(_$BaloonStateSucsessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colorQuantity = null,
    Object? ballsQuantity = null,
  }) {
    return _then(_$BaloonStateSucsessImpl(
      colorQuantity: null == colorQuantity
          ? _value.colorQuantity
          : colorQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      ballsQuantity: null == ballsQuantity
          ? _value.ballsQuantity
          : ballsQuantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$BaloonStateSucsessImpl implements BaloonStateSucsess {
  _$BaloonStateSucsessImpl({this.colorQuantity = 1, this.ballsQuantity = 1});

  @override
  @JsonKey()
  final int colorQuantity;
  @override
  @JsonKey()
  final int ballsQuantity;

  @override
  String toString() {
    return 'BaloonState.sucsess(colorQuantity: $colorQuantity, ballsQuantity: $ballsQuantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaloonStateSucsessImpl &&
            (identical(other.colorQuantity, colorQuantity) ||
                other.colorQuantity == colorQuantity) &&
            (identical(other.ballsQuantity, ballsQuantity) ||
                other.ballsQuantity == ballsQuantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, colorQuantity, ballsQuantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BaloonStateSucsessImplCopyWith<_$BaloonStateSucsessImpl> get copyWith =>
      __$$BaloonStateSucsessImplCopyWithImpl<_$BaloonStateSucsessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int colorQuantity, int ballsQuantity) sucsess,
  }) {
    return sucsess(colorQuantity, ballsQuantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int colorQuantity, int ballsQuantity)? sucsess,
  }) {
    return sucsess?.call(colorQuantity, ballsQuantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int colorQuantity, int ballsQuantity)? sucsess,
    required TResult orElse(),
  }) {
    if (sucsess != null) {
      return sucsess(colorQuantity, ballsQuantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BaloonStateInitial value) initial,
    required TResult Function(BaloonStateSucsess value) sucsess,
  }) {
    return sucsess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BaloonStateInitial value)? initial,
    TResult? Function(BaloonStateSucsess value)? sucsess,
  }) {
    return sucsess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BaloonStateInitial value)? initial,
    TResult Function(BaloonStateSucsess value)? sucsess,
    required TResult orElse(),
  }) {
    if (sucsess != null) {
      return sucsess(this);
    }
    return orElse();
  }
}

abstract class BaloonStateSucsess implements BaloonState {
  factory BaloonStateSucsess(
      {final int colorQuantity,
      final int ballsQuantity}) = _$BaloonStateSucsessImpl;

  int get colorQuantity;
  int get ballsQuantity;
  @JsonKey(ignore: true)
  _$$BaloonStateSucsessImplCopyWith<_$BaloonStateSucsessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BaloonEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int colorQuantity, int ballsQuantity) updated,
    required TResult Function() cleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int colorQuantity, int ballsQuantity)? updated,
    TResult? Function()? cleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int colorQuantity, int ballsQuantity)? updated,
    TResult Function()? cleared,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Updated value) updated,
    required TResult Function(Cleared value) cleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Updated value)? updated,
    TResult? Function(Cleared value)? cleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Updated value)? updated,
    TResult Function(Cleared value)? cleared,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaloonEventCopyWith<$Res> {
  factory $BaloonEventCopyWith(
          BaloonEvent value, $Res Function(BaloonEvent) then) =
      _$BaloonEventCopyWithImpl<$Res, BaloonEvent>;
}

/// @nodoc
class _$BaloonEventCopyWithImpl<$Res, $Val extends BaloonEvent>
    implements $BaloonEventCopyWith<$Res> {
  _$BaloonEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdatedImplCopyWith<$Res> {
  factory _$$UpdatedImplCopyWith(
          _$UpdatedImpl value, $Res Function(_$UpdatedImpl) then) =
      __$$UpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int colorQuantity, int ballsQuantity});
}

/// @nodoc
class __$$UpdatedImplCopyWithImpl<$Res>
    extends _$BaloonEventCopyWithImpl<$Res, _$UpdatedImpl>
    implements _$$UpdatedImplCopyWith<$Res> {
  __$$UpdatedImplCopyWithImpl(
      _$UpdatedImpl _value, $Res Function(_$UpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colorQuantity = null,
    Object? ballsQuantity = null,
  }) {
    return _then(_$UpdatedImpl(
      colorQuantity: null == colorQuantity
          ? _value.colorQuantity
          : colorQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      ballsQuantity: null == ballsQuantity
          ? _value.ballsQuantity
          : ballsQuantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdatedImpl implements Updated {
  _$UpdatedImpl({required this.colorQuantity, required this.ballsQuantity});

  @override
  final int colorQuantity;
  @override
  final int ballsQuantity;

  @override
  String toString() {
    return 'BaloonEvent.updated(colorQuantity: $colorQuantity, ballsQuantity: $ballsQuantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatedImpl &&
            (identical(other.colorQuantity, colorQuantity) ||
                other.colorQuantity == colorQuantity) &&
            (identical(other.ballsQuantity, ballsQuantity) ||
                other.ballsQuantity == ballsQuantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, colorQuantity, ballsQuantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatedImplCopyWith<_$UpdatedImpl> get copyWith =>
      __$$UpdatedImplCopyWithImpl<_$UpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int colorQuantity, int ballsQuantity) updated,
    required TResult Function() cleared,
  }) {
    return updated(colorQuantity, ballsQuantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int colorQuantity, int ballsQuantity)? updated,
    TResult? Function()? cleared,
  }) {
    return updated?.call(colorQuantity, ballsQuantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int colorQuantity, int ballsQuantity)? updated,
    TResult Function()? cleared,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(colorQuantity, ballsQuantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Updated value) updated,
    required TResult Function(Cleared value) cleared,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Updated value)? updated,
    TResult? Function(Cleared value)? cleared,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Updated value)? updated,
    TResult Function(Cleared value)? cleared,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class Updated implements BaloonEvent {
  factory Updated(
      {required final int colorQuantity,
      required final int ballsQuantity}) = _$UpdatedImpl;

  int get colorQuantity;
  int get ballsQuantity;
  @JsonKey(ignore: true)
  _$$UpdatedImplCopyWith<_$UpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearedImplCopyWith<$Res> {
  factory _$$ClearedImplCopyWith(
          _$ClearedImpl value, $Res Function(_$ClearedImpl) then) =
      __$$ClearedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearedImplCopyWithImpl<$Res>
    extends _$BaloonEventCopyWithImpl<$Res, _$ClearedImpl>
    implements _$$ClearedImplCopyWith<$Res> {
  __$$ClearedImplCopyWithImpl(
      _$ClearedImpl _value, $Res Function(_$ClearedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearedImpl implements Cleared {
  _$ClearedImpl();

  @override
  String toString() {
    return 'BaloonEvent.cleared()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int colorQuantity, int ballsQuantity) updated,
    required TResult Function() cleared,
  }) {
    return cleared();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int colorQuantity, int ballsQuantity)? updated,
    TResult? Function()? cleared,
  }) {
    return cleared?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int colorQuantity, int ballsQuantity)? updated,
    TResult Function()? cleared,
    required TResult orElse(),
  }) {
    if (cleared != null) {
      return cleared();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Updated value) updated,
    required TResult Function(Cleared value) cleared,
  }) {
    return cleared(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Updated value)? updated,
    TResult? Function(Cleared value)? cleared,
  }) {
    return cleared?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Updated value)? updated,
    TResult Function(Cleared value)? cleared,
    required TResult orElse(),
  }) {
    if (cleared != null) {
      return cleared(this);
    }
    return orElse();
  }
}

abstract class Cleared implements BaloonEvent {
  factory Cleared() = _$ClearedImpl;
}
