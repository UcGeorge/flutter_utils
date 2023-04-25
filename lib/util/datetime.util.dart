import 'package:flutter_animate/flutter_animate.dart';
import 'package:intl/intl.dart';

extension DTUtil on DateTime {
  String formatDate() {
    final diff = DateTime.now().difference(this);

    if (diff < 1.days) {
      return "Today";
    } else if (diff < 2.days) {
      return "Yesterday";
    } else if (diff < 7.days) {
      return "Last ${DateFormat('EEEE').format(this)}";
    } else {
      return DateFormat('yMMMMd').format(this);
    }
  }

  String formatDate2() => DateFormat('MMMM d, y').format(this);

  String formatTime() => DateFormat.jm().format(this);
}
