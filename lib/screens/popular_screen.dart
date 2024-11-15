import 'package:flutter/material.dart';
import 'package:tap_2024/network/api_popular.dart';

class PopularScreen extends StatefulWidget {
  const PopularScreen({super.key});

  @override
  State<PopularScreen> createState() => _PopularScreenState();
}

class _PopularScreenState extends State<PopularScreen> {

  ApiPopular apiPopular = ApiPopular();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('API Popular Movie'),
      ),
      body: FutureBuilder(
        future: apiPopular.getAllPopular(),
        builder: (context, snapshot){
          if(snapshot.hasData){
            return GridView.builder(
              itemCount: snapshot.data!.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2
              ),
              itemBuilder: (context, index) {
                return Text(snapshot.data![index].title);
              },
              );
          }else{
            if(snapshot.hasError){
              return Center(child: Text(snapshot.error.toString()),);
            }else{
              return const Center(child: CircularProgressIndicator(),);
            }
          }
        }
        ),
    );
  }
}