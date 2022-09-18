import 'dart:io';

void main(List<String> args) {
  print("Apakah anda ingin memulai aplikasi? y/n");
  var confirm = stdin.readLineSync();

  confirm == "y"
      ? print("Anda memulai aplikasi")
      : confirm == "n"
          ? print("Anda tidak memulai aplikasi")
          : print("input yang anda masukkan salah");
}
