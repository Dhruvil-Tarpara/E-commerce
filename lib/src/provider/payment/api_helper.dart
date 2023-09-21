import 'dart:convert';

import 'package:ecommerce/src/provider/model/payment/customer.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class PaymentHelper {
  PaymentHelper._();
  static final PaymentHelper paymentHelper = PaymentHelper._();

  final baseUrl = "https://api.stripe.com/v1/";

  final String tokan =
      "Bearer sk_test_51NmWNhSEJPpxS0nMHaWnMHKtZmt153yLWWbzdZCw0elT096YXxwTt80UL0ISK5PVD6Q494XtASSm2rfL8DFiVIyw00yAvkGSOD";

  final String publishableToken =
      "Bearer pk_test_51NmWNhSEJPpxS0nMNMbiTYKynafdSUf0KNQHHtBuhgQlUXm5PYHWpa5IYHRK7q94hke6q3DpfNICAHUd6zgqAFcz00suHbANoN";

  final String customer = "customers";
  final String paymentMethods = "payment_methods";
  final String tokens = "tokens";
  final String sources = "sources";
  final String paymentIntents = "payment_intents";

  Future<String?> createCustomer(
      {required Address address,
      required String name,
      required String email}) async {
    var headers = {
      'Content-Type': 'application/x-www-form-urlencoded',
      'Authorization': tokan,
    };
    var data = {
      'name': name,
      'email': email,
      'address[line1]': address.line1,
      'address[line2]': address.line2 ?? "",
      'address[postal_code]': address.postalCode,
      'address[city]': address.city,
      'address[state]': address.state,
      'address[country]': address.country
    };
    try {
      Uri url = Uri.parse(baseUrl + customer);
      http.Response response = await http.post(
        url,
        headers: headers,
        body: data,
      );

      if (response.statusCode == 200) {
        Customer customer = Customer.fromJson(jsonDecode(response.body));
        return customer.id;
      } else {
        return null;
      }
    } catch (e) {
      if (kDebugMode) {
        print("Create Customer error : $e");
      }
      return null;
    }
  }

  Future<http.Response> getAllCustomer() async {
    var headers = {
      'Content-Type': 'application/x-www-form-urlencoded',
      'Authorization': tokan,
    };
    Uri url = Uri.https(baseUrl, customer);
    http.Response response = await http.post(
      url,
      headers: headers,
    );
    return response;
  }

  Future<http.Response> getCustomer({required String id}) async {
    var headers = {
      'Content-Type': 'application/x-www-form-urlencoded',
      'Authorization': tokan,
    };
    Uri url = Uri.https(baseUrl, "$customer/$id");
    http.Response response = await http.post(
      url,
      headers: headers,
    );
    return response;
  }

  Future<String?> createCardTokan({
    required String cardNumber,
    required String expMonth,
    required String expYear,
    required String cvc,
    Address? address,
    required String name,
  }) async {
    var headers = {
      'Content-Type': 'application/x-www-form-urlencoded',
      'Authorization': publishableToken,
    };
    var data = {
      'card[number]': cardNumber,
      'card[exp_month]': expMonth,
      'card[exp_year]': expYear,
      'card[cvc]': cvc,
    };
    try {
      Uri url = Uri.parse(baseUrl + tokens);
      http.Response response = await http.post(
        url,
        headers: headers,
        body: data,
      );
      if (response.statusCode == 200) {
        String id = jsonDecode(response.body)["id"];
        return id;
      } else {
        return null;
      }
    } catch (e) {
      if (kDebugMode) {
        print("Create CardTokan error : $e");
      }
      return null;
    }
  }

  Future<bool> createCard({
    required String customerId,
  }) async {
    var headers = {
      'Content-Type': 'application/x-www-form-urlencoded',
      'Authorization': tokan,
    };
    var data = {'source': 'tok_visa'};

    try {
      Uri url = Uri.parse("$baseUrl$customer/$customerId/$sources");
      http.Response response = await http.post(
        url,
        headers: headers,
        body: data,
      );
      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      if (kDebugMode) {
        print("Create Card error : $e");
      }
      return false;
    }
  }

  Future<String?> getCard({
    required String customerId,
  }) async {
    var headers = {
      'Content-Type': 'application/x-www-form-urlencoded',
      'Authorization': tokan,
    };
    //  var data = {'customer': customerId, 'type': 'card'};
    try {
      Uri url = Uri.parse("$baseUrl$customer/$customerId/$paymentMethods");
      http.Response response = await http.get(
        url,
        headers: headers,
      );
      if (response.statusCode == 200) {
        return response.body;
      } else {
        return null;
      }
    } catch (e) {
      if (kDebugMode) {
        print("Create Customer error : $e");
      }
      return null;
    }
  }

  Future<String?> getPaymentMethod({
    required String cardNumber,
    required String expMonth,
    required String expYear,
    required String cvc,
  }) async {
    var headers = {
      'Content-Type': 'application/x-www-form-urlencoded',
      'Authorization': publishableToken,
    };
    var data = {
      'type': 'card',
      'card[number]': cardNumber,
      'card[exp_month]': expMonth,
      'card[exp_year]': expYear,
      'card[cvc]': cvc,
    };
    try {
      Uri url = Uri.parse("$baseUrl$paymentMethods");
      http.Response response =
          await http.post(url, headers: headers, body: data);
      if (response.statusCode == 200) {
        String id = jsonDecode(response.body)["id"];

        return id;
      } else {
        return null;
      }
    } catch (e) {
      if (kDebugMode) {
        print("Create PaymentMethod error : $e");
      }
      return null;
    }
  }

  Future<String?> getPaymentIntents({
    required String customerId,
    required String amount,
    required String country,
    required String id,
    required String name,
  }) async {
    var headers = {
      'Content-Type': 'application/x-www-form-urlencoded',
      'Authorization': tokan,
    };
    var data = {
      'customer': customerId,
      'amount': amount,
      'currency': country,
      'payment_method': id,
      'description': name,
    };
    try {
      Uri url = Uri.parse("$baseUrl$paymentIntents");
      http.Response response =
          await http.post(url, headers: headers, body: data);
      if (response.statusCode == 200) {
        String id = jsonDecode(response.body)["id"];
        print(id);
        return id;
      } else {
        print("Create PaymentIntents error : ${response.body}");
        return null;
      }
    } catch (e) {
      if (kDebugMode) {
        print("Create PaymentIntents error : $e");
      }
      return null;
    }
  }
}
