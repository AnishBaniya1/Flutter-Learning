// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sync_todo_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SyncTodoState {

 List<TodoItem> get items;
/// Create a copy of SyncTodoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SyncTodoStateCopyWith<SyncTodoState> get copyWith => _$SyncTodoStateCopyWithImpl<SyncTodoState>(this as SyncTodoState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SyncTodoState&&const DeepCollectionEquality().equals(other.items, items));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'SyncTodoState(items: $items)';
}


}

/// @nodoc
abstract mixin class $SyncTodoStateCopyWith<$Res>  {
  factory $SyncTodoStateCopyWith(SyncTodoState value, $Res Function(SyncTodoState) _then) = _$SyncTodoStateCopyWithImpl;
@useResult
$Res call({
 List<TodoItem> items
});




}
/// @nodoc
class _$SyncTodoStateCopyWithImpl<$Res>
    implements $SyncTodoStateCopyWith<$Res> {
  _$SyncTodoStateCopyWithImpl(this._self, this._then);

  final SyncTodoState _self;
  final $Res Function(SyncTodoState) _then;

/// Create a copy of SyncTodoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<TodoItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [SyncTodoState].
extension SyncTodoStatePatterns on SyncTodoState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SyncTodoState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SyncTodoState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SyncTodoState value)  $default,){
final _that = this;
switch (_that) {
case _SyncTodoState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SyncTodoState value)?  $default,){
final _that = this;
switch (_that) {
case _SyncTodoState() when $default != null:
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
case _SyncTodoState() when $default != null:
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
case _SyncTodoState():
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
case _SyncTodoState() when $default != null:
return $default(_that.items);case _:
  return null;

}
}

}

/// @nodoc


class _SyncTodoState implements SyncTodoState {
  const _SyncTodoState({required final  List<TodoItem> items}): _items = items;
  

 final  List<TodoItem> _items;
@override List<TodoItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of SyncTodoState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SyncTodoStateCopyWith<_SyncTodoState> get copyWith => __$SyncTodoStateCopyWithImpl<_SyncTodoState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SyncTodoState&&const DeepCollectionEquality().equals(other._items, _items));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'SyncTodoState(items: $items)';
}


}

/// @nodoc
abstract mixin class _$SyncTodoStateCopyWith<$Res> implements $SyncTodoStateCopyWith<$Res> {
  factory _$SyncTodoStateCopyWith(_SyncTodoState value, $Res Function(_SyncTodoState) _then) = __$SyncTodoStateCopyWithImpl;
@override @useResult
$Res call({
 List<TodoItem> items
});




}
/// @nodoc
class __$SyncTodoStateCopyWithImpl<$Res>
    implements _$SyncTodoStateCopyWith<$Res> {
  __$SyncTodoStateCopyWithImpl(this._self, this._then);

  final _SyncTodoState _self;
  final $Res Function(_SyncTodoState) _then;

/// Create a copy of SyncTodoState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,}) {
  return _then(_SyncTodoState(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<TodoItem>,
  ));
}


}

/// @nodoc
mixin _$TodoItem {

 String get title;
/// Create a copy of TodoItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TodoItemCopyWith<TodoItem> get copyWith => _$TodoItemCopyWithImpl<TodoItem>(this as TodoItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoItem&&(identical(other.title, title) || other.title == title));
}


@override
int get hashCode => Object.hash(runtimeType,title);

@override
String toString() {
  return 'TodoItem(title: $title)';
}


}

/// @nodoc
abstract mixin class $TodoItemCopyWith<$Res>  {
  factory $TodoItemCopyWith(TodoItem value, $Res Function(TodoItem) _then) = _$TodoItemCopyWithImpl;
@useResult
$Res call({
 String title
});




}
/// @nodoc
class _$TodoItemCopyWithImpl<$Res>
    implements $TodoItemCopyWith<$Res> {
  _$TodoItemCopyWithImpl(this._self, this._then);

  final TodoItem _self;
  final $Res Function(TodoItem) _then;

/// Create a copy of TodoItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TodoItem].
extension TodoItemPatterns on TodoItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TodoItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TodoItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TodoItem value)  $default,){
final _that = this;
switch (_that) {
case _TodoItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TodoItem value)?  $default,){
final _that = this;
switch (_that) {
case _TodoItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TodoItem() when $default != null:
return $default(_that.title);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title)  $default,) {final _that = this;
switch (_that) {
case _TodoItem():
return $default(_that.title);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title)?  $default,) {final _that = this;
switch (_that) {
case _TodoItem() when $default != null:
return $default(_that.title);case _:
  return null;

}
}

}

/// @nodoc


class _TodoItem implements TodoItem {
  const _TodoItem({required this.title});
  

@override final  String title;

/// Create a copy of TodoItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TodoItemCopyWith<_TodoItem> get copyWith => __$TodoItemCopyWithImpl<_TodoItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TodoItem&&(identical(other.title, title) || other.title == title));
}


@override
int get hashCode => Object.hash(runtimeType,title);

@override
String toString() {
  return 'TodoItem(title: $title)';
}


}

/// @nodoc
abstract mixin class _$TodoItemCopyWith<$Res> implements $TodoItemCopyWith<$Res> {
  factory _$TodoItemCopyWith(_TodoItem value, $Res Function(_TodoItem) _then) = __$TodoItemCopyWithImpl;
@override @useResult
$Res call({
 String title
});




}
/// @nodoc
class __$TodoItemCopyWithImpl<$Res>
    implements _$TodoItemCopyWith<$Res> {
  __$TodoItemCopyWithImpl(this._self, this._then);

  final _TodoItem _self;
  final $Res Function(_TodoItem) _then;

/// Create a copy of TodoItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,}) {
  return _then(_TodoItem(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
