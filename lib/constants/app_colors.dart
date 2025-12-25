//Usage ng hah:
// | CSS Concept      | Flutter Equivalent      |
// | ---------------- | ----------------------- |
// | `:root {}`       | constants files         |
// | CSS variables    | `static const`          |
// | `font-size`      | `TextStyle.fontSize`    |
// | `padding/margin` | `EdgeInsets`            |
// | `border-radius`  | `BorderRadius.circular` |
// | `theme.css`      | `ThemeData`             |

import 'package:flutter/material.dart';

class AppColors {
  // Brand
  static const Color primary = Color(0xFF111827);
  static const Color secondary = Color(0xFF6B7280);
  static const Color accent = Color(0xFF10B981);
  static const Color accentHover = Color(0xFF059669);

  // Backgrounds
  static const Color background = Color(0xFFFFFFFF);
  static const Color surface = Color(0xFFF9FAFB);
  static const Color border = Color(0xFFE5E7EB);

  // Text
  static const Color textPrimary = Color(0xFF111827);
  static const Color textSecondary = Color(0xFF6B7280);
  static const Color textInverse = Color(0xFFFFFFFF);

  // States
  static const Color success = Color(0xFF10B981);
  static const Color warning = Color(0xFFF59E0B);
  static const Color error = Color(0xFFEF4444);
}


