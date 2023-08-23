import 'package:flutter/material.dart';
import 'package:movie_application/logic/provider/data_provider.dart';
import 'package:movie_application/ui/components/widgets/container_image_widget.dart';
import 'package:movie_application/ui/responsive/responsive_widget.dart';
import 'package:provider/provider.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<DataProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: TextField(
            controller: _controller,
            decoration: const InputDecoration(
                hintText: 'Search Something',
                // filled: true,
                suffixIcon: Icon(Icons.search)),
            onChanged: (value) async =>
                await prov.searchAModel(_controller.text),
          ),
        ),
      ),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: GridView.builder(
                itemCount: prov.searchedModel.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      ResponsiveWidget.getSize(context) == 'd' ? 5 : 2,
                      crossAxisSpacing: 20,
                      mainAxisExtent: 250,
                ),
                itemBuilder: (context, index) {
                  var data = prov.searchedModel[index];
                  return SizedBox(
                    height: 300,
                    child: ContainerImageWidget(
                      image: data.image!,
                      title: data.title!,
                      releaseDate: data.releaseDate!,
                      genre: data.releaseDate!,
                      id: data.id!,
                    ),
                  );
                }),
          )),
    );
  }
}
