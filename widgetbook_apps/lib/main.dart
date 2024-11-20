import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'main.directories.g.dart';

void main() {
  runApp(const MainApp());
}

@widgetbook.App()
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      // The [directories] variable does not exist yet,
      // it will be generated in the next step
      directories: directories,
      addons: [
        TextScaleAddon(
          scales: [1.0, 2.0],
        ),
        LocalizationAddon(
          locales: [
            const Locale('en', 'US'),
          ],
          localizationsDelegates: [
            DefaultWidgetsLocalizations.delegate,
            DefaultMaterialLocalizations.delegate,
          ],
        ),
        DeviceFrameAddon(
          devices: [
            Devices.ios.iPhoneSE,
            Devices.ios.iPhone13,
          ],
        ),
        GridAddon(),
      ],
    );
  }
}

@widgetbook.UseCase(name: 'Default', type: Text)
Widget buildCoolButtonUseCase(BuildContext context) {
  return const Text('Hello World!');
}

@widgetbook.UseCase(name: 'Default', type: Scaffold)
Widget buildCoolButtonUseCase2(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text(
        'Scaffold',
      ),
      backgroundColor: Colors.blue,
    ),
    body: SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: List.generate(
          5,
          (_) => const Padding(
            padding: EdgeInsets.all(8),
            child: Text('Hello World!'),
          ),
        ),
      ),
    ),
    floatingActionButton: FloatingActionButton(
      heroTag: 'FAB',
      onPressed: () {},
      child: const Icon(
        Icons.add,
      ),
    ),
  );
}
