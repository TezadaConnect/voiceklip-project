import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:voiceklip_app/providers/response_provider.dart';

class LoadingScreenCommon extends StatelessWidget {
  final Widget child;
  const LoadingScreenCommon({Key? key, required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child, // Display the current screen
        if (Provider.of<ResponseProvider>(context)
            .loading) // Conditionally render loading indicator
          Opacity(
            opacity: 0.4, // Adjust the opacity value as needed
            child: Container(
              color: Colors.black,
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
          ),
      ],
    );
  }
}
