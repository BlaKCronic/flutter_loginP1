import 'package:flutter/material.dart';
import 'package:tap_2024/network/api_popular.dart';

class PopularScreen extends StatefulWidget {
  const PopularScreen({super.key});

  @override
  State<PopularScreen> createState() => _PopularScreenState();
}

class _PopularScreenState extends State<PopularScreen> {

  ApiPopular apiPopular = new ApiPopular();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}