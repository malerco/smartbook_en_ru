// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'books_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$BooksEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRequested,
    required TResult Function(Book book) addRequested,
    required TResult Function(String bookId) deleteRequested,
    required TResult Function(Book book) updateRequested,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRequested,
    TResult? Function(Book book)? addRequested,
    TResult? Function(String bookId)? deleteRequested,
    TResult? Function(Book book)? updateRequested,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRequested,
    TResult Function(Book book)? addRequested,
    TResult Function(String bookId)? deleteRequested,
    TResult Function(Book book)? updateRequested,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooksLoadRequested value) loadRequested,
    required TResult Function(BooksAddRequested value) addRequested,
    required TResult Function(BooksDeleteRequested value) deleteRequested,
    required TResult Function(BooksUpdateRequested value) updateRequested,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BooksLoadRequested value)? loadRequested,
    TResult? Function(BooksAddRequested value)? addRequested,
    TResult? Function(BooksDeleteRequested value)? deleteRequested,
    TResult? Function(BooksUpdateRequested value)? updateRequested,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooksLoadRequested value)? loadRequested,
    TResult Function(BooksAddRequested value)? addRequested,
    TResult Function(BooksDeleteRequested value)? deleteRequested,
    TResult Function(BooksUpdateRequested value)? updateRequested,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BooksEventCopyWith<$Res> {
  factory $BooksEventCopyWith(
    BooksEvent value,
    $Res Function(BooksEvent) then,
  ) = _$BooksEventCopyWithImpl<$Res, BooksEvent>;
}

/// @nodoc
class _$BooksEventCopyWithImpl<$Res, $Val extends BooksEvent>
    implements $BooksEventCopyWith<$Res> {
  _$BooksEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BooksEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$BooksLoadRequestedImplCopyWith<$Res> {
  factory _$$BooksLoadRequestedImplCopyWith(
    _$BooksLoadRequestedImpl value,
    $Res Function(_$BooksLoadRequestedImpl) then,
  ) = __$$BooksLoadRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BooksLoadRequestedImplCopyWithImpl<$Res>
    extends _$BooksEventCopyWithImpl<$Res, _$BooksLoadRequestedImpl>
    implements _$$BooksLoadRequestedImplCopyWith<$Res> {
  __$$BooksLoadRequestedImplCopyWithImpl(
    _$BooksLoadRequestedImpl _value,
    $Res Function(_$BooksLoadRequestedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BooksEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$BooksLoadRequestedImpl implements BooksLoadRequested {
  const _$BooksLoadRequestedImpl();

  @override
  String toString() {
    return 'BooksEvent.loadRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BooksLoadRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRequested,
    required TResult Function(Book book) addRequested,
    required TResult Function(String bookId) deleteRequested,
    required TResult Function(Book book) updateRequested,
  }) {
    return loadRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRequested,
    TResult? Function(Book book)? addRequested,
    TResult? Function(String bookId)? deleteRequested,
    TResult? Function(Book book)? updateRequested,
  }) {
    return loadRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRequested,
    TResult Function(Book book)? addRequested,
    TResult Function(String bookId)? deleteRequested,
    TResult Function(Book book)? updateRequested,
    required TResult orElse(),
  }) {
    if (loadRequested != null) {
      return loadRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooksLoadRequested value) loadRequested,
    required TResult Function(BooksAddRequested value) addRequested,
    required TResult Function(BooksDeleteRequested value) deleteRequested,
    required TResult Function(BooksUpdateRequested value) updateRequested,
  }) {
    return loadRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BooksLoadRequested value)? loadRequested,
    TResult? Function(BooksAddRequested value)? addRequested,
    TResult? Function(BooksDeleteRequested value)? deleteRequested,
    TResult? Function(BooksUpdateRequested value)? updateRequested,
  }) {
    return loadRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooksLoadRequested value)? loadRequested,
    TResult Function(BooksAddRequested value)? addRequested,
    TResult Function(BooksDeleteRequested value)? deleteRequested,
    TResult Function(BooksUpdateRequested value)? updateRequested,
    required TResult orElse(),
  }) {
    if (loadRequested != null) {
      return loadRequested(this);
    }
    return orElse();
  }
}

abstract class BooksLoadRequested implements BooksEvent {
  const factory BooksLoadRequested() = _$BooksLoadRequestedImpl;
}

/// @nodoc
abstract class _$$BooksAddRequestedImplCopyWith<$Res> {
  factory _$$BooksAddRequestedImplCopyWith(
    _$BooksAddRequestedImpl value,
    $Res Function(_$BooksAddRequestedImpl) then,
  ) = __$$BooksAddRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Book book});
}

