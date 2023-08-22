import 'package:flutter/material.dart';
import 'package:movie_application/logic/provider/data_provider.dart';
import 'package:movie_application/logic/service/api_service.dart';
import 'package:movie_application/ui/components/widgets/container_image_widget.dart';
import 'package:provider/provider.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<DataProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search Something',
              // filled: true,
              suffixIcon: Icon(Icons.search)
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                itemCount: 30,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
