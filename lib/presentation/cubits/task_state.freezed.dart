// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TaskState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TaskModel> tasks) loaded,
    required TResult Function(String message) error,
    required TResult Function(TaskModel task) added,
    required TResult Function(TaskModel task) updated,
    required TResult Function(String taskId) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TaskModel> tasks)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(TaskModel task)? added,
    TResult? Function(TaskModel task)? updated,
    TResult? Function(String taskId)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskModel> tasks)? loaded,
    TResult Function(String message)? error,
    TResult Function(TaskModel task)? added,
    TResult Function(TaskModel task)? updated,
    TResult Function(String taskId)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskInitial value) initial,
    required TResult Function(TaskLoading value) loading,
    required TResult Function(TaskLoaded value) loaded,
    required TResult Function(TaskError value) error,
    required TResult Function(TaskAdded value) added,
    required TResult Function(TaskUpdated value) updated,
    required TResult Function(TaskDeleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskInitial value)? initial,
    TResult? Function(TaskLoading value)? loading,
    TResult? Function(TaskLoaded value)? loaded,
    TResult? Function(TaskError value)? error,
    TResult? Function(TaskAdded value)? added,
    TResult? Function(TaskUpdated value)? updated,
    TResult? Function(TaskDeleted value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskInitial value)? initial,
    TResult Function(TaskLoading value)? loading,
    TResult Function(TaskLoaded value)? loaded,
    TResult Function(TaskError value)? error,
    TResult Function(TaskAdded value)? added,
    TResult Function(TaskUpdated value)? updated,
    TResult Function(TaskDeleted value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskStateCopyWith<$Res> {
  factory $TaskStateCopyWith(TaskState value, $Res Function(TaskState) then) =
      _$TaskStateCopyWithImpl<$Res, TaskState>;
}

/// @nodoc
class _$TaskStateCopyWithImpl<$Res, $Val extends TaskState>
    implements $TaskStateCopyWith<$Res> {
  _$TaskStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TaskInitialImplCopyWith<$Res> {
  factory _$$TaskInitialImplCopyWith(
          _$TaskInitialImpl value, $Res Function(_$TaskInitialImpl) then) =
      __$$TaskInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskInitialImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$TaskInitialImpl>
    implements _$$TaskInitialImplCopyWith<$Res> {
  __$$TaskInitialImplCopyWithImpl(
      _$TaskInitialImpl _value, $Res Function(_$TaskInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TaskInitialImpl implements TaskInitial {
  const _$TaskInitialImpl();

  @override
  String toString() {
    return 'TaskState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TaskInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TaskModel> tasks) loaded,
    required TResult Function(String message) error,
    required TResult Function(TaskModel task) added,
    required TResult Function(TaskModel task) updated,
    required TResult Function(String taskId) deleted,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TaskModel> tasks)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(TaskModel task)? added,
    TResult? Function(TaskModel task)? updated,
    TResult? Function(String taskId)? deleted,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskModel> tasks)? loaded,
    TResult Function(String message)? error,
    TResult Function(TaskModel task)? added,
    TResult Function(TaskModel task)? updated,
    TResult Function(String taskId)? deleted,
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
    required TResult Function(TaskInitial value) initial,
    required TResult Function(TaskLoading value) loading,
    required TResult Function(TaskLoaded value) loaded,
    required TResult Function(TaskError value) error,
    required TResult Function(TaskAdded value) added,
    required TResult Function(TaskUpdated value) updated,
    required TResult Function(TaskDeleted value) deleted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskInitial value)? initial,
    TResult? Function(TaskLoading value)? loading,
    TResult? Function(TaskLoaded value)? loaded,
    TResult? Function(TaskError value)? error,
    TResult? Function(TaskAdded value)? added,
    TResult? Function(TaskUpdated value)? updated,
    TResult? Function(TaskDeleted value)? deleted,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskInitial value)? initial,
    TResult Function(TaskLoading value)? loading,
    TResult Function(TaskLoaded value)? loaded,
    TResult Function(TaskError value)? error,
    TResult Function(TaskAdded value)? added,
    TResult Function(TaskUpdated value)? updated,
    TResult Function(TaskDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TaskInitial implements TaskState {
  const factory TaskInitial() = _$TaskInitialImpl;
}

/// @nodoc
abstract class _$$TaskLoadingImplCopyWith<$Res> {
  factory _$$TaskLoadingImplCopyWith(
          _$TaskLoadingImpl value, $Res Function(_$TaskLoadingImpl) then) =
      __$$TaskLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskLoadingImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$TaskLoadingImpl>
    implements _$$TaskLoadingImplCopyWith<$Res> {
  __$$TaskLoadingImplCopyWithImpl(
      _$TaskLoadingImpl _value, $Res Function(_$TaskLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TaskLoadingImpl implements TaskLoading {
  const _$TaskLoadingImpl();

  @override
  String toString() {
    return 'TaskState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TaskLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TaskModel> tasks) loaded,
    required TResult Function(String message) error,
    required TResult Function(TaskModel task) added,
    required TResult Function(TaskModel task) updated,
    required TResult Function(String taskId) deleted,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TaskModel> tasks)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(TaskModel task)? added,
    TResult? Function(TaskModel task)? updated,
    TResult? Function(String taskId)? deleted,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskModel> tasks)? loaded,
    TResult Function(String message)? error,
    TResult Function(TaskModel task)? added,
    TResult Function(TaskModel task)? updated,
    TResult Function(String taskId)? deleted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskInitial value) initial,
    required TResult Function(TaskLoading value) loading,
    required TResult Function(TaskLoaded value) loaded,
    required TResult Function(TaskError value) error,
    required TResult Function(TaskAdded value) added,
    required TResult Function(TaskUpdated value) updated,
    required TResult Function(TaskDeleted value) deleted,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskInitial value)? initial,
    TResult? Function(TaskLoading value)? loading,
    TResult? Function(TaskLoaded value)? loaded,
    TResult? Function(TaskError value)? error,
    TResult? Function(TaskAdded value)? added,
    TResult? Function(TaskUpdated value)? updated,
    TResult? Function(TaskDeleted value)? deleted,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskInitial value)? initial,
    TResult Function(TaskLoading value)? loading,
    TResult Function(TaskLoaded value)? loaded,
    TResult Function(TaskError value)? error,
    TResult Function(TaskAdded value)? added,
    TResult Function(TaskUpdated value)? updated,
    TResult Function(TaskDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TaskLoading implements TaskState {
  const factory TaskLoading() = _$TaskLoadingImpl;
}

/// @nodoc
abstract class _$$TaskLoadedImplCopyWith<$Res> {
  factory _$$TaskLoadedImplCopyWith(
          _$TaskLoadedImpl value, $Res Function(_$TaskLoadedImpl) then) =
      __$$TaskLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TaskModel> tasks});
}

/// @nodoc
class __$$TaskLoadedImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$TaskLoadedImpl>
    implements _$$TaskLoadedImplCopyWith<$Res> {
  __$$TaskLoadedImplCopyWithImpl(
      _$TaskLoadedImpl _value, $Res Function(_$TaskLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_$TaskLoadedImpl(
      null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>,
    ));
  }
}

/// @nodoc

class _$TaskLoadedImpl implements TaskLoaded {
  const _$TaskLoadedImpl(final List<TaskModel> tasks) : _tasks = tasks;

  final List<TaskModel> _tasks;
  @override
  List<TaskModel> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString() {
    return 'TaskState.loaded(tasks: $tasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskLoadedImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tasks));

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskLoadedImplCopyWith<_$TaskLoadedImpl> get copyWith =>
      __$$TaskLoadedImplCopyWithImpl<_$TaskLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TaskModel> tasks) loaded,
    required TResult Function(String message) error,
    required TResult Function(TaskModel task) added,
    required TResult Function(TaskModel task) updated,
    required TResult Function(String taskId) deleted,
  }) {
    return loaded(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TaskModel> tasks)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(TaskModel task)? added,
    TResult? Function(TaskModel task)? updated,
    TResult? Function(String taskId)? deleted,
  }) {
    return loaded?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskModel> tasks)? loaded,
    TResult Function(String message)? error,
    TResult Function(TaskModel task)? added,
    TResult Function(TaskModel task)? updated,
    TResult Function(String taskId)? deleted,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(tasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskInitial value) initial,
    required TResult Function(TaskLoading value) loading,
    required TResult Function(TaskLoaded value) loaded,
    required TResult Function(TaskError value) error,
    required TResult Function(TaskAdded value) added,
    required TResult Function(TaskUpdated value) updated,
    required TResult Function(TaskDeleted value) deleted,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskInitial value)? initial,
    TResult? Function(TaskLoading value)? loading,
    TResult? Function(TaskLoaded value)? loaded,
    TResult? Function(TaskError value)? error,
    TResult? Function(TaskAdded value)? added,
    TResult? Function(TaskUpdated value)? updated,
    TResult? Function(TaskDeleted value)? deleted,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskInitial value)? initial,
    TResult Function(TaskLoading value)? loading,
    TResult Function(TaskLoaded value)? loaded,
    TResult Function(TaskError value)? error,
    TResult Function(TaskAdded value)? added,
    TResult Function(TaskUpdated value)? updated,
    TResult Function(TaskDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class TaskLoaded implements TaskState {
  const factory TaskLoaded(final List<TaskModel> tasks) = _$TaskLoadedImpl;

  List<TaskModel> get tasks;

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskLoadedImplCopyWith<_$TaskLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskErrorImplCopyWith<$Res> {
  factory _$$TaskErrorImplCopyWith(
          _$TaskErrorImpl value, $Res Function(_$TaskErrorImpl) then) =
      __$$TaskErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$TaskErrorImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$TaskErrorImpl>
    implements _$$TaskErrorImplCopyWith<$Res> {
  __$$TaskErrorImplCopyWithImpl(
      _$TaskErrorImpl _value, $Res Function(_$TaskErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$TaskErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TaskErrorImpl implements TaskError {
  const _$TaskErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'TaskState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskErrorImplCopyWith<_$TaskErrorImpl> get copyWith =>
      __$$TaskErrorImplCopyWithImpl<_$TaskErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TaskModel> tasks) loaded,
    required TResult Function(String message) error,
    required TResult Function(TaskModel task) added,
    required TResult Function(TaskModel task) updated,
    required TResult Function(String taskId) deleted,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TaskModel> tasks)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(TaskModel task)? added,
    TResult? Function(TaskModel task)? updated,
    TResult? Function(String taskId)? deleted,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskModel> tasks)? loaded,
    TResult Function(String message)? error,
    TResult Function(TaskModel task)? added,
    TResult Function(TaskModel task)? updated,
    TResult Function(String taskId)? deleted,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskInitial value) initial,
    required TResult Function(TaskLoading value) loading,
    required TResult Function(TaskLoaded value) loaded,
    required TResult Function(TaskError value) error,
    required TResult Function(TaskAdded value) added,
    required TResult Function(TaskUpdated value) updated,
    required TResult Function(TaskDeleted value) deleted,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskInitial value)? initial,
    TResult? Function(TaskLoading value)? loading,
    TResult? Function(TaskLoaded value)? loaded,
    TResult? Function(TaskError value)? error,
    TResult? Function(TaskAdded value)? added,
    TResult? Function(TaskUpdated value)? updated,
    TResult? Function(TaskDeleted value)? deleted,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskInitial value)? initial,
    TResult Function(TaskLoading value)? loading,
    TResult Function(TaskLoaded value)? loaded,
    TResult Function(TaskError value)? error,
    TResult Function(TaskAdded value)? added,
    TResult Function(TaskUpdated value)? updated,
    TResult Function(TaskDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TaskError implements TaskState {
  const factory TaskError(final String message) = _$TaskErrorImpl;

  String get message;

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskErrorImplCopyWith<_$TaskErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskAddedImplCopyWith<$Res> {
  factory _$$TaskAddedImplCopyWith(
          _$TaskAddedImpl value, $Res Function(_$TaskAddedImpl) then) =
      __$$TaskAddedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskModel task});
}

/// @nodoc
class __$$TaskAddedImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$TaskAddedImpl>
    implements _$$TaskAddedImplCopyWith<$Res> {
  __$$TaskAddedImplCopyWithImpl(
      _$TaskAddedImpl _value, $Res Function(_$TaskAddedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$TaskAddedImpl(
      null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskModel,
    ));
  }
}

/// @nodoc

class _$TaskAddedImpl implements TaskAdded {
  const _$TaskAddedImpl(this.task);

  @override
  final TaskModel task;

  @override
  String toString() {
    return 'TaskState.added(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskAddedImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskAddedImplCopyWith<_$TaskAddedImpl> get copyWith =>
      __$$TaskAddedImplCopyWithImpl<_$TaskAddedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TaskModel> tasks) loaded,
    required TResult Function(String message) error,
    required TResult Function(TaskModel task) added,
    required TResult Function(TaskModel task) updated,
    required TResult Function(String taskId) deleted,
  }) {
    return added(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TaskModel> tasks)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(TaskModel task)? added,
    TResult? Function(TaskModel task)? updated,
    TResult? Function(String taskId)? deleted,
  }) {
    return added?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskModel> tasks)? loaded,
    TResult Function(String message)? error,
    TResult Function(TaskModel task)? added,
    TResult Function(TaskModel task)? updated,
    TResult Function(String taskId)? deleted,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskInitial value) initial,
    required TResult Function(TaskLoading value) loading,
    required TResult Function(TaskLoaded value) loaded,
    required TResult Function(TaskError value) error,
    required TResult Function(TaskAdded value) added,
    required TResult Function(TaskUpdated value) updated,
    required TResult Function(TaskDeleted value) deleted,
  }) {
    return added(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskInitial value)? initial,
    TResult? Function(TaskLoading value)? loading,
    TResult? Function(TaskLoaded value)? loaded,
    TResult? Function(TaskError value)? error,
    TResult? Function(TaskAdded value)? added,
    TResult? Function(TaskUpdated value)? updated,
    TResult? Function(TaskDeleted value)? deleted,
  }) {
    return added?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskInitial value)? initial,
    TResult Function(TaskLoading value)? loading,
    TResult Function(TaskLoaded value)? loaded,
    TResult Function(TaskError value)? error,
    TResult Function(TaskAdded value)? added,
    TResult Function(TaskUpdated value)? updated,
    TResult Function(TaskDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added(this);
    }
    return orElse();
  }
}