/// @nodoc
class __$$BooksAddRequestedImplCopyWithImpl<$Res>
    extends _$BooksEventCopyWithImpl<$Res, _$BooksAddRequestedImpl>
    implements _$$BooksAddRequestedImplCopyWith<$Res> {
  __$$BooksAddRequestedImplCopyWithImpl(
    _$BooksAddRequestedImpl _value,
    $Res Function(_$BooksAddRequestedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BooksEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? book = null}) {
    return _then(
      _$BooksAddRequestedImpl(
        null == book
            ? _value.book
            : book // ignore: cast_nullable_to_non_nullable
                  as Book,
      ),
    );
  }
}

/// @nodoc

class _$BooksAddRequestedImpl implements BooksAddRequested {
  const _$BooksAddRequestedImpl(this.book);

  @override
  final Book book;

  @override
  String toString() {
    return 'BooksEvent.addRequested(book: $book)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BooksAddRequestedImpl &&
            (identical(other.book, book) || other.book == book));
  }

  @override
  int get hashCode => Object.hash(runtimeType, book);

  /// Create a copy of BooksEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BooksAddRequestedImplCopyWith<_$BooksAddRequestedImpl> get copyWith =>
      __$$BooksAddRequestedImplCopyWithImpl<_$BooksAddRequestedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRequested,
    required TResult Function(Book book) addRequested,
    required TResult Function(String bookId) deleteRequested,
    required TResult Function(Book book) updateRequested,
  }) {
    return addRequested(book);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRequested,
    TResult? Function(Book book)? addRequested,
    TResult? Function(String bookId)? deleteRequested,
    TResult? Function(Book book)? updateRequested,
  }) {
    return addRequested?.call(book);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRequested,
    TResult Function(Book book)? addRequested,
    TResult Function(String bookId)? deleteRequested,
    TResult Function(Book book)? updateRequested,
    required TResult orElse(),
  }) {
    if (addRequested != null) {
      return addRequested(book);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooksLoadRequested value) loadRequested,
    required TResult Function(BooksAddRequested value) addRequested,
    required TResult Function(BooksDeleteRequested value) deleteRequested,
    required TResult Function(BooksUpdateRequested value) updateRequested,
  }) {
    return addRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BooksLoadRequested value)? loadRequested,
    TResult? Function(BooksAddRequested value)? addRequested,
    TResult? Function(BooksDeleteRequested value)? deleteRequested,
    TResult? Function(BooksUpdateRequested value)? updateRequested,
  }) {
    return addRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooksLoadRequested value)? loadRequested,
    TResult Function(BooksAddRequested value)? addRequested,
    TResult Function(BooksDeleteRequested value)? deleteRequested,
    TResult Function(BooksUpdateRequested value)? updateRequested,
    required TResult orElse(),
  }) {
    if (addRequested != null) {
      return addRequested(this);
    }
    return orElse();
  }
}

abstract class BooksAddRequested implements BooksEvent {
  const factory BooksAddRequested(final Book book) = _$BooksAddRequestedImpl;

  Book get book;

  /// Create a copy of BooksEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BooksAddRequestedImplCopyWith<_$BooksAddRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BooksDeleteRequestedImplCopyWith<$Res> {
  factory _$$BooksDeleteRequestedImplCopyWith(
    _$BooksDeleteRequestedImpl value,
    $Res Function(_$BooksDeleteRequestedImpl) then,
  ) = __$$BooksDeleteRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String bookId});
}

