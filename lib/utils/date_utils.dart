import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  DateTime toVNTime() {
    return add(const Duration(hours: 7));
  }

  String toMessageTime() {
    final vnTime = toVNTime();
    return DateFormat('HH:mm').format(vnTime);
  }

  String toMessageDate() {
    final vnTime = toVNTime();
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final yesterday = today.subtract(const Duration(days: 1));
    final messageDate = DateTime(vnTime.year, vnTime.month, vnTime.day);

    if (messageDate == today) {
      return 'Hôm nay';
    } else if (messageDate == yesterday) {
      return 'Hôm qua';
    } else {
      return DateFormat('dd/MM/yyyy').format(vnTime);
    }
  }

  bool isSameDay(DateTime other) {
    final date1 = toVNTime();
    final date2 = other.toVNTime();
    return date1.year == date2.year &&
        date1.month == date2.month &&
        date1.day == date2.day;
  }
}
