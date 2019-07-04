import 'package:flutter/material.dart';

main(){
  runApp(MaterialApp(
    home: MyApp(),
    title: 'stor',

  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: CustomScrollView(

          slivers: <Widget>[

            SliverAppBar(

              backgroundColor: Colors.black,

              title: Text('Stories',

                textWidthBasis: TextWidthBasis.longestLine,
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 24,color: Colors.white,fontWeight: FontWeight.bold,shadows: [
                  Shadow(
                      blurRadius: 7.0,
                      color: Colors.black,

                      offset: Offset(5.0, 3.0)
                  )
                ]),),
              expandedHeight: 200.0,
              floating: true,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
               title: Row(
              children: <Widget>[




                    Expanded(

                            child: Padding(
                              padding: const EdgeInsets.only(right: 126,left: 15,top: 28),
                             // child: TextField(
                             //   maxLines: 1,

                                //style: TextStyle(fontSize: 14,color: Colors.white),
                             //   decoration: InputDecoration(
                              //    contentPadding: EdgeInsets.all(1.0),
                               //   hintText: "search",
                               //   hintStyle: TextStyle(fontSize: 20.0, color:Colors.white70),
                               //   border: OutlineInputBorder(
                               //     borderSide: BorderSide(

                               //       color: Colors.amber,
                               //     ),
                              //    ),
                               //   prefixIcon: const Icon(
                               //     Icons.search,
                               //     color: Colors.white,
                               //   ),
                               // ),

                              ),
                            )

                  //  ),
                    //Icon(Icons.search,size: 20,color: Colors.white,),



                  ],
                ),

                background: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/ka.gif'),
                          fit: BoxFit.cover),
                      gradient: LinearGradient(
                          colors: [Colors.purpleAccent, Colors.red])
                  ),
                ),
              ),
            ),
            SliverList(delegate: SliverChildBuilderDelegate((context, index) {


    if(index==0){
    return _DrawPost('روايات رومانسية', 'assets/images/kr2.gif');
    }

    else if(index ==1 && index <24) {
    return _DrawPost('روايات رعب','assets/images/kar4.gif');

    }else if (index==2){
    return _DrawPost('روايات بوليسية','assets/images/kar3.gif');

            }
    }
            , childCount: 3)),
          ]
      ),
    );
  }

  Widget _DrawPost(String text, var image)  {

    return
       Container(
         height: 300,

         decoration: BoxDecoration(


           border: Border.all(
             width: 12,
             style: BorderStyle.none,
             color: Colors.blue,
           ),
         ),
         child : Card(
           
           child:Container(

             child: Text(text,style: TextStyle(fontSize: 23,color: Colors.white,fontWeight: FontWeight.bold,shadows: [
              Shadow(
                blurRadius: 5.0,
                color: Colors.black,
                offset: Offset(4.0, 3.0)
              )
             ]),textAlign: TextAlign.center,),
             decoration: BoxDecoration(
               
               borderRadius: BorderRadius.all(Radius.circular(26.0)),border: Border.all(color: Colors.black,width:5),
               color: Colors.redAccent,
               image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover)
             ),

           ) ,

           shape: OutlineInputBorder(borderRadius: BorderRadius.all( Radius.circular(25))),
           // your card here
         ), // Card
       );
  }


}

/////