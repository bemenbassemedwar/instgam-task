import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:instagram_task/config/theme/theme_provider.dart';

class ThemeBuilder extends ConsumerWidget {
  final Widget Function(ThemeMode mode) builder;
  const ThemeBuilder({super.key, required this.builder});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return builder(ref.watch(themeProvider));
  }
}
