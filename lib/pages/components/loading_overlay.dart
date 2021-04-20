import 'package:flutter/material.dart';

class LoadingOverlay extends StatelessWidget {
  final Widget child;
  final bool? isLoading;

  const LoadingOverlay({
    Key? key,
    this.isLoading,
    required this.child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (isLoading!) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
    return child;
  }
}
