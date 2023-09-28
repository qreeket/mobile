import 'package:api_utils/api_utils.dart';
import 'package:mobile/generated/protos/common.pb.dart';

abstract interface class BaseNotificationRepository {
  FutureEither<void, Empty> registerDevice();

  FutureEither<void, Empty> unregisterDevice();
}
