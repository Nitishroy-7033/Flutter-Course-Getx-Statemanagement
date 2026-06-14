import 'package:get/get.dart';
import 'package:getx_learning/Catelog.dart';
import 'package:getx_learning/pages/home_page.dart';
import 'package:getx_learning/projects/navigation/about_page.dart';
import 'package:getx_learning/projects/navigation/contact_us.dart';
import 'package:getx_learning/projects/navigation/home.dart';

var pages = [
  GetPage(name: "/home", page: () => HomePage()),
  GetPage(
    name: "/",
    page: () => Catelog(),
    transition: Transition.circularReveal,
  ),
  GetPage(name: "/brand", page: () => BrandPage()),
  GetPage(
    name: "/about-us",
    page: () => AboutUsPage(),
    transition: Transition.leftToRight,
  ),
  GetPage(
    name: "/contact-us",
    page: () => ContactUs(),
    transition: Transition.topLevel,
  ),
];
