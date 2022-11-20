import 'package:flutter/material.dart';
import 'package:example/core.dart';

class LtfmFilterBottomSheetView extends StatefulWidget {
  const LtfmFilterBottomSheetView({Key? key}) : super(key: key);

  Widget build(context, LtfmFilterBottomSheetController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtfmFilterBottomSheet"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ElevatedButton.icon(
                icon: const Icon(Icons.tune),
                label: const Text("Filter"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () async {
                  await showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        padding: const EdgeInsets.all(20.0),
                        child: Wrap(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  InkWell(
                                    onTap: () async {
                                      DateTime? pickedDate =
                                          await showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime(2000),
                                        lastDate: DateTime(2100),
                                      );
                                      print("pickedDate: $pickedDate");
                                    },
                                    child: TextFormField(
                                      initialValue: '2022-08-01',
                                      maxLength: 20,
                                      enabled: false,
                                      decoration: const InputDecoration(
                                          labelText: 'From',
                                          labelStyle: TextStyle(
                                            color: Colors.blueGrey,
                                          ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.blueGrey,
                                            ),
                                          ),
                                          suffixIcon: Icon(Icons.date_range)),
                                      onChanged: (value) {},
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      DateTime? pickedDate =
                                          await showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime(2000),
                                        lastDate: DateTime(2100),
                                      );
                                      print("pickedDate: $pickedDate");
                                    },
                                    child: TextFormField(
                                      initialValue: '2022-08-01',
                                      maxLength: 20,
                                      enabled: false,
                                      decoration: const InputDecoration(
                                          labelText: 'To',
                                          labelStyle: TextStyle(
                                            color: Colors.blueGrey,
                                          ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.blueGrey,
                                            ),
                                          ),
                                          suffixIcon: Icon(Icons.date_range)),
                                      onChanged: (value) {},
                                    ),
                                  ),
                                  ElevatedButton.icon(
                                    icon: const Icon(Icons.filter),
                                    label: const Text("FILTER"),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.blueGrey,
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                  //! 1. Buat datepicker:
                                  //? datepicker: "From"
                                  //? datepicker: "To"
                                  //! 2. Buat tombol dengan label "FILTER"
                                  //! 3. Ketika di klik, panggil Navigator.pop(context)
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LtfmFilterBottomSheetView> createState() =>
      LtfmFilterBottomSheetController();
}
