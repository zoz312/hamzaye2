import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hamzawyapp/features/auth/dashboard/modul/food/model/rebo/databaseRepo.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';

part 'newfood_state.dart';

class NewfoodCubit extends Cubit<NewfoodState> {
  NewfoodCubit() : super(NewfoodInitial());
  TextEditingController namecontroller = TextEditingController();
  TextEditingController desccontroller = TextEditingController();
  TextEditingController avacontrooler = TextEditingController();
  late XFile? image;
  poicknewfood() async {
    final ImagePicker picker = ImagePicker();
// Pick an image.
    image = await picker.pickImage(source: ImageSource.gallery);
  }

  poicktake() async {
    final ImagePicker picker = ImagePicker();
    image = await picker.pickImage(source: ImageSource.camera);
  }

  addnewfood() async {
    databaserepo db = databaserepo();
    db.initDB();
    db.insertfood(namecontroller.text, desccontroller.text, 0,
        int.parse(avacontrooler.text), await image!.readAsBytes());
  }
}
