import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';

Future<void> showNoConnectionToast(String message, BuildContext context) async {
  await context.showInfoBar(
    content: Text(message),
    icon: const Icon(Icons.wifi_off_rounded),
    indicatorColor: Colors.orange,
  );
}

Future<void> showErrorToast(String message, BuildContext context) async {
  await context.showErrorBar(content: Text(message));
}
