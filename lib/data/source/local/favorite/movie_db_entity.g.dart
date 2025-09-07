// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_db_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MovieDbEntityAdapter extends TypeAdapter<MovieDbEntity> {
  @override
  final int typeId = 0;

  @override
  MovieDbEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MovieDbEntity(
      id: fields[0] as int?,
      title: fields[1] as String?,
      overview: fields[2] as String?,
      voteAverage: fields[3] as double?,
      releaseDate: fields[4] as String?,
      posterPath: fields[5] as String?,
      backdropPath: fields[6] as String?,
      genreIds: (fields[7] as List).cast<int>(),
      popularity: fields[8] as double?,
      video: fields[9] as bool?,
      voteCount: fields[10] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, MovieDbEntity obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.overview)
      ..writeByte(3)
      ..write(obj.voteAverage)
      ..writeByte(4)
      ..write(obj.releaseDate)
      ..writeByte(5)
      ..write(obj.posterPath)
      ..writeByte(6)
      ..write(obj.backdropPath)
      ..writeByte(7)
      ..write(obj.genreIds)
      ..writeByte(8)
      ..write(obj.popularity)
      ..writeByte(9)
      ..write(obj.video)
      ..writeByte(10)
      ..write(obj.voteCount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieDbEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
