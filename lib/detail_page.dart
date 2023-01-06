import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          //column------------------
          Column(children: [
            Container(
              height: 450,
              child:Image.network("https://smartgardenguide.com/wp-content/uploads/2019/02/why-is-my-snake-plant-dying-1-1.jpg",fit: BoxFit.cover,)
            ),
            SizedBox(height: 65,),
            Container(
              // margin: EdgeInsets.symmetric(horizontal: 15),
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    height: 150,
                    decoration: BoxDecoration(),
                    child: ClipRRect(borderRadius: BorderRadius.circular(10),child: Image.network("https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1660073901-best-indoor-plants-zz-plant-1660073875.png?crop=1.00xw:0.802xh;0,0.168xh&resize=480:*",fit: BoxFit.cover,)),
                  ),
                  Container(
                     margin: EdgeInsets.only(left: 10),
                    height: 150,
                    decoration: BoxDecoration(),
                    child: ClipRRect(borderRadius: BorderRadius.circular(10),child: Image.network("https://media.glamour.com/photos/5ea89429e67f360008b064d8/master/w_1172,h_1412,c_limit/Pink%20Anthurium.png",fit: BoxFit.cover,)),
                  ),
                  Container(
                     margin: EdgeInsets.only(left: 10),
                    height: 150,
                    decoration: BoxDecoration(),
                    child: ClipRRect(borderRadius: BorderRadius.circular(10),child: Image.network("https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/colvin-best-office-plants-1664230150.jpeg",fit: BoxFit.cover,)),
                  ),
                ],
              ),
            ),
          
            Container(
              margin: EdgeInsets.all(15),
              child: Text("Plants are predominantly photosynthetic eukaryotes of the kingdom Plantae. Historically, the plant kingdom encompassed all living things that were not animals, and included algae."),),
          ],),
          //text----------
          Container(
            
            margin: EdgeInsets.only(top: 425,left: 10),
            child: Text("New \nNatural",style: TextStyle(fontSize: 35),)),
        
        ],),
      ),
    );
    
  }
}