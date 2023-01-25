import 'dart:io';

import 'package:flutter_application_1/202/custom_exception.dart';
import 'package:url_launcher/url_launcher.dart';

abstract class IFileDownload {
  bool? downloadItem(fileItem? fileItem);

  Future<void> toShare(String path) async {
    await launch(path);
  }
}



class FileDownload extends IFileDownload with ShareMixin{
  @override
  bool? downloadItem(fileItem? fileItem) {
    if (fileItem == null) throw FileDownloadException(); 
      print('a');
    return true;
  }
  
  
}

class fileItem {
  final String name;
  final File file;

  fileItem(this.name, this.file);
}

mixin ShareMixin on IFileDownload{
  void toShowFile() {
    
  }
}