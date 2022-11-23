// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pokemon_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonModel _$PokemonModelFromJson(Map<String, dynamic> json) {
  return _PokemonModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonModel {
  String get name => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  int? get weight => throw _privateConstructorUsedError;
  Sprites? get sprites => throw _privateConstructorUsedError;
  List<Type> get types => throw _privateConstructorUsedError;
  List<StatElement> get stats => throw _privateConstructorUsedError;
  bool get isFavourite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonModelCopyWith<PokemonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonModelCopyWith<$Res> {
  factory $PokemonModelCopyWith(
          PokemonModel value, $Res Function(PokemonModel) then) =
      _$PokemonModelCopyWithImpl<$Res, PokemonModel>;
  @useResult
  $Res call(
      {String name,
      String? url,
      int? height,
      int? id,
      int? weight,
      Sprites? sprites,
      List<Type> types,
      List<StatElement> stats,
      bool isFavourite});

  $SpritesCopyWith<$Res>? get sprites;
}

/// @nodoc
class _$PokemonModelCopyWithImpl<$Res, $Val extends PokemonModel>
    implements $PokemonModelCopyWith<$Res> {
  _$PokemonModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = freezed,
    Object? height = freezed,
    Object? id = freezed,
    Object? weight = freezed,
    Object? sprites = freezed,
    Object? types = null,
    Object? stats = null,
    Object? isFavourite = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      sprites: freezed == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as Sprites?,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<Type>,
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<StatElement>,
      isFavourite: null == isFavourite
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SpritesCopyWith<$Res>? get sprites {
    if (_value.sprites == null) {
      return null;
    }

    return $SpritesCopyWith<$Res>(_value.sprites!, (value) {
      return _then(_value.copyWith(sprites: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PokemonModelCopyWith<$Res>
    implements $PokemonModelCopyWith<$Res> {
  factory _$$_PokemonModelCopyWith(
          _$_PokemonModel value, $Res Function(_$_PokemonModel) then) =
      __$$_PokemonModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String? url,
      int? height,
      int? id,
      int? weight,
      Sprites? sprites,
      List<Type> types,
      List<StatElement> stats,
      bool isFavourite});

  @override
  $SpritesCopyWith<$Res>? get sprites;
}

/// @nodoc
class __$$_PokemonModelCopyWithImpl<$Res>
    extends _$PokemonModelCopyWithImpl<$Res, _$_PokemonModel>
    implements _$$_PokemonModelCopyWith<$Res> {
  __$$_PokemonModelCopyWithImpl(
      _$_PokemonModel _value, $Res Function(_$_PokemonModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = freezed,
    Object? height = freezed,
    Object? id = freezed,
    Object? weight = freezed,
    Object? sprites = freezed,
    Object? types = null,
    Object? stats = null,
    Object? isFavourite = null,
  }) {
    return _then(_$_PokemonModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      sprites: freezed == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as Sprites?,
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<Type>,
      stats: null == stats
          ? _value._stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<StatElement>,
      isFavourite: null == isFavourite
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonModel extends _PokemonModel {
  const _$_PokemonModel(
      {required this.name,
      required this.url,
      required this.height,
      required this.id,
      required this.weight,
      required this.sprites,
      final List<Type> types = const [],
      final List<StatElement> stats = const [],
      this.isFavourite = false})
      : _types = types,
        _stats = stats,
        super._();

  factory _$_PokemonModel.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonModelFromJson(json);

  @override
  final String name;
  @override
  final String? url;
  @override
  final int? height;
  @override
  final int? id;
  @override
  final int? weight;
  @override
  final Sprites? sprites;
  final List<Type> _types;
  @override
  @JsonKey()
  List<Type> get types {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  final List<StatElement> _stats;
  @override
  @JsonKey()
  List<StatElement> get stats {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stats);
  }

  @override
  @JsonKey()
  final bool isFavourite;

  @override
  String toString() {
    return 'PokemonModel(name: $name, url: $url, height: $height, id: $id, weight: $weight, sprites: $sprites, types: $types, stats: $stats, isFavourite: $isFavourite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.sprites, sprites) || other.sprites == sprites) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            const DeepCollectionEquality().equals(other._stats, _stats) &&
            (identical(other.isFavourite, isFavourite) ||
                other.isFavourite == isFavourite));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      url,
      height,
      id,
      weight,
      sprites,
      const DeepCollectionEquality().hash(_types),
      const DeepCollectionEquality().hash(_stats),
      isFavourite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonModelCopyWith<_$_PokemonModel> get copyWith =>
      __$$_PokemonModelCopyWithImpl<_$_PokemonModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonModelToJson(
      this,
    );
  }
}

abstract class _PokemonModel extends PokemonModel {
  const factory _PokemonModel(
      {required final String name,
      required final String? url,
      required final int? height,
      required final int? id,
      required final int? weight,
      required final Sprites? sprites,
      final List<Type> types,
      final List<StatElement> stats,
      final bool isFavourite}) = _$_PokemonModel;
  const _PokemonModel._() : super._();

  factory _PokemonModel.fromJson(Map<String, dynamic> json) =
      _$_PokemonModel.fromJson;

  @override
  String get name;
  @override
  String? get url;
  @override
  int? get height;
  @override
  int? get id;
  @override
  int? get weight;
  @override
  Sprites? get sprites;
  @override
  List<Type> get types;
  @override
  List<StatElement> get stats;
  @override
  bool get isFavourite;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonModelCopyWith<_$_PokemonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Sprites _$SpritesFromJson(Map<String, dynamic> json) {
  return _Sprites.fromJson(json);
}

/// @nodoc
mixin _$Sprites {
  Other get other => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpritesCopyWith<Sprites> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpritesCopyWith<$Res> {
  factory $SpritesCopyWith(Sprites value, $Res Function(Sprites) then) =
      _$SpritesCopyWithImpl<$Res, Sprites>;
  @useResult
  $Res call({Other other});

  $OtherCopyWith<$Res> get other;
}

/// @nodoc
class _$SpritesCopyWithImpl<$Res, $Val extends Sprites>
    implements $SpritesCopyWith<$Res> {
  _$SpritesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? other = null,
  }) {
    return _then(_value.copyWith(
      other: null == other
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as Other,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OtherCopyWith<$Res> get other {
    return $OtherCopyWith<$Res>(_value.other, (value) {
      return _then(_value.copyWith(other: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SpritesCopyWith<$Res> implements $SpritesCopyWith<$Res> {
  factory _$$_SpritesCopyWith(
          _$_Sprites value, $Res Function(_$_Sprites) then) =
      __$$_SpritesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Other other});

  @override
  $OtherCopyWith<$Res> get other;
}

/// @nodoc
class __$$_SpritesCopyWithImpl<$Res>
    extends _$SpritesCopyWithImpl<$Res, _$_Sprites>
    implements _$$_SpritesCopyWith<$Res> {
  __$$_SpritesCopyWithImpl(_$_Sprites _value, $Res Function(_$_Sprites) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? other = null,
  }) {
    return _then(_$_Sprites(
      other: null == other
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as Other,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Sprites implements _Sprites {
  const _$_Sprites({required this.other});

  factory _$_Sprites.fromJson(Map<String, dynamic> json) =>
      _$$_SpritesFromJson(json);

  @override
  final Other other;

  @override
  String toString() {
    return 'Sprites(other: $other)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Sprites &&
            (identical(other.other, this.other) || other.other == this.other));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, other);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SpritesCopyWith<_$_Sprites> get copyWith =>
      __$$_SpritesCopyWithImpl<_$_Sprites>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpritesToJson(
      this,
    );
  }
}

abstract class _Sprites implements Sprites {
  const factory _Sprites({required final Other other}) = _$_Sprites;

  factory _Sprites.fromJson(Map<String, dynamic> json) = _$_Sprites.fromJson;

  @override
  Other get other;
  @override
  @JsonKey(ignore: true)
  _$$_SpritesCopyWith<_$_Sprites> get copyWith =>
      throw _privateConstructorUsedError;
}

Other _$OtherFromJson(Map<String, dynamic> json) {
  return _Other.fromJson(json);
}

/// @nodoc
mixin _$Other {
  @JsonKey(name: 'official-artwork')
  OfficialArtwork get officialArtwork => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OtherCopyWith<Other> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtherCopyWith<$Res> {
  factory $OtherCopyWith(Other value, $Res Function(Other) then) =
      _$OtherCopyWithImpl<$Res, Other>;
  @useResult
  $Res call(
      {@JsonKey(name: 'official-artwork') OfficialArtwork officialArtwork});

  $OfficialArtworkCopyWith<$Res> get officialArtwork;
}

/// @nodoc
class _$OtherCopyWithImpl<$Res, $Val extends Other>
    implements $OtherCopyWith<$Res> {
  _$OtherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? officialArtwork = null,
  }) {
    return _then(_value.copyWith(
      officialArtwork: null == officialArtwork
          ? _value.officialArtwork
          : officialArtwork // ignore: cast_nullable_to_non_nullable
              as OfficialArtwork,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OfficialArtworkCopyWith<$Res> get officialArtwork {
    return $OfficialArtworkCopyWith<$Res>(_value.officialArtwork, (value) {
      return _then(_value.copyWith(officialArtwork: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OtherCopyWith<$Res> implements $OtherCopyWith<$Res> {
  factory _$$_OtherCopyWith(_$_Other value, $Res Function(_$_Other) then) =
      __$$_OtherCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'official-artwork') OfficialArtwork officialArtwork});

  @override
  $OfficialArtworkCopyWith<$Res> get officialArtwork;
}

/// @nodoc
class __$$_OtherCopyWithImpl<$Res> extends _$OtherCopyWithImpl<$Res, _$_Other>
    implements _$$_OtherCopyWith<$Res> {
  __$$_OtherCopyWithImpl(_$_Other _value, $Res Function(_$_Other) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? officialArtwork = null,
  }) {
    return _then(_$_Other(
      officialArtwork: null == officialArtwork
          ? _value.officialArtwork
          : officialArtwork // ignore: cast_nullable_to_non_nullable
              as OfficialArtwork,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Other implements _Other {
  const _$_Other(
      {@JsonKey(name: 'official-artwork') required this.officialArtwork});

  factory _$_Other.fromJson(Map<String, dynamic> json) =>
      _$$_OtherFromJson(json);

  @override
  @JsonKey(name: 'official-artwork')
  final OfficialArtwork officialArtwork;

  @override
  String toString() {
    return 'Other(officialArtwork: $officialArtwork)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Other &&
            (identical(other.officialArtwork, officialArtwork) ||
                other.officialArtwork == officialArtwork));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, officialArtwork);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OtherCopyWith<_$_Other> get copyWith =>
      __$$_OtherCopyWithImpl<_$_Other>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OtherToJson(
      this,
    );
  }
}

abstract class _Other implements Other {
  const factory _Other(
      {@JsonKey(name: 'official-artwork')
          required final OfficialArtwork officialArtwork}) = _$_Other;

  factory _Other.fromJson(Map<String, dynamic> json) = _$_Other.fromJson;

  @override
  @JsonKey(name: 'official-artwork')
  OfficialArtwork get officialArtwork;
  @override
  @JsonKey(ignore: true)
  _$$_OtherCopyWith<_$_Other> get copyWith =>
      throw _privateConstructorUsedError;
}

OfficialArtwork _$OfficialArtworkFromJson(Map<String, dynamic> json) {
  return _OfficialArtwork.fromJson(json);
}

/// @nodoc
mixin _$OfficialArtwork {
  @JsonKey(name: 'front_default')
  String get frontDefault => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfficialArtworkCopyWith<OfficialArtwork> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfficialArtworkCopyWith<$Res> {
  factory $OfficialArtworkCopyWith(
          OfficialArtwork value, $Res Function(OfficialArtwork) then) =
      _$OfficialArtworkCopyWithImpl<$Res, OfficialArtwork>;
  @useResult
  $Res call({@JsonKey(name: 'front_default') String frontDefault});
}

/// @nodoc
class _$OfficialArtworkCopyWithImpl<$Res, $Val extends OfficialArtwork>
    implements $OfficialArtworkCopyWith<$Res> {
  _$OfficialArtworkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = null,
  }) {
    return _then(_value.copyWith(
      frontDefault: null == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OfficialArtworkCopyWith<$Res>
    implements $OfficialArtworkCopyWith<$Res> {
  factory _$$_OfficialArtworkCopyWith(
          _$_OfficialArtwork value, $Res Function(_$_OfficialArtwork) then) =
      __$$_OfficialArtworkCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'front_default') String frontDefault});
}

/// @nodoc
class __$$_OfficialArtworkCopyWithImpl<$Res>
    extends _$OfficialArtworkCopyWithImpl<$Res, _$_OfficialArtwork>
    implements _$$_OfficialArtworkCopyWith<$Res> {
  __$$_OfficialArtworkCopyWithImpl(
      _$_OfficialArtwork _value, $Res Function(_$_OfficialArtwork) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = null,
  }) {
    return _then(_$_OfficialArtwork(
      frontDefault: null == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OfficialArtwork implements _OfficialArtwork {
  const _$_OfficialArtwork(
      {@JsonKey(name: 'front_default') required this.frontDefault});

  factory _$_OfficialArtwork.fromJson(Map<String, dynamic> json) =>
      _$$_OfficialArtworkFromJson(json);

  @override
  @JsonKey(name: 'front_default')
  final String frontDefault;

  @override
  String toString() {
    return 'OfficialArtwork(frontDefault: $frontDefault)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OfficialArtwork &&
            (identical(other.frontDefault, frontDefault) ||
                other.frontDefault == frontDefault));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, frontDefault);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OfficialArtworkCopyWith<_$_OfficialArtwork> get copyWith =>
      __$$_OfficialArtworkCopyWithImpl<_$_OfficialArtwork>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OfficialArtworkToJson(
      this,
    );
  }
}

abstract class _OfficialArtwork implements OfficialArtwork {
  const factory _OfficialArtwork(
      {@JsonKey(name: 'front_default')
          required final String frontDefault}) = _$_OfficialArtwork;

  factory _OfficialArtwork.fromJson(Map<String, dynamic> json) =
      _$_OfficialArtwork.fromJson;

  @override
  @JsonKey(name: 'front_default')
  String get frontDefault;
  @override
  @JsonKey(ignore: true)
  _$$_OfficialArtworkCopyWith<_$_OfficialArtwork> get copyWith =>
      throw _privateConstructorUsedError;
}

StatElement _$StatElementFromJson(Map<String, dynamic> json) {
  return _StatElement.fromJson(json);
}

/// @nodoc
mixin _$StatElement {
  @JsonKey(name: 'base_stat')
  int get baseStat => throw _privateConstructorUsedError;
  TypeClass get stat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatElementCopyWith<StatElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatElementCopyWith<$Res> {
  factory $StatElementCopyWith(
          StatElement value, $Res Function(StatElement) then) =
      _$StatElementCopyWithImpl<$Res, StatElement>;
  @useResult
  $Res call({@JsonKey(name: 'base_stat') int baseStat, TypeClass stat});

  $TypeClassCopyWith<$Res> get stat;
}

/// @nodoc
class _$StatElementCopyWithImpl<$Res, $Val extends StatElement>
    implements $StatElementCopyWith<$Res> {
  _$StatElementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseStat = null,
    Object? stat = null,
  }) {
    return _then(_value.copyWith(
      baseStat: null == baseStat
          ? _value.baseStat
          : baseStat // ignore: cast_nullable_to_non_nullable
              as int,
      stat: null == stat
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as TypeClass,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TypeClassCopyWith<$Res> get stat {
    return $TypeClassCopyWith<$Res>(_value.stat, (value) {
      return _then(_value.copyWith(stat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StatElementCopyWith<$Res>
    implements $StatElementCopyWith<$Res> {
  factory _$$_StatElementCopyWith(
          _$_StatElement value, $Res Function(_$_StatElement) then) =
      __$$_StatElementCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'base_stat') int baseStat, TypeClass stat});

  @override
  $TypeClassCopyWith<$Res> get stat;
}

/// @nodoc
class __$$_StatElementCopyWithImpl<$Res>
    extends _$StatElementCopyWithImpl<$Res, _$_StatElement>
    implements _$$_StatElementCopyWith<$Res> {
  __$$_StatElementCopyWithImpl(
      _$_StatElement _value, $Res Function(_$_StatElement) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseStat = null,
    Object? stat = null,
  }) {
    return _then(_$_StatElement(
      baseStat: null == baseStat
          ? _value.baseStat
          : baseStat // ignore: cast_nullable_to_non_nullable
              as int,
      stat: null == stat
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as TypeClass,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StatElement implements _StatElement {
  const _$_StatElement(
      {@JsonKey(name: 'base_stat') required this.baseStat, required this.stat});

  factory _$_StatElement.fromJson(Map<String, dynamic> json) =>
      _$$_StatElementFromJson(json);

  @override
  @JsonKey(name: 'base_stat')
  final int baseStat;
  @override
  final TypeClass stat;

  @override
  String toString() {
    return 'StatElement(baseStat: $baseStat, stat: $stat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StatElement &&
            (identical(other.baseStat, baseStat) ||
                other.baseStat == baseStat) &&
            (identical(other.stat, stat) || other.stat == stat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, baseStat, stat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatElementCopyWith<_$_StatElement> get copyWith =>
      __$$_StatElementCopyWithImpl<_$_StatElement>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatElementToJson(
      this,
    );
  }
}

abstract class _StatElement implements StatElement {
  const factory _StatElement(
      {@JsonKey(name: 'base_stat') required final int baseStat,
      required final TypeClass stat}) = _$_StatElement;

  factory _StatElement.fromJson(Map<String, dynamic> json) =
      _$_StatElement.fromJson;

  @override
  @JsonKey(name: 'base_stat')
  int get baseStat;
  @override
  TypeClass get stat;
  @override
  @JsonKey(ignore: true)
  _$$_StatElementCopyWith<_$_StatElement> get copyWith =>
      throw _privateConstructorUsedError;
}

Type _$TypeFromJson(Map<String, dynamic> json) {
  return _Type.fromJson(json);
}

/// @nodoc
mixin _$Type {
  int get slot => throw _privateConstructorUsedError;
  TypeClass get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TypeCopyWith<Type> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeCopyWith<$Res> {
  factory $TypeCopyWith(Type value, $Res Function(Type) then) =
      _$TypeCopyWithImpl<$Res, Type>;
  @useResult
  $Res call({int slot, TypeClass type});

  $TypeClassCopyWith<$Res> get type;
}

/// @nodoc
class _$TypeCopyWithImpl<$Res, $Val extends Type>
    implements $TypeCopyWith<$Res> {
  _$TypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeClass,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TypeClassCopyWith<$Res> get type {
    return $TypeClassCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TypeCopyWith<$Res> implements $TypeCopyWith<$Res> {
  factory _$$_TypeCopyWith(_$_Type value, $Res Function(_$_Type) then) =
      __$$_TypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int slot, TypeClass type});

  @override
  $TypeClassCopyWith<$Res> get type;
}

/// @nodoc
class __$$_TypeCopyWithImpl<$Res> extends _$TypeCopyWithImpl<$Res, _$_Type>
    implements _$$_TypeCopyWith<$Res> {
  __$$_TypeCopyWithImpl(_$_Type _value, $Res Function(_$_Type) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? type = null,
  }) {
    return _then(_$_Type(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeClass,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Type implements _Type {
  const _$_Type({required this.slot, required this.type});

  factory _$_Type.fromJson(Map<String, dynamic> json) => _$$_TypeFromJson(json);

  @override
  final int slot;
  @override
  final TypeClass type;

  @override
  String toString() {
    return 'Type(slot: $slot, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Type &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, slot, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TypeCopyWith<_$_Type> get copyWith =>
      __$$_TypeCopyWithImpl<_$_Type>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TypeToJson(
      this,
    );
  }
}

abstract class _Type implements Type {
  const factory _Type(
      {required final int slot, required final TypeClass type}) = _$_Type;

  factory _Type.fromJson(Map<String, dynamic> json) = _$_Type.fromJson;

  @override
  int get slot;
  @override
  TypeClass get type;
  @override
  @JsonKey(ignore: true)
  _$$_TypeCopyWith<_$_Type> get copyWith => throw _privateConstructorUsedError;
}

TypeClass _$TypeClassFromJson(Map<String, dynamic> json) {
  return _TypeClass.fromJson(json);
}

/// @nodoc
mixin _$TypeClass {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TypeClassCopyWith<TypeClass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeClassCopyWith<$Res> {
  factory $TypeClassCopyWith(TypeClass value, $Res Function(TypeClass) then) =
      _$TypeClassCopyWithImpl<$Res, TypeClass>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$TypeClassCopyWithImpl<$Res, $Val extends TypeClass>
    implements $TypeClassCopyWith<$Res> {
  _$TypeClassCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TypeClassCopyWith<$Res> implements $TypeClassCopyWith<$Res> {
  factory _$$_TypeClassCopyWith(
          _$_TypeClass value, $Res Function(_$_TypeClass) then) =
      __$$_TypeClassCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_TypeClassCopyWithImpl<$Res>
    extends _$TypeClassCopyWithImpl<$Res, _$_TypeClass>
    implements _$$_TypeClassCopyWith<$Res> {
  __$$_TypeClassCopyWithImpl(
      _$_TypeClass _value, $Res Function(_$_TypeClass) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_TypeClass(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TypeClass implements _TypeClass {
  const _$_TypeClass({required this.name});

  factory _$_TypeClass.fromJson(Map<String, dynamic> json) =>
      _$$_TypeClassFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'TypeClass(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TypeClass &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TypeClassCopyWith<_$_TypeClass> get copyWith =>
      __$$_TypeClassCopyWithImpl<_$_TypeClass>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TypeClassToJson(
      this,
    );
  }
}

abstract class _TypeClass implements TypeClass {
  const factory _TypeClass({required final String name}) = _$_TypeClass;

  factory _TypeClass.fromJson(Map<String, dynamic> json) =
      _$_TypeClass.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_TypeClassCopyWith<_$_TypeClass> get copyWith =>
      throw _privateConstructorUsedError;
}
