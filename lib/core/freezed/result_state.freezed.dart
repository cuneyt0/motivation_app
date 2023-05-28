// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ResultState<T, E extends Exception> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() pending,
    required TResult Function(T data) completed,
    required TResult Function(E error) failed,
    required TResult Function(Color? textColor) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? pending,
    TResult? Function(T data)? completed,
    TResult? Function(E error)? failed,
    TResult? Function(Color? textColor)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? pending,
    TResult Function(T data)? completed,
    TResult Function(E error)? failed,
    TResult Function(Color? textColor)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T, E> value) idle,
    required TResult Function(Pending<T, E> value) pending,
    required TResult Function(Completed<T, E> value) completed,
    required TResult Function(Failed<T, E> value) failed,
    required TResult Function(Empty<T, E> value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T, E> value)? idle,
    TResult? Function(Pending<T, E> value)? pending,
    TResult? Function(Completed<T, E> value)? completed,
    TResult? Function(Failed<T, E> value)? failed,
    TResult? Function(Empty<T, E> value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T, E> value)? idle,
    TResult Function(Pending<T, E> value)? pending,
    TResult Function(Completed<T, E> value)? completed,
    TResult Function(Failed<T, E> value)? failed,
    TResult Function(Empty<T, E> value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultStateCopyWith<T, E extends Exception, $Res> {
  factory $ResultStateCopyWith(
          ResultState<T, E> value, $Res Function(ResultState<T, E>) then) =
      _$ResultStateCopyWithImpl<T, E, $Res, ResultState<T, E>>;
}

/// @nodoc
class _$ResultStateCopyWithImpl<T, E extends Exception, $Res,
        $Val extends ResultState<T, E>>
    implements $ResultStateCopyWith<T, E, $Res> {
  _$ResultStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$IdleCopyWith<T, E extends Exception, $Res> {
  factory _$$IdleCopyWith(
          _$Idle<T, E> value, $Res Function(_$Idle<T, E>) then) =
      __$$IdleCopyWithImpl<T, E, $Res>;
}

/// @nodoc
class __$$IdleCopyWithImpl<T, E extends Exception, $Res>
    extends _$ResultStateCopyWithImpl<T, E, $Res, _$Idle<T, E>>
    implements _$$IdleCopyWith<T, E, $Res> {
  __$$IdleCopyWithImpl(_$Idle<T, E> _value, $Res Function(_$Idle<T, E>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Idle<T, E extends Exception> extends Idle<T, E> {
  const _$Idle() : super._();

  @override
  String toString() {
    return 'ResultState<$T, $E>.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Idle<T, E>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() pending,
    required TResult Function(T data) completed,
    required TResult Function(E error) failed,
    required TResult Function(Color? textColor) empty,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? pending,
    TResult? Function(T data)? completed,
    TResult? Function(E error)? failed,
    TResult? Function(Color? textColor)? empty,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? pending,
    TResult Function(T data)? completed,
    TResult Function(E error)? failed,
    TResult Function(Color? textColor)? empty,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T, E> value) idle,
    required TResult Function(Pending<T, E> value) pending,
    required TResult Function(Completed<T, E> value) completed,
    required TResult Function(Failed<T, E> value) failed,
    required TResult Function(Empty<T, E> value) empty,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T, E> value)? idle,
    TResult? Function(Pending<T, E> value)? pending,
    TResult? Function(Completed<T, E> value)? completed,
    TResult? Function(Failed<T, E> value)? failed,
    TResult? Function(Empty<T, E> value)? empty,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T, E> value)? idle,
    TResult Function(Pending<T, E> value)? pending,
    TResult Function(Completed<T, E> value)? completed,
    TResult Function(Failed<T, E> value)? failed,
    TResult Function(Empty<T, E> value)? empty,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class Idle<T, E extends Exception> extends ResultState<T, E> {
  const factory Idle() = _$Idle<T, E>;
  const Idle._() : super._();
}

/// @nodoc
abstract class _$$PendingCopyWith<T, E extends Exception, $Res> {
  factory _$$PendingCopyWith(
          _$Pending<T, E> value, $Res Function(_$Pending<T, E>) then) =
      __$$PendingCopyWithImpl<T, E, $Res>;
}

/// @nodoc
class __$$PendingCopyWithImpl<T, E extends Exception, $Res>
    extends _$ResultStateCopyWithImpl<T, E, $Res, _$Pending<T, E>>
    implements _$$PendingCopyWith<T, E, $Res> {
  __$$PendingCopyWithImpl(
      _$Pending<T, E> _value, $Res Function(_$Pending<T, E>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Pending<T, E extends Exception> extends Pending<T, E> {
  const _$Pending() : super._();

  @override
  String toString() {
    return 'ResultState<$T, $E>.pending()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Pending<T, E>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() pending,
    required TResult Function(T data) completed,
    required TResult Function(E error) failed,
    required TResult Function(Color? textColor) empty,
  }) {
    return pending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? pending,
    TResult? Function(T data)? completed,
    TResult? Function(E error)? failed,
    TResult? Function(Color? textColor)? empty,
  }) {
    return pending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? pending,
    TResult Function(T data)? completed,
    TResult Function(E error)? failed,
    TResult Function(Color? textColor)? empty,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T, E> value) idle,
    required TResult Function(Pending<T, E> value) pending,
    required TResult Function(Completed<T, E> value) completed,
    required TResult Function(Failed<T, E> value) failed,
    required TResult Function(Empty<T, E> value) empty,
  }) {
    return pending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T, E> value)? idle,
    TResult? Function(Pending<T, E> value)? pending,
    TResult? Function(Completed<T, E> value)? completed,
    TResult? Function(Failed<T, E> value)? failed,
    TResult? Function(Empty<T, E> value)? empty,
  }) {
    return pending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T, E> value)? idle,
    TResult Function(Pending<T, E> value)? pending,
    TResult Function(Completed<T, E> value)? completed,
    TResult Function(Failed<T, E> value)? failed,
    TResult Function(Empty<T, E> value)? empty,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(this);
    }
    return orElse();
  }
}