abstract class TaskAdded implements TaskState {
  const factory TaskAdded(final TaskModel task) = _$TaskAddedImpl;

  TaskModel get task;

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskAddedImplCopyWith<_$TaskAddedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskUpdatedImplCopyWith<$Res> {
  factory _$$TaskUpdatedImplCopyWith(
          _$TaskUpdatedImpl value, $Res Function(_$TaskUpdatedImpl) then) =
      __$$TaskUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskModel task});
}

/// @nodoc
class __$$TaskUpdatedImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$TaskUpdatedImpl>
    implements _$$TaskUpdatedImplCopyWith<$Res> {
  __$$TaskUpdatedImplCopyWithImpl(
      _$TaskUpdatedImpl _value, $Res Function(_$TaskUpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$TaskUpdatedImpl(
      null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskModel,
    ));
  }
}

/// @nodoc

class _$TaskUpdatedImpl implements TaskUpdated {
  const _$TaskUpdatedImpl(this.task);

  @override
  final TaskModel task;

  @override
  String toString() {
    return 'TaskState.updated(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskUpdatedImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskUpdatedImplCopyWith<_$TaskUpdatedImpl> get copyWith =>
      __$$TaskUpdatedImplCopyWithImpl<_$TaskUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TaskModel> tasks) loaded,
    required TResult Function(String message) error,
    required TResult Function(TaskModel task) added,
    required TResult Function(TaskModel task) updated,
    required TResult Function(String taskId) deleted,
  }) {
    return updated(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TaskModel> tasks)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(TaskModel task)? added,
    TResult? Function(TaskModel task)? updated,
    TResult? Function(String taskId)? deleted,
  }) {
    return updated?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskModel> tasks)? loaded,
    TResult Function(String message)? error,
    TResult Function(TaskModel task)? added,
    TResult Function(TaskModel task)? updated,
    TResult Function(String taskId)? deleted,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskInitial value) initial,
    required TResult Function(TaskLoading value) loading,
    required TResult Function(TaskLoaded value) loaded,
    required TResult Function(TaskError value) error,
    required TResult Function(TaskAdded value) added,
    required TResult Function(TaskUpdated value) updated,
    required TResult Function(TaskDeleted value) deleted,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskInitial value)? initial,
    TResult? Function(TaskLoading value)? loading,
    TResult? Function(TaskLoaded value)? loaded,
    TResult? Function(TaskError value)? error,
    TResult? Function(TaskAdded value)? added,
    TResult? Function(TaskUpdated value)? updated,
    TResult? Function(TaskDeleted value)? deleted,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskInitial value)? initial,
    TResult Function(TaskLoading value)? loading,
    TResult Function(TaskLoaded value)? loaded,
    TResult Function(TaskError value)? error,
    TResult Function(TaskAdded value)? added,
    TResult Function(TaskUpdated value)? updated,
    TResult Function(TaskDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class TaskUpdated implements TaskState {
  const factory TaskUpdated(final TaskModel task) = _$TaskUpdatedImpl;

  TaskModel get task;

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskUpdatedImplCopyWith<_$TaskUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskDeletedImplCopyWith<$Res> {
  factory _$$TaskDeletedImplCopyWith(
          _$TaskDeletedImpl value, $Res Function(_$TaskDeletedImpl) then) =
      __$$TaskDeletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String taskId});
}

