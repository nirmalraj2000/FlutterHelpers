import 'package:email_validator/email_validator.dart';

class CoommonValidator {
  static String? Function(String? value) plainTextValidator = (String? value) {
    if (value == "") {
      return "Enter the Data";
    }
    return null;
  };

  static String? Function(String? value) phoneNumberValidator =
      (String? value) {
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

  static String? Function(String? value) ageValidator = (String? value) {
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

  static String? Function(String? value) pincodeValidator = (String? value) {
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

  static String? Function(String? value) nonMandatoryPhoneNumberValidator =
      (String? value) {
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

  static String? Function(String? value) emailValidator = (String? value) {
    if (value?.isNotEmpty == true) {
      if (EmailValidator.validate(value!) == true) {
        return null;
      } else {
        return "Enter a valid email ID";
      }
    }
    return "Enter the email ID";
  };

  static String? Function(String? value) nonMandatoryEmailValidator =
      (String? value) {
    if (value?.isNotEmpty == true) {
      if (EmailValidator.validate(value!) == true) {
        return null;
      } else {
        return "Enter a valid email ID";
      }
    }
    return null;
  };
}
