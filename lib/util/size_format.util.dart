import 'dart:math' as math;

class SizeFormatUtil {
  static String formatBytes(double bytes, [String delim = ""]) {
    if (bytes < 1) {
      return "0 B";
    }

    const units = ["B", "KB", "MB", "GB", "TB", "PB", "EB", "ZB", "YB"];
    final digitGroups = (math.log(bytes) / math.log(1024)).floor();

    if (digitGroups < 1) {
      return "${bytes.toStringAsFixed(1)}B";
    }

    final index =
        digitGroups > units.length - 1 ? units.length - 1 : digitGroups;
    return "${(bytes / (math.pow(1024, index))).toStringAsFixed(1)}$delim${units[index]}";
  }

  static double convertToBytes(double value, SizeUnit unit) {
    switch (unit) {
      case SizeUnit.b:
        return value * (math.pow(1024, 0));
      case SizeUnit.kb:
        return value * (math.pow(1024, 1));
      case SizeUnit.mb:
        return value * (math.pow(1024, 2));
      case SizeUnit.gb:
        return value * (math.pow(1024, 3));
      case SizeUnit.tb:
        return value * (math.pow(1024, 4));
      case SizeUnit.pb:
        return value * (math.pow(1024, 5));
      case SizeUnit.eb:
        return value * (math.pow(1024, 6));
      case SizeUnit.zb:
        return value * (math.pow(1024, 7));
      case SizeUnit.yb:
        return value * (math.pow(1024, 8));
      default:
        throw ArgumentError("Invalid SizeUnit value");
    }
  }
}

enum SizeUnit {
  b,
  kb,
  mb,
  gb,
  tb,
  pb,
  eb,
  zb,
  yb,
}
