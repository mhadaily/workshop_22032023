import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/providers.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
        automaticallyImplyLeading: false,
        leading: const Icon(Icons.web_asset),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.more_vert,
            ),
          )
        ],
      ),
      body: Center(
        child: Consumer(
          builder: (
            BuildContext context,
            WidgetRef ref,
            Widget? child,
          ) {
            final counter = ref.watch(counterProvider);
            return Column(
              children: [
                Text('$counter'),
              ],
            );
          },
        ),
      ),
    );
  }
}
