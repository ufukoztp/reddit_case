import 'package:get/get.dart';
import 'package:reddit_case/layers/data/models/content_model.dart';
import 'package:reddit_case/layers/domain/usecases/usecases.dart';

class Controller extends GetxController{
  UseCases useCases = UseCases();
  List<Content> content=<Content>[].obs;


   Future getContent()async{
     var result = await useCases.getContents();
     result.fold((error) {
       print("error");
     }, (data) {
       content.addAll(data.toList());
      });
     }

}