abstract class Pending<T, E extends Exception> extends ResultState<T, E> {
  const factory Pending() = _$Pending<T, E>;
  const Pending._() : super._();
}

/// @nodoc
abstract class _$$CompletedCopyWith<T, E extends Exception, $Res> {
  factory _$$CompletedCopyWith(
          _$Completed<T, E> value, $Res Function(_$Completed<T, E>) then) =
      __$$CompletedCopyWithImpl<T, E, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$CompletedCopyWithImpl<T, E extends Exception, $Res>
    extends _$ResultStateCopyWithImpl<T, E, $Res, _$Completed<T, E>>
    implements _$$CompletedCopyWith<T, E, $Res> {
  __$$CompletedCopyWithImpl(
      _$Completed<T, E> _value, $Res Function(_$Completed<T, E>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$Completed<T, E>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$Completed<T, E extends Exception> extends Completed<T, E> {
  const _$Completed(this.data) : super._();

  @override
  final T data;

  @override
  String toString() {
    return 'ResultState<$T, $E>.completed(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Completed<T, E> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompletedCopyWith<T, E, _$Completed<T, E>> get copyWith =>
      __$$CompletedCopyWithImpl<T, E, _$Completed<T, E>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() pending,
    required TResult Function(T data) completed,
    required TResult Function(E error) failed,
    required TResult Function(Color? textColor) empty,
  }) {
    return completed(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? pending,
    TResult? Function(T data)? completed,
    TResult? Function(E error)? failed,
    TResult? Function(Color? textColor)? empty,
  }) {
    return completed?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? pending,
    TResult Function(T data)? completed,
    TResult Function(E error)? failed,
    TResult Function(Color? textColor)? empty,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T, E> value) idle,
    required TResult Function(Pending<T, E> value) pending,
    required TResult Function(Completed<T, E> value) completed,
    required TResult Function(Failed<T, E> value) failed,
    required TResult Function(Empty<T, E> value) empty,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T, E> value)? idle,
    TResult? Function(Pending<T, E> value)? pending,
    TResult? Function(Completed<T, E> value)? completed,
    TResult? Function(Failed<T, E> value)? failed,
    TResult? Function(Empty<T, E> value)? empty,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T, E> value)? idle,
    TResult Function(Pending<T, E> value)? pending,
    TResult Function(Completed<T, E> value)? completed,
    TResult Function(Failed<T, E> value)? failed,
    TResult Function(Empty<T, E> value)? empty,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class Completed<T, E extends Exception> extends ResultState<T, E> {
  const factory Completed(final T data) = _$Completed<T, E>;
  const Completed._() : super._();

  T get data;
  @JsonKey(ignore: true)
  _$$CompletedCopyWith<T, E, _$Completed<T, E>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedCopyWith<T, E extends Exception, $Res> {
  factory _$$FailedCopyWith(
          _$Failed<T, E> value, $Res Function(_$Failed<T, E>) then) =
      __$$FailedCopyWithImpl<T, E, $Res>;
  @useResult
  $Res call({E error});
}

/// @nodoc
class __$$FailedCopyWithImpl<T, E extends Exception, $Res>
    extends _$ResultStateCopyWithImpl<T, E, $Res, _$Failed<T, E>>
    implements _$$FailedCopyWith<T, E, $Res> {
  __$$FailedCopyWithImpl(
      _$Failed<T, E> _value, $Res Function(_$Failed<T, E>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$Failed<T, E>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as E,
    ));
  }
}

/// @nodoc

class _$Failed<T, E extends Exception> extends Failed<T, E> {
  const _$Failed(this.error) : super._();

  @override
  final E error;

  @override
  String toString() {
    return 'ResultState<$T, $E>.failed(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Failed<T, E> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedCopyWith<T, E, _$Failed<T, E>> get copyWith =>
      __$$FailedCopyWithImpl<T, E, _$Failed<T, E>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() pending,
    required TResult Function(T data) completed,
    required TResult Function(E error) failed,
    required TResult Function(Color? textColor) empty,
  }) {
    return failed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? pending,
    TResult? Function(T data)? completed,
    TResult? Function(E error)? failed,
    TResult? Function(Color? textColor)? empty,
  }) {
    return failed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? pending,
    TResult Function(T data)? completed,
    TResult Function(E error)? failed,
    TResult Function(Color? textColor)? empty,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T, E> value) idle,
    required TResult Function(Pending<T, E> value) pending,
    required TResult Function(Completed<T, E> value) completed,
    required TResult Function(Failed<T, E> value) failed,
    required TResult Function(Empty<T, E> value) empty,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T, E> value)? idle,
    TResult? Function(Pending<T, E> value)? pending,
    TResult? Function(Completed<T, E> value)? completed,
    TResult? Function(Failed<T, E> value)? failed,
    TResult? Function(Empty<T, E> value)? empty,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T, E> value)? idle,
    TResult Function(Pending<T, E> value)? pending,
    TResult Function(Completed<T, E> value)? completed,
    TResult Function(Failed<T, E> value)? failed,
    TResult Function(Empty<T, E> value)? empty,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class Failed<T, E extends Exception> extends ResultState<T, E> {
  const factory Failed(final E error) = _$Failed<T, E>;
  const Failed._() : super._();

  E get error;
  @JsonKey(ignore: true)
  _$$FailedCopyWith<T, E, _$Failed<T, E>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyCopyWith<T, E extends Exception, $Res> {
  factory _$$EmptyCopyWith(
          _$Empty<T, E> value, $Res Function(_$Empty<T, E>) then) =
      __$$EmptyCopyWithImpl<T, E, $Res>;
  @useResult
  $Res call({Color? textColor});
}

/// @nodoc
class __$$EmptyCopyWithImpl<T, E extends Exception, $Res>
    extends _$ResultStateCopyWithImpl<T, E, $Res, _$Empty<T, E>>
    implements _$$EmptyCopyWith<T, E, $Res> {
  __$$EmptyCopyWithImpl(
      _$Empty<T, E> _value, $Res Function(_$Empty<T, E>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textColor = freezed,
  }) {
    return _then(_$Empty<T, E>(
      textColor: freezed == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as Color?,
    ));
  }
}

/// @nodoc

class _$Empty<T, E extends Exception> extends Empty<T, E> {
  const _$Empty({this.textColor}) : super._();

  @override
  final Color? textColor;

  @override
  String toString() {
    return 'ResultState<$T, $E>.empty(textColor: $textColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Empty<T, E> &&
            (identical(other.textColor, textColor) ||
                other.textColor == textColor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, textColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyCopyWith<T, E, _$Empty<T, E>> get copyWith =>
      __$$EmptyCopyWithImpl<T, E, _$Empty<T, E>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() pending,
    required TResult Function(T data) completed,
    required TResult Function(E error) failed,
    required TResult Function(Color? textColor) empty,
  }) {
    return empty(textColor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? pending,
    TResult? Function(T data)? completed,
    TResult? Function(E error)? failed,
    TResult? Function(Color? textColor)? empty,
  }) {
    return empty?.call(textColor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? pending,
    TResult Function(T data)? completed,
    TResult Function(E error)? failed,
    TResult Function(Color? textColor)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(textColor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T, E> value) idle,
    required TResult Function(Pending<T, E> value) pending,
    required TResult Function(Completed<T, E> value) completed,
    required TResult Function(Failed<T, E> value) failed,
    required TResult Function(Empty<T, E> value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T, E> value)? idle,
    TResult? Function(Pending<T, E> value)? pending,
    TResult? Function(Completed<T, E> value)? completed,
    TResult? Function(Failed<T, E> value)? failed,
    TResult? Function(Empty<T, E> value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T, E> value)? idle,
    TResult Function(Pending<T, E> value)? pending,
    TResult Function(Completed<T, E> value)? completed,
    TResult Function(Failed<T, E> value)? failed,
    TResult Function(Empty<T, E> value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T, E extends Exception> extends ResultState<T, E> {
  const factory Empty({final Color? textColor}) = _$Empty<T, E>;
  const Empty._() : super._();

  Color? get textColor;
  @JsonKey(ignore: true)
  _$$EmptyCopyWith<T, E, _$Empty<T, E>> get copyWith =>
      throw _privateConstructorUsedError;
}
