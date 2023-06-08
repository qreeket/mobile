import 'package:hive_flutter/adapters.dart';
import 'package:mobile/generated/protos/auth.pb.dart';
import 'package:mobile/generated/protos/group.pb.dart';

/// adapter for [Account] protobuf
class AccountProtobufAdapter extends TypeAdapter<Account> {
  @override
  final int typeId;

  AccountProtobufAdapter(this.typeId);

  @override
  Account read(BinaryReader reader) {
    final length = reader.readUint32();
    final buffer = reader.readByteList(length);
    var decoded = Account.fromBuffer(buffer);
    return decoded;
  }

  @override
  void write(BinaryWriter writer, Account obj) =>
      writer.writeByteList(obj.writeToBuffer());

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(other) => other is Account && other.hashCode == typeId;
}

/// adapter for [Country] protobuf
class CountryProtobufAdapter extends TypeAdapter<Country> {
  @override
  final int typeId;

  CountryProtobufAdapter(this.typeId);

  @override
  Country read(BinaryReader reader) {
    final length = reader.readUint32();
    final buffer = reader.readByteList(length);
    var decoded = Country.fromBuffer(buffer);
    return decoded;
  }

  @override
  void write(BinaryWriter writer, Country obj) =>
      writer.writeByteList(obj.writeToBuffer());

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(other) => other is Account && other.hashCode == typeId;
}

/// adapter for [College] protobuf
class CollegeProtobufAdapter extends TypeAdapter<College> {
  @override
  final int typeId;

  CollegeProtobufAdapter(this.typeId);

  @override
  College read(BinaryReader reader) {
    final length = reader.readUint32();
    final buffer = reader.readByteList(length);
    var decoded = College.fromBuffer(buffer);
    return decoded;
  }

  @override
  void write(BinaryWriter writer, College obj) =>
      writer.writeByteList(obj.writeToBuffer());

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(other) => other is Account && other.hashCode == typeId;
}

/// adapter for [Group] protobuf
class GroupProtobufAdapter extends TypeAdapter<Group> {
  @override
  final int typeId;

  GroupProtobufAdapter(this.typeId);

  @override
  Group read(BinaryReader reader) {
    final length = reader.readUint32();
    final buffer = reader.readByteList(length);
    var decoded = Group.fromBuffer(buffer);
    return decoded;
  }

  @override
  void write(BinaryWriter writer, Group obj) =>
      writer.writeByteList(obj.writeToBuffer());

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(other) => other is Group && other.hashCode == typeId;
}

/// adapter for [Channel] protobuf
class ChannelProtobufAdapter extends TypeAdapter<Channel> {
  @override
  final int typeId;

  ChannelProtobufAdapter(this.typeId);

  @override
  Channel read(BinaryReader reader) {
    final length = reader.readUint32();
    final buffer = reader.readByteList(length);
    return Channel.fromBuffer(buffer);
  }

  @override
  void write(BinaryWriter writer, Channel obj) =>
      writer.writeByteList(obj.writeToBuffer());

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(other) => other is Channel && other.hashCode == typeId;
}

/// adapter for [GroupInvite] protobuf
class GroupInviteProtobufAdapter extends TypeAdapter<GroupInvite> {
  @override
  final int typeId;

  GroupInviteProtobufAdapter(this.typeId);

  @override
  GroupInvite read(BinaryReader reader) {
    final length = reader.readUint32();
    final buffer = reader.readByteList(length);
    return GroupInvite.fromBuffer(buffer);
  }

  @override
  void write(BinaryWriter writer, GroupInvite obj) =>
      writer.writeByteList(obj.writeToBuffer());

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(other) => other is GroupInvite && other.hashCode == typeId;
}
