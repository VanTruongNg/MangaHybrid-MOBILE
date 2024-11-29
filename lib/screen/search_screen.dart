import 'package:flutter/material.dart';
import 'package:webtoon_mobile/widgets/CustomAppbar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'Tìm kiếm',
      ),
      body: Center(
        child: Text('Search Screen'),
      ),
    );
  }
}