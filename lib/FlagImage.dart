import 'package:flutter/material.dart';

class FlagImage extends StatelessWidget {
  final String url;
  final double width;

  const FlagImage({super.key, required this.url, this.width = 40});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      width: width,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;
        return SizedBox(
          width: width,
          height: width * 0.6,
          child: const Center(
            child: SizedBox(
              width: 16,
              height: 16,
              child: CircularProgressIndicator(strokeWidth: 2),
            ),
          ),
        );
      },
      errorBuilder: (context, error, stackTrace) {
        return Icon(Icons.flag_outlined, size: width * 0.75);
      },
    );
  }
}
