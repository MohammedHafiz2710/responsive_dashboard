import 'dart:io';

import 'package:flutter/widgets.dart';

void main(List<String> args) {
  if (args.isEmpty) {
    debugPrint('❌ Please provide a screen name.\nUsage: dart generate_screen_structure.dart <screen_name>');
    return;
  }

  final screenName = args[0].toLowerCase();
  final basePath = 'lib/';

  final folders = [
    '$basePath/Core/utils',
    '$basePath/Core/errors',
    '$basePath/Core/widgets',
    '$basePath/Features/$screenName/data/models',
    '$basePath/Features/$screenName/data/repos',
    '$basePath/Features/$screenName/presentation/view models',
    '$basePath/Features/$screenName/presentation/views/widgets',
  ];

  for (var folder in folders) {
    final dir = Directory(folder);
    if (!dir.existsSync()) {
      dir.createSync(recursive: true);
      debugPrint('✅ Created: ${dir.path}');
    } else {
      debugPrint('⚠️ Already exists: ${dir.path}');
    }
  }

  debugPrint('\n🎉 Done setting up "$screenName" structure!');
}

// how too run
// dart generate_structure.dart <screen_name>
