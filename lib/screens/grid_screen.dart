import 'package:flutter/material.dart';

class GridScreen extends StatefulWidget {
  String m,n;
  GridScreen({super.key,required this.m,required this.n });

  @override
  State<GridScreen> createState() => _GridScreenState();
}

class _GridScreenState extends State<GridScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: IconButton(icon: Icon(Icons.arrow_back),onPressed: (){
        Navigator.pop(context);
      },),),
      body:SingleChildScrollView(child:  SafeArea(minimum: EdgeInsets.all(10),
        child: Column(
          children: [
            Text('received m is ${widget.m} and n is ${widget.n}'),
            SizedBox(height: 20),
            GridView.builder(shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 5,mainAxisSpacing: 5, crossAxisCount:int.parse( widget.m)),
                itemCount: int.parse(widget.m)*int.parse(widget.n),
                itemBuilder: (BuildContext ctx, index) {
                  return Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(15)),
                    child:TextField(

                    ),
                  );
                })
          ],
        ),
      ),)
    );
  }
}
