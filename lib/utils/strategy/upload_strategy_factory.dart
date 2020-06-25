import 'package:flutter_picgo/resources/pb_type_keys.dart';
import 'package:flutter_picgo/utils/strategy/github_image_upload.dart';
import 'package:flutter_picgo/utils/strategy/image_upload_strategy.dart';
import 'package:flutter_picgo/utils/strings.dart';

class UploadStrategyFactory {

  static ImageUploadStrategy getUploadStrategy(String type) {
    if (isBlank(type)) {
      throw new NullThrownError();
    }
    if (type == PBTypeKeys.github) {
      return new GithubImageUpload();
    } else if (type == PBTypeKeys.smms) {
      
    }
    return null;
  }

}