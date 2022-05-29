# Photon For Flutter
 
`flutter_photon_rs` is dart ffi to [`photon`](https://github.com/silvia-odwyer/photon) library, Photon is a high-performance Rust image processing library, which compiles to WebAssembly, allowing for safe, blazing-fast image processing both natively and on the web.

Supported platforms:
- Android
- IOS

## 💻 Usage
```dart
import 'package:flutter_photon_rs/flutter_photon_rs.dart';
import 'package:image_picker/image_picker.dart';

// Use ImagePicker to get image from source and read as bytes
final _picker = ImagePicker();
final image = await _picker.getImage(
  source: ImageSource.gallery,
);

if (image != null) {
  final imageBytes = await image.readAsBytes();
  
  // returns Uint8List which you can use to store, 
  // or show on Image.memory() widget
  final bytes = await Photon.process(
    bytes: imageBytes,
    filters: [
      Monochrome.grayscale(),
      Convolution.gaussianBlur(
        radius: 20,
      ),
      Transform.flipH(),
    ],
    outputFormat: OutputFormat.Jpeg,
  );
}
```
## 🌟 Features
- [x] Implement Photon rust lib all features
- [x] Fix Exif Reading (Image Rotation) Issue
- [x] Make Proper README.md with Documentation
- [ ] Publish on pub.dev
- [X] Add Support For IOS
- [ ] Write Rust And Flutter Test
- [ ] Benchmark
- [ ] Refactor Code for readability and efficiency
