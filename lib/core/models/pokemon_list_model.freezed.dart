// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pokemon_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonListModel _$PokemonListModelFromJson(Map<String, dynamic> json) {
  return _PokemonListModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonListModel {
  int get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  List<PokemonModel> get pokemons => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonListModelCopyWith<PokemonListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonListModelCopyWith<$Res> {
  factory $PokemonListModelCopyWith(
          PokemonListModel value, $Res Function(PokemonListModel) then) =
      _$PokemonListModelCopyWithImpl<$Res, PokemonListModel>;
  @useResult
  $Res call(
      {int count, String? next, String? previous, List<PokemonModel> pokemons});
}

/// @nodoc
class _$PokemonListModelCopyWithImpl<$Res, $Val extends PokemonListModel>
    implements $PokemonListModelCopyWith<$Res> {
  _$PokemonListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? pokemons = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      pokemons: null == pokemons
          ? _value.pokemons
          : pokemons // ignore: cast_nullable_to_non_nullable
              as List<PokemonModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PokemonListModelCopyWith<$Res>
    implements $PokemonListModelCopyWith<$Res> {
  factory _$$_PokemonListModelCopyWith(
          _$_PokemonListModel value, $Res Function(_$_PokemonListModel) then) =
      __$$_PokemonListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int count, String? next, String? previous, List<PokemonModel> pokemons});
}

/// @nodoc
class __$$_PokemonListModelCopyWithImpl<$Res>
    extends _$PokemonListModelCopyWithImpl<$Res, _$_PokemonListModel>
    implements _$$_PokemonListModelCopyWith<$Res> {
  __$$_PokemonListModelCopyWithImpl(
      _$_PokemonListModel _value, $Res Function(_$_PokemonListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? pokemons = null,
  }) {
    return _then(_$_PokemonListModel(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      pokemons: null == pokemons
          ? _value._pokemons
          : pokemons // ignore: cast_nullable_to_non_nullable
              as List<PokemonModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonListModel implements _PokemonListModel {
  const _$_PokemonListModel(
      {required this.count,
      this.next,
      this.previous,
      required final List<PokemonModel> pokemons})
      : _pokemons = pokemons;

  factory _$_PokemonListModel.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonListModelFromJson(json);

  @override
  final int count;
  @override
  final String? next;
  @override
  final String? previous;
  final List<PokemonModel> _pokemons;
  @override
  List<PokemonModel> get pokemons {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pokemons);
  }

  @override
  String toString() {
    return 'PokemonListModel(count: $count, next: $next, previous: $previous, pokemons: $pokemons)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonListModel &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            const DeepCollectionEquality().equals(other._pokemons, _pokemons));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, next, previous,
      const DeepCollectionEquality().hash(_pokemons));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonListModelCopyWith<_$_PokemonListModel> get copyWith =>
      __$$_PokemonListModelCopyWithImpl<_$_PokemonListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonListModelToJson(
      this,
    );
  }
}

abstract class _PokemonListModel implements PokemonListModel {
  const factory _PokemonListModel(
      {required final int count,
      final String? next,
      final String? previous,
      required final List<PokemonModel> pokemons}) = _$_PokemonListModel;

  factory _PokemonListModel.fromJson(Map<String, dynamic> json) =
      _$_PokemonListModel.fromJson;

  @override
  int get count;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  List<PokemonModel> get pokemons;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonListModelCopyWith<_$_PokemonListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
