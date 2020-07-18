import 'package:ecommerceapp/order/base_order.dart';
import 'package:ecommerceapp/order/order_controller.dart';
import 'package:ecommerceapp/product/base_product.dart';
import 'package:ecommerceapp/product/product_controller.dart';
import 'package:ecommerceapp/user/user.dart';

import 'address.dart';

class Customer extends User {
  Address shippingAddress;
  Address billingAddress;

  List<BaseProduct> watchList;
  List<BaseOrder> orders;

  Customer(
      String id,
      String firstName,
      String lastName,
      String email,
      String phone,
      String gender,
      Address shippingAddress,
      Address billingAddress,
      List<BaseProduct> watchList,
      List<BaseOrder> orders)
      : super(id, firstName, lastName, email, phone, gender) {
    this.shippingAddress = shippingAddress;
    this.billingAddress = billingAddress;
    this.orders = orders;
    this.watchList = watchList;
  }

  Customer.fromJson(Map<String, dynamic> jsonObject)
      : super(
      jsonObject['id'],
      jsonObject['first_name'],
      jsonObject['last_name'],
      jsonObject['email'],
      jsonObject['phone'],
      jsonObject['gender'] ) {
    this.shippingAddress = Address.fromJson(jsonObject['shipping_address']);
    this.billingAddress = Address.fromJson(jsonObject['billing_address']);
    this.watchList = ProductController.toProducts(jsonObject['watch_list']);
    this.orders = OrderController.toOrders(jsonObject['orders']);
  }
}


