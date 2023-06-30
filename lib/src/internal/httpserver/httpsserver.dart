import 'dart:io';

import 'package:mason_logger/mason_logger.dart';
import 'package:path/path.dart';

class HttpsServer {
  /// Copy the html project folder from flutter assets to device directory
  /// The shelf cannot open access from flutter assets
  void verifyFiles() {
// Get the app documents directory.
// final directory = await getExternalStorageDirectory();

// Get a handle to the asset bundle.
    final bundle = rootPrefix(r'Users\SEAKER\Downloads');
// Get a list of all assets in the 'assets' folder.
    final assets = Directory(bundle).listSync();
// print all asset that will be copied
    for (final assetPath in assets) {
     Logger().warn(assetPath.path);
     //Logger().alert(assetPath.absolute.path);
    }
    final copiedAssets = <String>[];
// Copy each asset to the app documents directory.
// for (final assetPath in assetList.keys) {
//   final assetData = await bundle.load();
//   // remove the 'assets/' part from the path
//   final correctedAssetPath = assetPath.replaceFirst('assets/', 'web/');
//   final file = File('${directory!.path}/$correctedAssetPath');
//   await file.create(recursive: true);
//   await file.writeAsBytes(assetData.buffer.asUint8List());

//   // record
//   copiedAssets.add(correctedAssetPath);

// // Serve the device directory.
// final directory = await getExternalStorageDirectory();
// final handler = createStaticHandler(p.join(directory!.path, 'web'),
//     defaultDocument: 'index.html',);
// }
  }
}
