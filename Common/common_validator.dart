import 'package:email_validator/email_validator.dart';

class CoommonValidator {
  static String? Function(String? value) plainTextValidator() {
    return (String? value) {
      if (value == "") {
        return "Enter the Data";
      }
      return null;
    };
  }

  static String? Function(String? value) phoneNumberValidator() {
    return (String? value) {
      if (value == "") {
        return "Enter the Phone Number";
      } else if (value!.length < 10 || value.length > 10) {
        return "Enter a Valid Phone Number";
      }

      try {
        int.parse(value);
      } catch (e) {
        return "Invalid Phone Number";
      }
      return null;
    };
  }

  static String? Function(String? value) ageValidator() {
    return (String? value) {
      if (value == "") {
        return "Enter the Age";
      }

      try {
        int.parse(value!);
      } catch (e) {
        return "Invalid Age";
      }
      return null;
    };
  }

  static String? Function(String? value) pincodeValidator() {
    return (String? value) {
      if (value == "") {
        return "Enter the Pincode";
      } else if (value!.length < 6) {
        return "Invalid Pincode";
      }

      try {
        int.parse(value);
      } catch (e) {
        return "Invalid Pincode";
      }
      return null;
    };
  }

  static String? Function(String? value) nonMandatoryPhoneNumberValidator() {
    return (String? value) {
      if (value == "") {
        return null;
      } else if (value!.length < 10 || value.length > 10) {
        return "Enter a Valid Phone Number";
      }

      try {
        int.parse(value);
      } catch (e) {
        return "Invalid Phone Number";
      }
      return null;
    };
  }

  static String? Function(String? value) emailValidator() {
    return (String? value) {
      if (!EmailValidator.validate(value!)) {
        return "Enter a Valid Email";
      }
      return null;
    };
  }

  static String? Function(String? value) nonMandatoryEmailValidator() {
    return (String? value) {
      if (value == "") {
        return null;
      } else if (!EmailValidator.validate(value!)) {
        return "Enter a Valid Email";
      }
      return null;
    };
  }
}
