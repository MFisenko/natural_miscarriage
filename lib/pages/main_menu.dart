import 'package:flutter/material.dart';
import 'package:natural_miscarriage/pages/immediate_use_methods.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          bottom: const PreferredSize(
              child: SizedBox(height: 50), preferredSize: Size.fromHeight(50)),
          backgroundColor: Colors.deepPurple[300],
          title: const Text('Main menu'),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25))),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Stack(alignment: Alignment.topCenter, children: [
            Image.asset(
              'assets/IMG_0225.JPG',
              fit: BoxFit.fitHeight,
              width: double.infinity,
              colorBlendMode: BlendMode.color,
              color: Colors.lightBlue[900],
            ),
            Column(
              children: [
                Opacity(
                  opacity: 0.55,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(bottom: 16, left: 2, right: 2),
                    child: InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ImmediateUseMethods(),
                          )),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.deepPurple[200],
                            borderRadius:
                                const BorderRadius.all(Radius.circular(25)),
                            border: Border.all(color: Colors.black, width: 3)),
                        child:
                            const Center(child: Text("Immediate use methods")),
                        padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                      ),
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.55,
                  child: StaggeredGrid.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 2,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(4.0, 0.0, 2.0, 0),
                        child: Container(
                          height: 175,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.deepPurple[200],
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(25)),
                              border:
                                  Border.all(color: Colors.black, width: 3)),
                          child: const Text('Natural diet suggestions'),
                          padding: const EdgeInsets.all(50),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(2, 0, 4, 0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.deepPurple[200],
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(25)),
                              border:
                                  Border.all(color: Colors.black, width: 3)),
                          child: const Text('Pharmaceuticals'),
                          padding: const EdgeInsets.all(50),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(4, 2.0, 4, 1),
                        child: Container(
                          height: 175,
                          decoration: BoxDecoration(
                              color: Colors.deepPurple[200],
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(25)),
                              border:
                                  Border.all(color: Colors.black, width: 3)),
                          child: const Text('During miscarriage and aftercare'),
                          padding: const EdgeInsets.all(50),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(4.0, 2.0, 0, 1),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.deepPurple[200],
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(25)),
                              border:
                                  Border.all(color: Colors.black, width: 3)),
                          child: const Text('Alternative options'),
                          padding: const EdgeInsets.all(50),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ]),
        ));
  }
}
