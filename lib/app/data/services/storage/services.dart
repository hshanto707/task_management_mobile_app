import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:task_management_mobile_app/app/core/utils/keys.dart';

class StorageService extends GetxService{
  late GetStorage _box;

  Future<StorageService> init() async {
    _box = GetStorage();

    await _box.writeIfNull(taskKey, []);

    return this;
  }

  void write(String key, dynamic value) async {
    await _box.write(key, value);
  }
}