import 'package:example/routing/routing.dart';
import 'package:fhds/fhds.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () {
                navigateToDesignFile(context);
              },
              child: const FHDSText('Design File'),
            ),
            const SizedBox(
              width: 16.0,
            ),
            OutlinedButton(
              onPressed: () {
                navigateToDesignSystem(context);
              },
              child: const FHDSText('Design System'),
            ),
          ],
        ),
      ),
    );
  }
}
