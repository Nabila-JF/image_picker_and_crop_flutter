import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SelectPhotoOptionScreen extends StatelessWidget {
  final Function(ImageSource source) onTap;
  const SelectPhotoOptionScreen({Key? key, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Stack(
        alignment: AlignmentDirectional.topCenter,
        clipBehavior: Clip.none,
        children: <Widget>[
          Positioned(
            top: -35,
            child: Container(
              width: 50,
              height: 6,
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2.5),
                  color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              TextButton.icon(
                onPressed: () => onTap(ImageSource.gallery),
                icon: Icon(Icons.image),
                label: Text('Browse Gallery'),
              ),
              const SizedBox(height: 10),
              TextButton.icon(
                onPressed: () => onTap(ImageSource.camera),
                icon: Icon(Icons.camera),
                label: Text('Use a Camera'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
