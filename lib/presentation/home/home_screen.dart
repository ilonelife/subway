import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:subway/presentation/home/home_view_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _textEditingController = TextEditingController();

  Future<void> _showResult(String query) async {
    context.read<HomeViewModel>().fetchSubway(query);
  }

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      _showResult('서울');
    });
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HomeViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: Text('지하철 실시간 정보'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _textEditingController,
            decoration: InputDecoration(
                suffix: IconButton(
              onPressed: () {
                viewModel.fetchSubway(_textEditingController.text);
              },
              icon: const Icon(Icons.search),
            )),
          ),
          Expanded(
            child: ListView(
              children: viewModel.subways.map((e) {
                return ListTile(
                  title: Text(e.trainLineNm),
                  subtitle: Text(e.updnLine),
                  trailing: Text(e.arvlMsg2),
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}
