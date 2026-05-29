// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'async_todo_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AsyncTodoState {

 List<TodoItem> get items;
/// Create a copy of AsyncTodoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AsyncTodoStateCopyWith<AsyncTodoState> get copyWith => _$AsyncTodoStateCopyWithImpl<AsyncTodoState>(this as AsyncTodoState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AsyncTodoState&&const DeepCollectionEquality().equals(other.items, items));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'AsyncTodoState(items: $items)';
}


}

/// @nodoc
abstract mixin class $AsyncTodoStateCopyWith<$Res>  {
  factory $AsyncTodoStateCopyWith(AsyncTodoState value, $Res Function(AsyncTodoState) _then) = _$AsyncTodoStateCopyWithImpl;
@useResult
$Res call({
 List<TodoItem> items
});




}
/// @nodoc
class _$AsyncTodoStateCopyWithImpl<$Res>
    implements $AsyncTodoStateCopyWith<$Res> {
  _$AsyncTodoStateCopyWithImpl(this._self, this._then);

  final AsyncTodoState _self;
  final $Res Function(AsyncTodoState) _then;

/// Create a copy of AsyncTodoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<TodoItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [AsyncTodoState].
extension AsyncTodoStatePatterns on AsyncTodoState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AsyncTodoState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AsyncTodoState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AsyncTodoState value)  $default,){
final _that = this;
switch (_that) {
case _AsyncTodoState():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AsyncTodoState value)?  $default,){
final _that = this;
switch (_that) {
case _AsyncTodoState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<TodoItem> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AsyncTodoState() when $default != null:
return $default(_that.items);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<TodoItem> items)  $default,) {final _that = this;
switch (_that) {
case _AsyncTodoState():
return $default(_that.items);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<TodoItem> items)?  $default,) {final _that = this;
switch (_that) {
case _AsyncTodoState() when $default != null:
return $default(_that.items);case _:
  return null;

}
}

}

/// @nodoc


class _AsyncTodoState implements AsyncTodoState {
  const _AsyncTodoState({required final  List<TodoItem> items}): _items = items;
  

 final  List<TodoItem> _items;
@override List<TodoItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of AsyncTodoState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AsyncTodoStateCopyWith<_AsyncTodoState> get copyWith => __$AsyncTodoStateCopyWithImpl<_AsyncTodoState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AsyncTodoState&&const DeepCollectionEquality().equals(other._items, _items));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'AsyncTodoState(items: $items)';
}


}

/// @nodoc
abstract mixin class _$AsyncTodoStateCopyWith<$Res> implements $AsyncTodoStateCopyWith<$Res> {
  factory _$AsyncTodoStateCopyWith(_AsyncTodoState value, $Res Function(_AsyncTodoState) _then) = __$AsyncTodoStateCopyWithImpl;
@override @useResult
$Res call({
 List<TodoItem> items
});




}
/// @nodoc
class __$AsyncTodoStateCopyWithImpl<$Res>
    implements _$AsyncTodoStateCopyWith<$Res> {
  __$AsyncTodoStateCopyWithImpl(this._self, this._then);

  final _AsyncTodoState _self;
  final $Res Function(_AsyncTodoState) _then;

/// Create a copy of AsyncTodoState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,}) {
  return _then(_AsyncTodoState(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<TodoItem>,
  ));
}


}

// dart format on
