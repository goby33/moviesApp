// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'discover_movies_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DiscoverMoviesModels _$DiscoverMoviesModelsFromJson(Map<String, dynamic> json) {
  return _DiscoverMoviesModels.fromJson(json);
}

/// @nodoc
mixin _$DiscoverMoviesModels {
  num get page => throw _privateConstructorUsedError;
  List<ResultsDiscoverMovies> get results => throw _privateConstructorUsedError;
  num get total_pages => throw _privateConstructorUsedError;
  num get total_results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiscoverMoviesModelsCopyWith<DiscoverMoviesModels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscoverMoviesModelsCopyWith<$Res> {
  factory $DiscoverMoviesModelsCopyWith(DiscoverMoviesModels value,
          $Res Function(DiscoverMoviesModels) then) =
      _$DiscoverMoviesModelsCopyWithImpl<$Res>;
  $Res call(
      {num page,
      List<ResultsDiscoverMovies> results,
      num total_pages,
      num total_results});
}

/// @nodoc
class _$DiscoverMoviesModelsCopyWithImpl<$Res>
    implements $DiscoverMoviesModelsCopyWith<$Res> {
  _$DiscoverMoviesModelsCopyWithImpl(this._value, this._then);

  final DiscoverMoviesModels _value;
  // ignore: unused_field
  final $Res Function(DiscoverMoviesModels) _then;

  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
    Object? total_pages = freezed,
    Object? total_results = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as num,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ResultsDiscoverMovies>,
      total_pages: total_pages == freezed
          ? _value.total_pages
          : total_pages // ignore: cast_nullable_to_non_nullable
              as num,
      total_results: total_results == freezed
          ? _value.total_results
          : total_results // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
abstract class _$$_DiscoverMoviesModelsCopyWith<$Res>
    implements $DiscoverMoviesModelsCopyWith<$Res> {
  factory _$$_DiscoverMoviesModelsCopyWith(_$_DiscoverMoviesModels value,
          $Res Function(_$_DiscoverMoviesModels) then) =
      __$$_DiscoverMoviesModelsCopyWithImpl<$Res>;
  @override
  $Res call(
      {num page,
      List<ResultsDiscoverMovies> results,
      num total_pages,
      num total_results});
}

/// @nodoc
class __$$_DiscoverMoviesModelsCopyWithImpl<$Res>
    extends _$DiscoverMoviesModelsCopyWithImpl<$Res>
    implements _$$_DiscoverMoviesModelsCopyWith<$Res> {
  __$$_DiscoverMoviesModelsCopyWithImpl(_$_DiscoverMoviesModels _value,
      $Res Function(_$_DiscoverMoviesModels) _then)
      : super(_value, (v) => _then(v as _$_DiscoverMoviesModels));

  @override
  _$_DiscoverMoviesModels get _value => super._value as _$_DiscoverMoviesModels;

  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
    Object? total_pages = freezed,
    Object? total_results = freezed,
  }) {
    return _then(_$_DiscoverMoviesModels(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as num,
      results: results == freezed
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ResultsDiscoverMovies>,
      total_pages: total_pages == freezed
          ? _value.total_pages
          : total_pages // ignore: cast_nullable_to_non_nullable
              as num,
      total_results: total_results == freezed
          ? _value.total_results
          : total_results // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DiscoverMoviesModels implements _DiscoverMoviesModels {
  const _$_DiscoverMoviesModels(
      {required this.page,
      required final List<ResultsDiscoverMovies> results,
      required this.total_pages,
      required this.total_results})
      : _results = results;

  factory _$_DiscoverMoviesModels.fromJson(Map<String, dynamic> json) =>
      _$$_DiscoverMoviesModelsFromJson(json);

  @override
  final num page;
  final List<ResultsDiscoverMovies> _results;
  @override
  List<ResultsDiscoverMovies> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  final num total_pages;
  @override
  final num total_results;

  @override
  String toString() {
    return 'DiscoverMoviesModels(page: $page, results: $results, total_pages: $total_pages, total_results: $total_results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DiscoverMoviesModels &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            const DeepCollectionEquality()
                .equals(other.total_pages, total_pages) &&
            const DeepCollectionEquality()
                .equals(other.total_results, total_results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(_results),
      const DeepCollectionEquality().hash(total_pages),
      const DeepCollectionEquality().hash(total_results));

  @JsonKey(ignore: true)
  @override
  _$$_DiscoverMoviesModelsCopyWith<_$_DiscoverMoviesModels> get copyWith =>
      __$$_DiscoverMoviesModelsCopyWithImpl<_$_DiscoverMoviesModels>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DiscoverMoviesModelsToJson(
      this,
    );
  }
}

abstract class _DiscoverMoviesModels implements DiscoverMoviesModels {
  const factory _DiscoverMoviesModels(
      {required final num page,
      required final List<ResultsDiscoverMovies> results,
      required final num total_pages,
      required final num total_results}) = _$_DiscoverMoviesModels;

  factory _DiscoverMoviesModels.fromJson(Map<String, dynamic> json) =
      _$_DiscoverMoviesModels.fromJson;

  @override
  num get page;
  @override
  List<ResultsDiscoverMovies> get results;
  @override
  num get total_pages;
  @override
  num get total_results;
  @override
  @JsonKey(ignore: true)
  _$$_DiscoverMoviesModelsCopyWith<_$_DiscoverMoviesModels> get copyWith =>
      throw _privateConstructorUsedError;
}

ResultsDiscoverMovies _$ResultsDiscoverMoviesFromJson(
    Map<String, dynamic> json) {
  return _ResultsDiscoverMovies.fromJson(json);
}

/// @nodoc
mixin _$ResultsDiscoverMovies {
  bool get adult => throw _privateConstructorUsedError;
  String get backdrop_path => throw _privateConstructorUsedError;
  List<num> get genre_ids => throw _privateConstructorUsedError;
  num get id => throw _privateConstructorUsedError;
  String get original_language => throw _privateConstructorUsedError;
  String get original_title => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  num get popularity => throw _privateConstructorUsedError;
  String get poster_path => throw _privateConstructorUsedError;
  String get release_date => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get video => throw _privateConstructorUsedError;
  num get vote_average => throw _privateConstructorUsedError;
  num get vote_count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultsDiscoverMoviesCopyWith<ResultsDiscoverMovies> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultsDiscoverMoviesCopyWith<$Res> {
  factory $ResultsDiscoverMoviesCopyWith(ResultsDiscoverMovies value,
          $Res Function(ResultsDiscoverMovies) then) =
      _$ResultsDiscoverMoviesCopyWithImpl<$Res>;
  $Res call(
      {bool adult,
      String backdrop_path,
      List<num> genre_ids,
      num id,
      String original_language,
      String original_title,
      String overview,
      num popularity,
      String poster_path,
      String release_date,
      String title,
      bool video,
      num vote_average,
      num vote_count});
}

/// @nodoc
class _$ResultsDiscoverMoviesCopyWithImpl<$Res>
    implements $ResultsDiscoverMoviesCopyWith<$Res> {
  _$ResultsDiscoverMoviesCopyWithImpl(this._value, this._then);

  final ResultsDiscoverMovies _value;
  // ignore: unused_field
  final $Res Function(ResultsDiscoverMovies) _then;

  @override
  $Res call({
    Object? adult = freezed,
    Object? backdrop_path = freezed,
    Object? genre_ids = freezed,
    Object? id = freezed,
    Object? original_language = freezed,
    Object? original_title = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? poster_path = freezed,
    Object? release_date = freezed,
    Object? title = freezed,
    Object? video = freezed,
    Object? vote_average = freezed,
    Object? vote_count = freezed,
  }) {
    return _then(_value.copyWith(
      adult: adult == freezed
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      backdrop_path: backdrop_path == freezed
          ? _value.backdrop_path
          : backdrop_path // ignore: cast_nullable_to_non_nullable
              as String,
      genre_ids: genre_ids == freezed
          ? _value.genre_ids
          : genre_ids // ignore: cast_nullable_to_non_nullable
              as List<num>,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num,
      original_language: original_language == freezed
          ? _value.original_language
          : original_language // ignore: cast_nullable_to_non_nullable
              as String,
      original_title: original_title == freezed
          ? _value.original_title
          : original_title // ignore: cast_nullable_to_non_nullable
              as String,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as num,
      poster_path: poster_path == freezed
          ? _value.poster_path
          : poster_path // ignore: cast_nullable_to_non_nullable
              as String,
      release_date: release_date == freezed
          ? _value.release_date
          : release_date // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool,
      vote_average: vote_average == freezed
          ? _value.vote_average
          : vote_average // ignore: cast_nullable_to_non_nullable
              as num,
      vote_count: vote_count == freezed
          ? _value.vote_count
          : vote_count // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
abstract class _$$_ResultsDiscoverMoviesCopyWith<$Res>
    implements $ResultsDiscoverMoviesCopyWith<$Res> {
  factory _$$_ResultsDiscoverMoviesCopyWith(_$_ResultsDiscoverMovies value,
          $Res Function(_$_ResultsDiscoverMovies) then) =
      __$$_ResultsDiscoverMoviesCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool adult,
      String backdrop_path,
      List<num> genre_ids,
      num id,
      String original_language,
      String original_title,
      String overview,
      num popularity,
      String poster_path,
      String release_date,
      String title,
      bool video,
      num vote_average,
      num vote_count});
}

/// @nodoc
class __$$_ResultsDiscoverMoviesCopyWithImpl<$Res>
    extends _$ResultsDiscoverMoviesCopyWithImpl<$Res>
    implements _$$_ResultsDiscoverMoviesCopyWith<$Res> {
  __$$_ResultsDiscoverMoviesCopyWithImpl(_$_ResultsDiscoverMovies _value,
      $Res Function(_$_ResultsDiscoverMovies) _then)
      : super(_value, (v) => _then(v as _$_ResultsDiscoverMovies));

  @override
  _$_ResultsDiscoverMovies get _value =>
      super._value as _$_ResultsDiscoverMovies;

  @override
  $Res call({
    Object? adult = freezed,
    Object? backdrop_path = freezed,
    Object? genre_ids = freezed,
    Object? id = freezed,
    Object? original_language = freezed,
    Object? original_title = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? poster_path = freezed,
    Object? release_date = freezed,
    Object? title = freezed,
    Object? video = freezed,
    Object? vote_average = freezed,
    Object? vote_count = freezed,
  }) {
    return _then(_$_ResultsDiscoverMovies(
      adult: adult == freezed
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      backdrop_path: backdrop_path == freezed
          ? _value.backdrop_path
          : backdrop_path // ignore: cast_nullable_to_non_nullable
              as String,
      genre_ids: genre_ids == freezed
          ? _value._genre_ids
          : genre_ids // ignore: cast_nullable_to_non_nullable
              as List<num>,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num,
      original_language: original_language == freezed
          ? _value.original_language
          : original_language // ignore: cast_nullable_to_non_nullable
              as String,
      original_title: original_title == freezed
          ? _value.original_title
          : original_title // ignore: cast_nullable_to_non_nullable
              as String,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as num,
      poster_path: poster_path == freezed
          ? _value.poster_path
          : poster_path // ignore: cast_nullable_to_non_nullable
              as String,
      release_date: release_date == freezed
          ? _value.release_date
          : release_date // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool,
      vote_average: vote_average == freezed
          ? _value.vote_average
          : vote_average // ignore: cast_nullable_to_non_nullable
              as num,
      vote_count: vote_count == freezed
          ? _value.vote_count
          : vote_count // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResultsDiscoverMovies implements _ResultsDiscoverMovies {
  const _$_ResultsDiscoverMovies(
      {required this.adult,
      required this.backdrop_path,
      required final List<num> genre_ids,
      required this.id,
      required this.original_language,
      required this.original_title,
      required this.overview,
      required this.popularity,
      required this.poster_path,
      required this.release_date,
      required this.title,
      required this.video,
      required this.vote_average,
      required this.vote_count})
      : _genre_ids = genre_ids;

  factory _$_ResultsDiscoverMovies.fromJson(Map<String, dynamic> json) =>
      _$$_ResultsDiscoverMoviesFromJson(json);

  @override
  final bool adult;
  @override
  final String backdrop_path;
  final List<num> _genre_ids;
  @override
  List<num> get genre_ids {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genre_ids);
  }

  @override
  final num id;
  @override
  final String original_language;
  @override
  final String original_title;
  @override
  final String overview;
  @override
  final num popularity;
  @override
  final String poster_path;
  @override
  final String release_date;
  @override
  final String title;
  @override
  final bool video;
  @override
  final num vote_average;
  @override
  final num vote_count;

  @override
  String toString() {
    return 'ResultsDiscoverMovies(adult: $adult, backdrop_path: $backdrop_path, genre_ids: $genre_ids, id: $id, original_language: $original_language, original_title: $original_title, overview: $overview, popularity: $popularity, poster_path: $poster_path, release_date: $release_date, title: $title, video: $video, vote_average: $vote_average, vote_count: $vote_count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResultsDiscoverMovies &&
            const DeepCollectionEquality().equals(other.adult, adult) &&
            const DeepCollectionEquality()
                .equals(other.backdrop_path, backdrop_path) &&
            const DeepCollectionEquality()
                .equals(other._genre_ids, _genre_ids) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.original_language, original_language) &&
            const DeepCollectionEquality()
                .equals(other.original_title, original_title) &&
            const DeepCollectionEquality().equals(other.overview, overview) &&
            const DeepCollectionEquality()
                .equals(other.popularity, popularity) &&
            const DeepCollectionEquality()
                .equals(other.poster_path, poster_path) &&
            const DeepCollectionEquality()
                .equals(other.release_date, release_date) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.video, video) &&
            const DeepCollectionEquality()
                .equals(other.vote_average, vote_average) &&
            const DeepCollectionEquality()
                .equals(other.vote_count, vote_count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(adult),
      const DeepCollectionEquality().hash(backdrop_path),
      const DeepCollectionEquality().hash(_genre_ids),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(original_language),
      const DeepCollectionEquality().hash(original_title),
      const DeepCollectionEquality().hash(overview),
      const DeepCollectionEquality().hash(popularity),
      const DeepCollectionEquality().hash(poster_path),
      const DeepCollectionEquality().hash(release_date),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(video),
      const DeepCollectionEquality().hash(vote_average),
      const DeepCollectionEquality().hash(vote_count));

  @JsonKey(ignore: true)
  @override
  _$$_ResultsDiscoverMoviesCopyWith<_$_ResultsDiscoverMovies> get copyWith =>
      __$$_ResultsDiscoverMoviesCopyWithImpl<_$_ResultsDiscoverMovies>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultsDiscoverMoviesToJson(
      this,
    );
  }
}

abstract class _ResultsDiscoverMovies implements ResultsDiscoverMovies {
  const factory _ResultsDiscoverMovies(
      {required final bool adult,
      required final String backdrop_path,
      required final List<num> genre_ids,
      required final num id,
      required final String original_language,
      required final String original_title,
      required final String overview,
      required final num popularity,
      required final String poster_path,
      required final String release_date,
      required final String title,
      required final bool video,
      required final num vote_average,
      required final num vote_count}) = _$_ResultsDiscoverMovies;

  factory _ResultsDiscoverMovies.fromJson(Map<String, dynamic> json) =
      _$_ResultsDiscoverMovies.fromJson;

  @override
  bool get adult;
  @override
  String get backdrop_path;
  @override
  List<num> get genre_ids;
  @override
  num get id;
  @override
  String get original_language;
  @override
  String get original_title;
  @override
  String get overview;
  @override
  num get popularity;
  @override
  String get poster_path;
  @override
  String get release_date;
  @override
  String get title;
  @override
  bool get video;
  @override
  num get vote_average;
  @override
  num get vote_count;
  @override
  @JsonKey(ignore: true)
  _$$_ResultsDiscoverMoviesCopyWith<_$_ResultsDiscoverMovies> get copyWith =>
      throw _privateConstructorUsedError;
}