/// @nodoc
class __$$BooksDeleteRequestedImplCopyWithImpl<$Res>
    extends _$BooksEventCopyWithImpl<$Res, _$BooksDeleteRequestedImpl>
    implements _$$BooksDeleteRequestedImplCopyWith<$Res> {
  __$$BooksDeleteRequestedImplCopyWithImpl(
    _$BooksDeleteRequestedImpl _value,
    $Res Function(_$BooksDeleteRequestedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BooksEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? bookId = null}) {
    return _then(
      _$BooksDeleteRequestedImpl(
        null == bookId
            ? _value.bookId
            : bookId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$BooksDeleteRequestedImpl implements BooksDeleteRequested {
  const _$BooksDeleteRequestedImpl(this.bookId);

  @override
  final String bookId;

  @override
  String toString() {
    return 'BooksEvent.deleteRequested(bookId: $bookId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BooksDeleteRequestedImpl &&
            (identical(other.bookId, bookId) || other.bookId == bookId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookId);

  /// Create a copy of BooksEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BooksDeleteRequestedImplCopyWith<_$BooksDeleteRequestedImpl>
  get copyWith =>
      __$$BooksDeleteRequestedImplCopyWithImpl<_$BooksDeleteRequestedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRequested,
    required TResult Function(Book book) addRequested,
    required TResult Function(String bookId) deleteRequested,
    required TResult Function(Book book) updateRequested,
  }) {
    return deleteRequested(bookId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRequested,
    TResult? Function(Book book)? addRequested,
    TResult? Function(String bookId)? deleteRequested,
    TResult? Function(Book book)? updateRequested,
  }) {
    return deleteRequested?.call(bookId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRequested,
    TResult Function(Book book)? addRequested,
    TResult Function(String bookId)? deleteRequested,
    TResult Function(Book book)? updateRequested,
    required TResult orElse(),
  }) {
    if (deleteRequested != null) {
      return deleteRequested(bookId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooksLoadRequested value) loadRequested,
    required TResult Function(BooksAddRequested value) addRequested,
    required TResult Function(BooksDeleteRequested value) deleteRequested,
    required TResult Function(BooksUpdateRequested value) updateRequested,
  }) {
    return deleteRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BooksLoadRequested value)? loadRequested,
    TResult? Function(BooksAddRequested value)? addRequested,
    TResult? Function(BooksDeleteRequested value)? deleteRequested,
    TResult? Function(BooksUpdateRequested value)? updateRequested,
  }) {
    return deleteRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooksLoadRequested value)? loadRequested,
    TResult Function(BooksAddRequested value)? addRequested,
    TResult Function(BooksDeleteRequested value)? deleteRequested,
    TResult Function(BooksUpdateRequested value)? updateRequested,
    required TResult orElse(),
  }) {
    if (deleteRequested != null) {
      return deleteRequested(this);
    }
    return orElse();
  }
}

abstract class BooksDeleteRequested implements BooksEvent {
  const factory BooksDeleteRequested(final String bookId) =
      _$BooksDeleteRequestedImpl;

  String get bookId;

  /// Create a copy of BooksEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BooksDeleteRequestedImplCopyWith<_$BooksDeleteRequestedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BooksUpdateRequestedImplCopyWith<$Res> {
  factory _$$BooksUpdateRequestedImplCopyWith(
    _$BooksUpdateRequestedImpl value,
    $Res Function(_$BooksUpdateRequestedImpl) then,
  ) = __$$BooksUpdateRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Book book});
}

/// @nodoc
class __$$BooksUpdateRequestedImplCopyWithImpl<$Res>
    extends _$BooksEventCopyWithImpl<$Res, _$BooksUpdateRequestedImpl>
    implements _$$BooksUpdateRequestedImplCopyWith<$Res> {
  __$$BooksUpdateRequestedImplCopyWithImpl(
    _$BooksUpdateRequestedImpl _value,
    $Res Function(_$BooksUpdateRequestedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BooksEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? book = null}) {
    return _then(
      _$BooksUpdateRequestedImpl(
        null == book
            ? _value.book
            : book // ignore: cast_nullable_to_non_nullable
                  as Book,
      ),
    );
  }
}

/// @nodoc

class _$BooksUpdateRequestedImpl implements BooksUpdateRequested {
  const _$BooksUpdateRequestedImpl(this.book);

  @override
  final Book book;

  @override
  String toString() {
    return 'BooksEvent.updateRequested(book: $book)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BooksUpdateRequestedImpl &&
            (identical(other.book, book) || other.book == book));
  }

  @override
  int get hashCode => Object.hash(runtimeType, book);

  /// Create a copy of BooksEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BooksUpdateRequestedImplCopyWith<_$BooksUpdateRequestedImpl>
  get copyWith =>
      __$$BooksUpdateRequestedImplCopyWithImpl<_$BooksUpdateRequestedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRequested,
    required TResult Function(Book book) addRequested,
    required TResult Function(String bookId) deleteRequested,
    required TResult Function(Book book) updateRequested,
  }) {
    return updateRequested(book);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRequested,
    TResult? Function(Book book)? addRequested,
    TResult? Function(String bookId)? deleteRequested,
    TResult? Function(Book book)? updateRequested,
  }) {
    return updateRequested?.call(book);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRequested,
    TResult Function(Book book)? addRequested,
    TResult Function(String bookId)? deleteRequested,
    TResult Function(Book book)? updateRequested,
    required TResult orElse(),
  }) {
    if (updateRequested != null) {
      return updateRequested(book);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooksLoadRequested value) loadRequested,
    required TResult Function(BooksAddRequested value) addRequested,
    required TResult Function(BooksDeleteRequested value) deleteRequested,
    required TResult Function(BooksUpdateRequested value) updateRequested,
  }) {
    return updateRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BooksLoadRequested value)? loadRequested,
    TResult? Function(BooksAddRequested value)? addRequested,
    TResult? Function(BooksDeleteRequested value)? deleteRequested,
    TResult? Function(BooksUpdateRequested value)? updateRequested,
  }) {
    return updateRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooksLoadRequested value)? loadRequested,
    TResult Function(BooksAddRequested value)? addRequested,
    TResult Function(BooksDeleteRequested value)? deleteRequested,
    TResult Function(BooksUpdateRequested value)? updateRequested,
    required TResult orElse(),
  }) {
    if (updateRequested != null) {
      return updateRequested(this);
    }
    return orElse();
  }
}

