import 'package:intl/intl.dart';

class TFormatter {
  // formate date 
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date);
  }
// formate currency 
  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount);
  }
// formate phone number 
  static String formatPhoneNumber(String phoneNumber) {
    if (phoneNumber.length == 10) {
      return '(${phoneNumber.substring(0, 3)})${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6)}';
    } else if (phoneNumber.length == 11) {
      return '(${phoneNumber.substring(0, 4)})${phoneNumber.substring(4, 7)} ${phoneNumber.substring(7)}';
    }
    return phoneNumber;
  }
  // not fully tested 
  static String internationalFormatePhoneNumber(String phoneNumber){
    
  }
}
