import 'package:flutter/material.dart';

PopupMenuItem customPopMenuItem({
  required final String title,
  required final void Function() onTap,
}) {
  return PopupMenuItem(
    onTap: onTap,
    child: Text(title),
  );
}
