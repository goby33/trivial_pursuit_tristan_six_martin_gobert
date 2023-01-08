import 'package:image_picker/image_picker.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/config/api_response.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/data/sources/picker_photo_tools.dart';

class PickerPhotoRepositoryImpl {
  static XFile? _imageFileList;
  static PickerPhotoTools? _pickerPhotoTools;
  static PickerPhotoRepositoryImpl? _instancePickerPhotoRepositoryImpl;

  PickerPhotoRepositoryImpl._();

  static PickerPhotoRepositoryImpl getInstance() {
    _pickerPhotoTools ??= PickerPhotoTools.getInstance();
    _imageFileList = null;
    _instancePickerPhotoRepositoryImpl ??= PickerPhotoRepositoryImpl._();
    return _instancePickerPhotoRepositoryImpl!;
  }

  Future<ApiResponse<String>> getImage({
    required ImageSource source,
  }) async {
    try {
      XFile? responsefile =
          await _pickerPhotoTools!.getImageFromSource(source: source);
      if (responsefile != null) {
        _imageFileList = responsefile;
        return SuccessResponse(1.toString(), responsefile.path);
      } else {
        return FailResponse(0.toString(), failure: "response null");
      }
    } catch (e) {
      return FailResponse(0.toString(), failure: e.toString());
    }
  }
}
