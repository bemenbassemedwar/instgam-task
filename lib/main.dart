import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:instagram_task/config/router/router.dart';
import 'package:instagram_task/config/theme/light.dart';
import 'package:instagram_task/config/theme/theme_provider.dart';
import 'package:instagram_task/core/responsive/responsive_builder.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Load environment variables
  await dotenv.load(fileName: '.env');

  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(goRouterProvider);
    final themeMode = ref.watch(themeProvider);
    final lightTheme = const LightThemeExtension();

    return ResponsiveBuilder(
      figmaDesignSize: const Size(375, 812),
      child: MaterialApp.router(
      debugShowCheckedModeBanner: false,
        title: 'instagram_task',
        theme: lightTheme.theme,
        themeMode: themeMode,
        routerConfig: router,
      ),
    );
  }
}
