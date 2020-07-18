import 'package:ecommerceapp/cart/base_cart.dart';
import 'package:ecommerceapp/payment/base_payment.dart';
import 'package:ecommerceapp/user/customer.dart';

class BaseOrder{

 BaseCart cart;
 Customer customer;
 BasePayment payment;

 BaseOrder(this.cart, this.customer, this.payment);

 BaseOrder.fromJson( Map<String,dynamic> jsonObject ){
  this.customer = Customer.fromJson(jsonObject['customer']);
  this.cart = BaseCart.fromJson(jsonObject['cart']);
  this.payment = BasePayment.fromJson(jsonObject['payment']);
 }

 // ignore: missing_return
 double total(){

 }

}
