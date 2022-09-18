import 'dart:io';

void main(List<String> args) {
  print("Selamat datang di dunia wirewolf");
  var confirmName = true;
  var confirmPeran = true;
  var nama, peran;

  while (confirmName) {
    print("Masukkan nama anda terlebih dahulu");
    nama = stdin.readLineSync();

    if (nama == "") {
      print(
          "Anda belum memasukkan nama \nHarap masukkan nama sebelum masuk kedalam game");
    } else {
      confirmName = false;
      print("Selamat datang $nama");
      print("silahkan pilih peran anda");
      while (confirmPeran) {
        print("masukkan peran anda :");
        peran = stdin.readLineSync();

        if (peran == "") {
          print(
              "Anda belum memasukkan peran \nHarap masukkan peran melanjutkan");
        } else {
          switch (peran) {
            case "penyihir":
              print(
                  "selamat datang penyihir $nama sekarang cari tahu letak wirewolf");
              confirmPeran = false;

              break;
            case "guard":
              print(
                  "selamat datang guard $nama anda dapat melindungi penduduk desa");
              confirmPeran = false;
              break;
            case "wirewolf":
              print(
                  "selamat datang wirewolf $nama saatnya memangsa penduduk desa");
              confirmPeran = false;
              break;
            default:
              print("peran yang anda masukkan tidak sesuai");
              break;
          }
        }
      }
    }
  }
}
