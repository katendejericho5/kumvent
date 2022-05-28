import 'package:flutter/material.dart';

class ViewEventCenterPicture extends StatefulWidget {
  final String imageUrl;
  
  const ViewEventCenterPicture({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  State<ViewEventCenterPicture> createState() => _ViewEventCenterPictureState();
}

class _ViewEventCenterPictureState extends State<ViewEventCenterPicture> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
        body: SizedBox(
          height: size.height,
          child: Image.asset(
            widget.imageUrl,
            filterQuality: FilterQuality.high,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
