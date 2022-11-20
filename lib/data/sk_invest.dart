class SyaratKetentuan {
  static final data = <Sk>[
    Sk(text: "Kewajiban serta tanggung jawab apapun.\n", isHeader: true),
    Sk(text: "Force Majeure\n", isHeader: true),
    Sk(
      text:
          "Apabila terjadi gangguan teknis atau bertepatan dengan hal diluar kemampuan, maka akan ada kesepakatan semua pihak.\n",
      isHeader: false,
    ),
    Sk(
      text:
          "Apabila terjadi gangguan teknis atau bertepatan dengan hal diluar kemampuan, maka akan ada kesepakatan semua pihak.\n",
      isHeader: false,
    ),
    Sk(
      text:
          "Apabila terjadi musibah pada salah satu pihak, maka pihak tersebut harus segera memberitahukan kepada pihak lainnya secara lisan maupun secara tertulis, selambat-lambatnya dalam waktu 3x24 jam sejak terjadinya Force Majeure.\n",
      isHeader: false,
    ),
    Sk(text: "Ganti Rugi\n", isHeader: true),
    Sk(
      text:
          "Apabila Pihak Pertama atau Pihak Ketiga melakukan kesalahan yang meliputi faktor kesengajaan, kelalaian, dan pelanggaran dalam pengelolaan yang menimbulkan kerugian, maka Pihak Kedua berhak mendapatkan ganti rugi.\n",
      isHeader: false,
    ),
    Sk(
      text:
          "Besaran ganti rugi ditentukan berdasarkan kesepakatan semua pihak di dalam perjanjian ini.\n",
      isHeader: false,
    ),
    Sk(
        text:
            "Apabila terjadi kerugian pada saat penjualan, peternak akan mendapatkan dana kompensasi sebesar Rp500.000 selama proyek yang sudah berjalan sebelumnya.\n",
        isHeader: false),
    Sk(
      text:
          "Contoh kerugian yang terjadi diantaranya yaitu gagal jual atau penurunan harga pasar yang mengakibatkan kerugian.\n",
      isHeader: false,
    ),
    Sk(text: "Risiko Investasi\n", isHeader: true),
    Sk(
      text:
          "Risiko investasi yaitu gagal jual, penurunan harga pasar, dan produktivitas ternak kurang optimal yang mengakibatkan penurunan harga jual.\n",
      isHeader: false,
    ),
    Sk(
      text:
          "Risiko investasi yang dialami Pihak Kedua berupa kerugian modal sebesar selisih harga beli unit dengan besar kerugian.\n",
      isHeader: false,
    ),
    Sk(
      text:
          "Prosentase nilai risiko ditentukan oleh jumlah kepemilikan saldo investasi per satu ekor ternak.\n",
      isHeader: false,
    ),
    Sk(
      text:
          "Kerugian yang disebabkan kelalaian Pihak Ketiga dalam merawat ternak maka Pihak Kedua dibebaskan dari tanggung jawab risiko.\n",
      isHeader: false,
    ),
    Sk(
      text:
          "Risiko kematian ternak, kehilangan dan sakit yang disebabkan bukan karena kelalaian Pihak Pertama dan Pihak Ketiga akan ditanggung oleh Pihak Pertama, Pihak Kedua, dan Pihak Ketiga sesuai dengan prosentase kepemilikan saham.\n",
      isHeader: false,
    ),
    Sk(
      text: "Ketentuan–ketentuan Lain\n",
      isHeader: true,
    ),
    Sk(
      text:
          "Hal-hal yang tidak atau belum cukup diatur dalam perjanjian ini, akan ditetapkan kemudian dalam kesepakatan addendum atau tambahan dari pihak yang bersangkutan.\n",
      isHeader: false,
    ),
    Sk(
      text:
          "Semua ketentuan tambahan, atau perubahan dalam akta perjanjian ini hanya dapat dianggap sah dan mengikat apabila dibuat secara tertulis dan ditandatangani/memberikan tanda sepakat pada aplikasi oleh pihak yang bersangkutan.\n",
      isHeader: false,
    ),
    Sk(
      text: "Penutup\n",
      isHeader: true,
    ),
    Sk(
      text:
          "Setiap pihak sepakat untuk saling mempercayai dan bersikap jujur selama masa kerjasama dan berjalannya proyek.\n",
      isHeader: false,
    ),
    Sk(
      text:
          'Apabila terjadi perselisihan mengenai kerjasama ini, setiap pihak sepakat dan setuju untuk menyelesaikan dengan cara musyawarah untuk mencapai mufakat.',
      isHeader: false,
    ),
    Sk(
      text:
          "Apabila terjadi penyimpangan dari ketentuan-ketentuan dalam perjanjian kerjasama yang dilakukan oleh salah satu pihak yang disengaja, maka pihak lain yang merasa dirugikan berhak mengajukan musyawarah untuk mencapai mufakat.\n",
      isHeader: false,
    ),
    Sk(
      text:
          "Apabila dalam penyelesaian masalah belum terjadi kata sepakat maka pihak yang bersangkutan akan membawa permasalahan tersebut melalui jalan lain seperti mediasi, negosiasi, konsiliasi, arbitrase.\n",
      isHeader: false,
    ),
    Sk(
      text:
          "Demikian surat perjanjian ini dibuat oleh kedua belah pihak dengan penuh kesadaran dan tanpa unsur paksaan.\n",
      isHeader: false,
    ),
  ];
}

class Sk {
  String text;
  bool isHeader;

  Sk({required this.text, required this.isHeader});
}
