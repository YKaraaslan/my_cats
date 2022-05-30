import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'view/home_view.dart';
import 'view/home_viewmodel.dart';

part 'core/init/theme/light_theme.dart';

void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top]);
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeViewModel(), lazy: true),
      ],
      child: const MyCatsApp(),
    ),
  );
}

class MyCatsApp extends StatefulWidget {
  const MyCatsApp({Key? key}) : super(key: key);

  @override
  State<MyCatsApp> createState() => _MyCatsAppState();
}

class _MyCatsAppState extends State<MyCatsApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: appLightTheme(context),
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
    );
  }
}
