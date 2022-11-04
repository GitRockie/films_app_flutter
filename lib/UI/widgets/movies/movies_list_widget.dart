import 'package:films_app_flutter/structure/controllers/movies_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MoviesListWidget extends StatelessWidget {
  const MoviesListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MoviesController  moviesController  = Get.find();
    return GetBuilder<MoviesController>(
      init: MoviesController(),
      builder: ((controller) {
        return Container(
      margin: const EdgeInsets.only(
        top: 10,
        left: 20,
      ),
      height: 400,
      width: double.infinity,
      child: Column(
        children: [
          Flexible(
            flex: 1,
            child: SizedBox(
              height: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "RECOMMENDED FOR YOU",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        print("holaMundo");
                      },
                      child: const Text("See all"))
                ],
              ),
            ),
          ),
          Flexible(
            flex: 6,
            child: SizedBox(
             
              child: Obx(() => ListView.builder(
                itemCount: moviesController.popularMovies.value.results?.length ?? 0,
                itemBuilder: ((context, index) {
                  return    Column(
                    children: [
                      Text(controller.popularMovies.value.results?[index].originalTitle ?? '', style: const TextStyle(color: Colors.white),)
                    ]
              
              );
                }))),)
              
           
          ),
          
        ],
      ),
    );
      }),
      
    );
    
    
    
  }
}
