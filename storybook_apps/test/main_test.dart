import 'package:flutter/material.dart';
import 'package:storybook_apps/main.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import 'package:storybook_flutter_test/storybook_flutter_test.dart';

void main() => testStorybook(
      storybook(true),
      layouts: [
        (
          device: Devices.ios.iPhone13,
          orientation: Orientation.portrait,
          isFrameVisible: true,
        ),
        (
          device: Devices.ios.iPhone13Mini,
          orientation: Orientation.landscape,
          isFrameVisible: true,
        ),
      ],
    );
