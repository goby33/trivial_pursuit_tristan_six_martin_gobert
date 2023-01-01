import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PicturePage extends StatefulWidget {
  PicturePage({Key? key}) : super(key: key);

  @override
  _PicturePageState createState() {
    return _PicturePageState();
  }
}

class _PicturePageState extends State<PicturePage> {

  Future getImage() async {
    var image = await ImagePicker().pickImage(source: ImageSource.camera);
    if (image != null) {
      print(image.path);
    }
  }
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Picture'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            ElevatedButton(onPressed: getImage, child: Text("Take a picture"))
          ],
        ),
      ),
    );
  }
}