abstract class BooksUpdateRequested implements BooksEvent {
  const factory BooksUpdateRequested(final Book book) =
      _$BooksUpdateRequestedImpl;

  Book get book;

  /// Create a copy of BooksEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BooksUpdateRequestedImplCopyWith<_$BooksUpdateRequestedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BooksState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Book> books) loaded,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Book> books)? loaded,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Book> books)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooksInitial value) initial,
    required TResult Function(BooksLoading value) loading,
    required TResult Function(BooksLoaded value) loaded,
    required TResult Function(BooksError value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BooksInitial value)? initial,
    TResult? Function(BooksLoading value)? loading,
    TResult? Function(BooksLoaded value)? loaded,
    TResult? Function(BooksError value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooksInitial value)? initial,
    TResult Function(BooksLoading value)? loading,
    TResult Function(BooksLoaded value)? loaded,
    TResult Function(BooksError value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BooksStateCopyWith<$Res> {
  factory $BooksStateCopyWith(
    BooksState value,
    $Res Function(BooksState) then,
  ) = _$BooksStateCopyWithImpl<$Res, BooksState>;
}

/// @nodoc
class _$BooksStateCopyWithImpl<$Res, $Val extends BooksState>
    implements $BooksStateCopyWith<$Res> {
  _$BooksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BooksState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$BooksInitialImplCopyWith<$Res> {
  factory _$$BooksInitialImplCopyWith(
    _$BooksInitialImpl value,
    $Res Function(_$BooksInitialImpl) then,
  ) = __$$BooksInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BooksInitialImplCopyWithImpl<$Res>
    extends _$BooksStateCopyWithImpl<$Res, _$BooksInitialImpl>
    implements _$$BooksInitialImplCopyWith<$Res> {
  __$$BooksInitialImplCopyWithImpl(
    _$BooksInitialImpl _value,
    $Res Function(_$BooksInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BooksState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$BooksInitialImpl implements BooksInitial {
  const _$BooksInitialImpl();

  @override
  String toString() {
    return 'BooksState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BooksInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Book> books) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Book> books)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Book> books)? loaded,
    TResult Function(String message)? error,
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
    required TResult Function(BooksInitial value) initial,
    required TResult Function(BooksLoading value) loading,
    required TResult Function(BooksLoaded value) loaded,
    required TResult Function(BooksError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BooksInitial value)? initial,
    TResult? Function(BooksLoading value)? loading,
    TResult? Function(BooksLoaded value)? loaded,
    TResult? Function(BooksError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooksInitial value)? initial,
    TResult Function(BooksLoading value)? loading,
    TResult Function(BooksLoaded value)? loaded,
    TResult Function(BooksError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class BooksInitial implements BooksState {
  const factory BooksInitial() = _$BooksInitialImpl;
}

/// @nodoc
abstract class _$$BooksLoadingImplCopyWith<$Res> {
  factory _$$BooksLoadingImplCopyWith(
    _$BooksLoadingImpl value,
    $Res Function(_$BooksLoadingImpl) then,
  ) = __$$BooksLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BooksLoadingImplCopyWithImpl<$Res>
    extends _$BooksStateCopyWithImpl<$Res, _$BooksLoadingImpl>
    implements _$$BooksLoadingImplCopyWith<$Res> {
  __$$BooksLoadingImplCopyWithImpl(
    _$BooksLoadingImpl _value,
    $Res Function(_$BooksLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BooksState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$BooksLoadingImpl implements BooksLoading {
  const _$BooksLoadingImpl();

  @override
  String toString() {
    return 'BooksState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BooksLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Book> books) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Book> books)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Book> books)? loaded,
    TResult Function(String message)? error,
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
    required TResult Function(BooksInitial value) initial,
    required TResult Function(BooksLoading value) loading,
    required TResult Function(BooksLoaded value) loaded,
    required TResult Function(BooksError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BooksInitial value)? initial,
    TResult? Function(BooksLoading value)? loading,
    TResult? Function(BooksLoaded value)? loaded,
    TResult? Function(BooksError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooksInitial value)? initial,
    TResult Function(BooksLoading value)? loading,
    TResult Function(BooksLoaded value)? loaded,
    TResult Function(BooksError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class BooksLoading implements BooksState {
  const factory BooksLoading() = _$BooksLoadingImpl;
}

/// @nodoc
abstract class _$$BooksLoadedImplCopyWith<$Res> {
  factory _$$BooksLoadedImplCopyWith(
    _$BooksLoadedImpl value,
    $Res Function(_$BooksLoadedImpl) then,
  ) = __$$BooksLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Book> books});
}

/// @nodoc
class __$$BooksLoadedImplCopyWithImpl<$Res>
    extends _$BooksStateCopyWithImpl<$Res, _$BooksLoadedImpl>
    implements _$$BooksLoadedImplCopyWith<$Res> {
  __$$BooksLoadedImplCopyWithImpl(
    _$BooksLoadedImpl _value,
    $Res Function(_$BooksLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BooksState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? books = null}) {
    return _then(
      _$BooksLoadedImpl(
        books: null == books
            ? _value._books
            : books // ignore: cast_nullable_to_non_nullable
                  as List<Book>,
      ),
    );
  }
}

/// @nodoc

class _$BooksLoadedImpl implements BooksLoaded {
  const _$BooksLoadedImpl({required final List<Book> books}) : _books = books;

  final List<Book> _books;
  @override
  List<Book> get books {
    if (_books is EqualUnmodifiableListView) return _books;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_books);
  }

  @override
  String toString() {
    return 'BooksState.loaded(books: $books)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BooksLoadedImpl &&
            const DeepCollectionEquality().equals(other._books, _books));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_books));

  /// Create a copy of BooksState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BooksLoadedImplCopyWith<_$BooksLoadedImpl> get copyWith =>
      __$$BooksLoadedImplCopyWithImpl<_$BooksLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Book> books) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(books);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Book> books)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(books);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Book> books)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(books);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooksInitial value) initial,
    required TResult Function(BooksLoading value) loading,
    required TResult Function(BooksLoaded value) loaded,
    required TResult Function(BooksError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BooksInitial value)? initial,
    TResult? Function(BooksLoading value)? loading,
    TResult? Function(BooksLoaded value)? loaded,
    TResult? Function(BooksError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooksInitial value)? initial,
    TResult Function(BooksLoading value)? loading,
    TResult Function(BooksLoaded value)? loaded,
    TResult Function(BooksError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class BooksLoaded implements BooksState {
  const factory BooksLoaded({required final List<Book> books}) =
      _$BooksLoadedImpl;

  List<Book> get books;

  /// Create a copy of BooksState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BooksLoadedImplCopyWith<_$BooksLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BooksErrorImplCopyWith<$Res> {
  factory _$$BooksErrorImplCopyWith(
    _$BooksErrorImpl value,
    $Res Function(_$BooksErrorImpl) then,
  ) = __$$BooksErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$BooksErrorImplCopyWithImpl<$Res>
    extends _$BooksStateCopyWithImpl<$Res, _$BooksErrorImpl>
    implements _$$BooksErrorImplCopyWith<$Res> {
  __$$BooksErrorImplCopyWithImpl(
    _$BooksErrorImpl _value,
    $Res Function(_$BooksErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BooksState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$BooksErrorImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$BooksErrorImpl implements BooksError {
  const _$BooksErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'BooksState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BooksErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of BooksState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BooksErrorImplCopyWith<_$BooksErrorImpl> get copyWith =>
      __$$BooksErrorImplCopyWithImpl<_$BooksErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Book> books) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Book> books)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Book> books)? loaded,
    TResult Function(String message)? error,
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
    required TResult Function(BooksInitial value) initial,
    required TResult Function(BooksLoading value) loading,
    required TResult Function(BooksLoaded value) loaded,
    required TResult Function(BooksError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BooksInitial value)? initial,
    TResult? Function(BooksLoading value)? loading,
    TResult? Function(BooksLoaded value)? loaded,
    TResult? Function(BooksError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooksInitial value)? initial,
    TResult Function(BooksLoading value)? loading,
    TResult Function(BooksLoaded value)? loaded,
    TResult Function(BooksError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class BooksError implements BooksState {
  const factory BooksError({required final String message}) = _$BooksErrorImpl;

  String get message;

  /// Create a copy of BooksState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BooksErrorImplCopyWith<_$BooksErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
