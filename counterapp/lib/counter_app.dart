import 'package:flutter/material.dart';
class counterapp extends StatefulWidget {
  const counterapp({super.key});

  @override
  State<counterapp> createState() => _counterappState();
}

class _counterappState extends State<counterapp> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.teal.shade800,
        title: Text('counterApp',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize:20),),
        centerTitle: true,
      ),
      body: Center(child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('$count',style: TextStyle(color: Colors.teal.shade900,fontWeight: FontWeight.bold,fontSize:30),),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            FloatingActionButton(backgroundColor: Colors.teal.shade600,
                child: Text('Add',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                onPressed:(){
              count=count+1;
              setState(() {

              });
                }),
              FloatingActionButton(
                backgroundColor: Colors.teal.shade600,
                  child: Text('sub',style: TextStyle(color: Colors.black,fontSize:20,fontWeight: FontWeight.bold),),
                  onPressed: (){
                  if(count>0){
                    count--;
                    setState(() {

                    });
                  }
                }),
              FloatingActionButton(
                backgroundColor: Colors.teal.shade600,
                  child:Icon(Icons.refresh,color: Colors.black,),
                  onPressed: (){
                  count = count=0;
                  setState(() {

                  });
                  })
          ],),
        ],),
      ),
      
    );
  }
}
