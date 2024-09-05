import 'package:flutter/material.dart';
import 'package:quotesapp_dailytask/screen/Model/quote_list.dart';
import 'package:quotesapp_dailytask/screen/Model/quotes_model.dart';
import 'package:quotesapp_dailytask/screen/component/alertDialog.dart';
import 'package:quotesapp_dailytask/screen/component/dialog_box.dart';
import 'package:quotesapp_dailytask/screen/component/fullscreendialog.dart';
import 'package:quotesapp_dailytask/screen/component/griedviewmethod.dart';
import 'package:quotesapp_dailytask/screen/component/listviewmethod.dart';
import 'package:quotesapp_dailytask/utils/global.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    QuotesView = quotelist.map((e) => Quotes.fromMap((e))).toList();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.yellow.shade900,
        title: const Text(
          'Home Page',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  isGrid = !isGrid;
                });
              },
              icon: (isGrid)
                  ? const Icon(
                      Icons.grid_view_outlined,
                      color: Colors.white,
                    )
                  : const Icon(
                      Icons.list_alt_outlined,
                      color: Colors.white,
                    ))
        ],
      ),
      body: (isGrid) ? const GriedviewMethod() : const Listviewmethod(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(
            width: 20,
          ),
          FloatingActionButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => alertDialog_method(context),
              );
            },
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              showDialog(
                  context: context, builder: (context) => Dialog_box(context));
            },
            child: const Text('Dialog'),
          ),
          const SizedBox(
            width: 20,
          ),
          ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) => Material(
                          child: Container(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      IconButton(onPressed: () {
                                        Navigator.of(context).pop();
                                      }, icon: Icon(Icons.close)),

                                      const Text(
                                        "Full-screen dialog title",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      const Spacer(),
                                      TextButton(
                                          onPressed: () {}, child: Text('Save'))
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  fulldialog(label: 'Label', hint: 'Input'),
                                  fulldialog(
                                      label: 'Event Name', hint: 'Event Name'),
                                  const Align(
                                    alignment: AlignmentDirectional.bottomStart,
                                    child: Text('From',style: TextStyle(fontSize: 22),),
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                          child: fulldialog(
                                              label: 'Label', hint: 'Input')),
                                      Expanded(
                                          child: fulldialog(
                                              label: 'Input', hint: 'Input')),
                                    ],
                                  ),
                                  const Align(
                                    alignment: AlignmentDirectional.bottomStart,
                                    child: Text('To',style: TextStyle(fontSize: 22),),
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                          child: fulldialog(
                                              label: 'Label', hint: 'Input')),
                                      Expanded(
                                          child: fulldialog(
                                              label: 'Input', hint: 'Input')),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                        value: false,
                                        onChanged: (value) {},
                                      ),
                                      Text('All day'),
                                    ],
                                  ),
                                  const Align(
                                    alignment: AlignmentDirectional.bottomStart,
                                    child: Text('Timezone',style: TextStyle(fontSize: 22),),
                                  ),
                                  fulldialog(label: 'Label', hint: 'Input'),
                                ],
                              ),
                            ),
                          ),
                        ));
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  backgroundColor: Colors.green.shade300),
              child: const Text(
                'Full Screen',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              )),
        ],
      ),
    );
  }
}
