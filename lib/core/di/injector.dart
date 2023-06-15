import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile/core/di/injector.config.dart';
import 'package:mobile/core/utils/env.dart';
import 'package:mobile/features/common/data/converters/protobuf.adapter.dart';
import 'package:mobile/generated/protos/auth.pb.dart';
import 'package:mobile/generated/protos/group.pb.dart';

// This is our global ServiceLocator
GetIt sl = GetIt.instance;

// This is a helper method to register all the models and services
@injectableInit
Future<void> configureDependencies() async {
  await Hive.initFlutter();

  // adapters for Hive
  Hive.registerAdapter(GroupProtobufAdapter(0));
  Hive.registerAdapter(ChannelProtobufAdapter(1));
  Hive.registerAdapter(GroupInviteProtobufAdapter(2));
  Hive.registerAdapter(AccountProtobufAdapter(3));
  Hive.registerAdapter(CollegeProtobufAdapter(4));
  Hive.registerAdapter(CountryProtobufAdapter(5));
  // todo add other adapters

  // boxes for Hive
  await Hive.openBox<Group>(Env.kGroupsBoxName);
  await Hive.openBox<Channel>(Env.kChannelBoxName);
  await Hive.openBox<Account>(Env.kAccountsBoxName);
  await Hive.openBox<Country>(Env.kCountriesBoxName);
  await Hive.openBox<College>(Env.kCollegesBoxName);

  await Hive.openBox(Env.kMessageBoxName);
  await Hive.openBox(Env.kUsersBoxName);
  await Hive.openBox(Env.kUserGroupsBoxName);
  await Hive.openBox(Env.kUserChannelsBoxName);
  await Hive.openBox(Env.kUserMessagesBoxName);
  sl.init();
}
