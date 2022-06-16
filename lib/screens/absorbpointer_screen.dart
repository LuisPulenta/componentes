import 'package:flutter/material.dart';

class AbsorbPointerScreen extends StatefulWidget {
  const AbsorbPointerScreen({Key? key}) : super(key: key);

  @override
  State<AbsorbPointerScreen> createState() => _AbsorbPointerScreenState();
}

class _AbsorbPointerScreenState extends State<AbsorbPointerScreen> {
  bool isAbsorbing = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AbsorbPointer')),
      body: AbsorbPointer(absorbing: isAbsorbing, child: const HomeBody()),
      floatingActionButton: FloatingActionButton(
          child: isAbsorbing
              ? const Icon(Icons.lock)
              : const Icon(Icons.lock_open),
          onPressed: () {
            isAbsorbing = !isAbsorbing;
            setState(() {});
          }),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const CustomOutlineButton(
              width: double.infinity,
              heigth: 150,
            ),
            Row(
              children: const [
                Expanded(
                  flex: 2,
                  child: CustomOutlineButton(
                    width: double.infinity,
                    heigth: 150,
                  ),
                ),
                Expanded(
                  child: CustomOutlineButton(
                    width: double.infinity,
                    heigth: 150,
                  ),
                ),
              ],
            ),
            Row(
              children: const [
                Expanded(
                  child: CustomOutlineButton(
                    width: double.infinity,
                    heigth: 150,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: CustomOutlineButton(
                    width: double.infinity,
                    heigth: 150,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                child: ListView.builder(
                  itemBuilder: (_, i) => ListTile(
                    title: Text('${i + 1}'),
                    leading: const Icon(Icons.home),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomOutlineButton extends StatelessWidget {
  final double width;
  final double heigth;

  const CustomOutlineButton({Key? key, this.width = 150, this.heigth = 150})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      width: width,
      height: heigth,
      child: OutlinedButton(
        onPressed: () {},
        child: const Text('Button'),
      ),
    );
  }
}
