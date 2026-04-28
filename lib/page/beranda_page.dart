import 'package:cherry_toast/cherry_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutterlatihan_2/data.dart';
import 'package:flutterlatihan_2/page/profile_page.dart';
import 'package:simple_alert_dialog/simple_alert_dialog.dart';

class BerandaPage extends StatefulWidget {
  const BerandaPage({super.key});

  @override
  State<BerandaPage> createState() => _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController namaController = TextEditingController();
  final TextEditingController summaryController = TextEditingController();
  final TextEditingController pengalamanController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pertemuan 4"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [

              // INPUT
              TextFormField(
                controller: namaController,
                decoration: const InputDecoration(labelText: "Nama"),
                validator: (value) =>
                    value!.isEmpty ? "Tidak boleh kosong" : null,
              ),

              const SizedBox(height: 10),

              TextFormField(
                controller: summaryController,
                decoration: const InputDecoration(labelText: "Summary"),
                validator: (value) =>
                    value!.isEmpty ? "Tidak boleh kosong" : null,
              ),

              const SizedBox(height: 10),

              TextFormField(
                controller: pengalamanController,
                decoration:
                    const InputDecoration(labelText: "Pengalaman Kerja"),
                validator: (value) =>
                    value!.isEmpty ? "Tidak boleh kosong" : null,
              ),

              const SizedBox(height: 20),

              // SUBMIT
              Center(
                child: InkWell(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      SimpleAlertDialog.show(
                        context,
                        title: AlertTitleText("Konfirmasi"),
                        content: AlertContentText("Simpan data ini?"),
                        onConfirmButtonPressed: (ctx) {
                          Navigator.pop(context);

                         DataGlobal.nama = namaController.text;
                          DataGlobal.summary = summaryController.text;
                          DataGlobal.pengalaman = pengalamanController.text;

                          CherryToast.success(
                            title: const Text("Data berhasil disimpan"),
                          ).show(context);
                        },
                      );
                    }
                  },
                  child: Container(
                    width: 220,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        "Submit",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              //DELETE
             Center(
  child: InkWell(
    onTap: () {
      SimpleAlertDialog.show(
        context,
        buttonsColor: Colors.red,
        title: AlertTitleText("Konfirmasi"),
        content: AlertContentText("Yakin mau hapus data?"),
        onConfirmButtonPressed: (ctx) {

          Navigator.pop(context);

          // reset form
          namaController.clear();
          summaryController.clear();
          pengalamanController.clear();

          // reset data global
          DataGlobal.nama = "-";
          DataGlobal.summary = "-";
          DataGlobal.pengalaman = "-";

          // notif
          CherryToast.success(
            title: const Text("Data berhasil dihapus"),
          ).show(context);
        },
      );
    },
    child: Container(
      width: 220,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Center(
        child: Text(
          "Delete",
          style: TextStyle(color: Colors.white),
        ),
      ),
    ),
  ),
),
              const SizedBox(height: 10),

              //SHOW DIALOG
              Center(
                child: InkWell(
                  onTap: () {
                    SimpleAlertDialog.show(
                      context,
                      title: AlertTitleText("Halo!"),
                      content: AlertContentText("Ini contoh Alert Dialog"),
                      onConfirmButtonPressed: (ctx) {
                        Navigator.pop(context);
                      },
                    );
                  },
                  child: Container(
                    width: 220,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        "Show Dialog",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}