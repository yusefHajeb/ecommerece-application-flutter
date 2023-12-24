import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomCardImage extends StatelessWidget {
  String urlImage;
  Size size;
  CustomCardImage(this.urlImage, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRect(
          clipBehavior: Clip.antiAlias,
          child: Container(
            width: 300,
            height: size.height / 4.3,
            margin: const EdgeInsets.only(
              left: 20,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              child: InteractiveViewer(
                clipBehavior: Clip.hardEdge,
                child: Hero(
                  tag: urlImage,
                  child: CachedNetworkImage(
                    placeholder: (context, _) =>
                        const CircularProgressIndicator(),
                    imageUrl: urlImage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
