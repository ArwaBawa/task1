import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_task_1/Body_Widget.dart';
void main() {
  runApp(const ProviderScope(child:MyApp()
  ,), );
}

final Selected_Page_Provider = StateProvider<String>((ref) => 'A'); //this to store wich page we has been choose


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Task 1',
      home: MyHomePage(title: 'Task 1'),
       
    );
  }
}

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  ConsumerState<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {

   var options=["A","B","C"];


  @override
  Widget build(BuildContext context) {
    final dropdownvalue = ref.watch(Selected_Page_Provider);//initial value

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
          actions: [
            DropdownButton(

              value: dropdownvalue,

              icon:const Icon(Icons.keyboard_arrow_down) ,

              items: options.map((String options){
                return DropdownMenuItem(
                  value: options,
                  child: Text(options),
                );
                
              }).toList(),

              onChanged: (String? newValue) {
                   if (newValue != null) {

                 ref.read(Selected_Page_Provider.notifier).state = newValue;
                  
                }
            },
          ),
        ],
      ),
      body:
       change_The_Page(dropdownvalue),
    );
    
  }
}