/// @nodoc
class __$$TaskDeletedImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$TaskDeletedImpl>
    implements _$$TaskDeletedImplCopyWith<$Res> {
  __$$TaskDeletedImplCopyWithImpl(
      _$TaskDeletedImpl _value, $Res Function(_$TaskDeletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
  }) {
    return _then(_$TaskDeletedImpl(
      null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TaskDeletedImpl implements TaskDeleted {
  const _$TaskDeletedImpl(this.taskId);

  @override
  final String taskId;

  @override
  String toString() {
    return 'TaskState.deleted(taskId: $taskId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskDeletedImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskId);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskDeletedImplCopyWith<_$TaskDeletedImpl> get copyWith =>
      __$$TaskDeletedImplCopyWithImpl<_$TaskDeletedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TaskModel> tasks) loaded,
    required TResult Function(String message) error,
    required TResult Function(TaskModel task) added,
    required TResult Function(TaskModel task) updated,
    required TResult Function(String taskId) deleted,
  }) {
    return deleted(taskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TaskModel> tasks)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(TaskModel task)? added,
    TResult? Function(TaskModel task)? updated,
    TResult? Function(String taskId)? deleted,
  }) {
    return deleted?.call(taskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaskModel> tasks)? loaded,
    TResult Function(String message)? error,
    TResult Function(TaskModel task)? added,
    TResult Function(TaskModel task)? updated,
    TResult Function(String taskId)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(taskId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskInitial value) initial,
    required TResult Function(TaskLoading value) loading,
    required TResult Function(TaskLoaded value) loaded,
    required TResult Function(TaskError value) error,
    required TResult Function(TaskAdded value) added,
    required TResult Function(TaskUpdated value) updated,
    required TResult Function(TaskDeleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskInitial value)? initial,
    TResult? Function(TaskLoading value)? loading,
    TResult? Function(TaskLoaded value)? loaded,
    TResult? Function(TaskError value)? error,
    TResult? Function(TaskAdded value)? added,
    TResult? Function(TaskUpdated value)? updated,
    TResult? Function(TaskDeleted value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskInitial value)? initial,
    TResult Function(TaskLoading value)? loading,
    TResult Function(TaskLoaded value)? loaded,
    TResult Function(TaskError value)? error,
    TResult Function(TaskAdded value)? added,
    TResult Function(TaskUpdated value)? updated,
    TResult Function(TaskDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class TaskDeleted implements TaskState {
  const factory TaskDeleted(final String taskId) = _$TaskDeletedImpl;

  String get taskId;

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskDeletedImplCopyWith<_$TaskDeletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
