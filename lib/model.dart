import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class model {
  static String folderpath = "";

  permissioncheck() async {
    var status = await Permission.storage.status;

    if (status.isDenied) {
      Map<Permission, PermissionStatus> status = await [
        Permission.storage,
      ].request();
    }
    if (status.isGranted) {
      createFolder().then((value) {
        model.folderpath = value;
      });
    }
  }

  Future<String> createFolder() async {
    final foldername = "demo";
    final path = Directory((Platform.isAndroid
                ? await getExternalStorageDirectory() //FOR ANDROID
                : await getApplicationSupportDirectory() //FOR IOS
            )!
            .path +
        '/$foldername');
    var status = await Permission.storage.status;
    if (!status.isGranted) {
      await Permission.storage.request();
    }
    if ((await path.exists())) {
      return path.path;
    } else {
      path.create();
      return path.path;
    }
  }
}
// _createFolder() async {
//   final folderName = "ipl";
//   final path = Directory("storage/emulated/0/DCIM/$folderName");
//   if ((await path.exists())) {
//     // TODO:
//     print("exist");
//   } else {
//     // TODO:
//     print("not exist");
//     path.create();
//   }
//
//   model.folderpath = path.path;
// }
