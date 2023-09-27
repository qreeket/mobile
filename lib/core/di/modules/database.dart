import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile/core/utils/env.dart';
import 'package:mobile/generated/protos/auth.pb.dart';
import 'package:mobile/generated/protos/group.pb.dart';

@module
abstract class LocalDatabaseModule {
  @lazySingleton
  Box<Group> get groupsBox => Hive.box<Group>(Env.kGroupsBoxName);

  @lazySingleton
  Box<Channel> get channelsBox => Hive.box<Channel>(Env.kChannelBoxName);

  @lazySingleton
  Box<Account> get accountsBox => Hive.box<Account>(Env.kAccountsBoxName);

  @lazySingleton
  Box<Country> get countriesBox => Hive.box<Country>(Env.kCountriesBoxName);

  @lazySingleton
  Box<College> get collegesBox => Hive.box<College>(Env.kCollegesBoxName);
}
