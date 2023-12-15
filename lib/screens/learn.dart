import 'package:flutter/material.dart';

class Learn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        children: [
          // Container(
          //   margin: EdgeInsets.symmetric(vertical: 40),
          //   width: screenWidth,
          //   padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
          //   child: Text(
          //     '',
          //     style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          //   ),
          // ),
          Stack(
            children: [
              Image(
                image: AssetImage('images/learn_cover.jpg'),
                filterQuality: FilterQuality.high,
                width: screenWidth,
                height: 200,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 45,
                left: 16,
                child: Text(
                  '10 WAYS TO CELEBRATE \n SUSTAINABILITY THIS HOLIDAY\n SEASON',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: screenWidth,
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.06),
            margin: EdgeInsets.symmetric(vertical: 40),
            child: Text(
                "It’s nearly that time again–the season of twinkly lights, joyful jingles, comforting foods, and exchanging gifts with loved ones near and far. But amidst so much beauty and excitement, there is also a significant amount of avoidable waste. \n\nHere are 10 ways you can celebrate sustainability this holiday season by reducing the harmful impact of the season and creating a more just and sustainable world."),
          ),
          Container(
            alignment: Alignment(-0.8, 0),
            child: Text(
              'SUSTAINABLE GIFTS',
              style: heading(),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            alignment: Alignment(-0.5, 0),
            child: Text('TIP #1: GIFTS THAT IMPROVE LIVELIHOODS',style: TextStyle(fontFamily: 'Times New Roman'),),
          ),
          Container(
            child: Image(image: AssetImage('images/learn_1.jpg'),
            height: 150,),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text("Handmade gifts are often the best gifts because they’re one of a kind and support small businesses and local artisans. Look for local marketplaces where artisans sell their creations in your community, or you can shop at online stores like Uncommon Goods that source from women-owned businesses, among others. If you’re interested in handmade items from around the world, SERRV International is a non-profit that carries thousands of beautiful handmade and fair trade certified items. ",style: TextStyle(fontFamily: 'Times New Roman'),),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            alignment: Alignment(-0.7, 0),
            child: Text('TIP #2: GIFTS THAT ARE SECOND HAND',style: TextStyle(fontFamily: 'Times New Roman'),),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text("Kate Herndon, SHI’s Director of Development, loves shopping at local thrift stores for second hand toys and books for her son. Kate says, “He receives so many new gifts from family during the holidays that it feels overwhelming to buy him even more new things. Thrift stores give toys and books a second (or third) life, and he doesn’t know the difference.”",style: TextStyle(fontFamily: 'Times New Roman'),),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            alignment: Alignment(-0.4, 0),
            child: Text('TIP #3: GIFTS THAT LET THE RECIPIENT CHOOSE',style: TextStyle(fontFamily: 'Times New Roman'),),
          ),
          Container(
            child: Image(image: AssetImage('images/learn_2.jpg'),
            height: 150,),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text("Instead of buying a gift that might go unused, consider giving a gift certificate or gift card to a local business where your loved one can get something they truly love.  We highly recommend reaching out to farmers markets, bakeries, nurseries, or bookstores to see if they provide gift certificates.\nUnfortunately, many businesses still only offer gift cards made from PVC plastic, which is not always recyclable curbside. Ask the business if they offer a recycling program, and if not, recommend Terracycle’s program to them (zero-waste bags and boxes are available for individuals and businesses). As always, we recommend limiting the amount of single-use plastic whenever you possibly can!",style: TextStyle(fontFamily: 'Times New Roman'),),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            alignment: Alignment(-0.7, 0),
            child: Text('TIP #4: GIFTS THAT ARE HOMEMADE',style: TextStyle(fontFamily: 'Times New Roman'),),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text("Mira Kohl, SHI’s Communications Manager, loves making homemade gifts for her friends and loved ones. Mira says, “This year, I think I’m going to turn all my scotch bonnet peppers into hot sauces and share them with folks.” Homemade treats like sauces, breads, baked goods, soups, and freezable casserole dishes bring joy without producing significant waste. Don’t forget to also give the recipe!",style: TextStyle(fontFamily: 'Times New Roman'),),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            alignment: Alignment(-0.4, 0),
            child: Text('TIP #5: GIFTS FOR THE PERSON WHO HAS IT ALL',style: TextStyle(fontFamily: 'Times New Roman'),),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text("There are plenty who reject the idea of a gift because they say they have all they need or want. A donation to a charity is always a thoughtful way to honor a loved one, especially if there’s a cause near and dear to their heart. Time is also a wonderful gift, and you can help secure that time by gifting a membership to a local nature center, museum, or arts center.",style: TextStyle(fontFamily: 'Times New Roman'),),
          ),
          Container(
            alignment: Alignment(-0.8, 0),
            child: Text(
              '\nSUSTAINABLE WRAPPING',
              style: heading(),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            alignment: Alignment(-0.9, 0),
            child: Text('TIP #6: BOX IT UP!',style: TextStyle(fontFamily: 'Times New Roman'),),
          ),
          Container(
            child: Image(image: AssetImage('images/learn_3.jpg'),
            height: 150,),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text("Instead of buying gift boxes and tissue paper, you likely have plenty of supplies in your home that you can reuse instead. Dry good boxes from the pantry (cereal, cracker) make great gift boxes, as do toiletry boxes from bar soap and toothpaste. Lipstick and chapstick boxes hold small stocking stuffers or cash. Shoeboxes are sturdy and reusable. Instead of tissue paper, use newspaper, crumpled or shredded paper, recyclable and reusable kraft or butcher paper, or cloth/clothing scraps to pad gifts in boxes!",style: TextStyle(fontFamily: 'Times New Roman'),),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            alignment: Alignment(-0.9, 0),
            child: Text('TIP #7: WRAP IT UP!'),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text("Wrapping paper is festive and colorful but also costly, unwieldy, and it isn't always recyclable. SHI’s Executive Director, Elliott Powell, recommends using newspaper or paper grocery bags because they can be easily recycled. \nIf you want festive and colorful wrapping without the fuss, SHI’s Founder, Flo Reed, recommends you buy cloth remnants for wrapping gifts. These pieces can be just as beautiful as wrapping paper but can also be reused year after year.\nOr why not turn it into a fun, family activity? Bring your family together and decorate newspaper or grocery bag-wrapped gifts over a cup of hot chocolate. We recommend paint for handprints and markers or crayons.",style: TextStyle(fontFamily: 'Times New Roman'),),
          ),
          Container(
            alignment: Alignment(-0.8, 0),
            child: Text(
              '\nSUSTAINABLE TRADITIONS',
              style: heading(),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            alignment: Alignment(-0.9, 0),
            child: Text('TIP #8: PLANTABLE TREES',style: TextStyle(fontFamily: 'Times New Roman'),),
          ),
          Container(
            child: Image(image: AssetImage('images/learn_4.jpg'),
            height: 150,),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text("The popularity of artificial trees and holiday tree alternatives has been on the rise for decades, but plantable trees are also a wonderful option and will make your home more festive year after year. Talk to your local nursery about what evergreen tree might be right for your holiday tree this year and your yard for years to come.\n\nWe know that traditions are hard to change, especially nostalgic ones, so if you can’t bring yourself to replace your cut tree with a plantable one, consider “replanting” your tree through an organization like Sustainable Harvest International. For \$12, a dozen tree seedlings will be planted on deforested land by smallholder farmers in Central America. ",style: TextStyle(fontFamily: 'Times New Roman'),),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            alignment: Alignment(-0.7, 0),
            child: Text('TIP #9: PUT ORGANIC, LOCALLY-SOURCED\n FOOD ON YOUR TABLE'),
          ),
          Container(
            child: Image(image: AssetImage('images/learn_5.jpg'),
            height: 150,),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text("Food is a central part of the way people all over the world celebrate. We cook using recipes passed down to us from generations past (or delightfully taken from one of our favorite food blogs, Oh She Glows), and we sit around the table to enjoy the fulfillment of food going into our bellies and loved ones all around us. While it might cost a little extra to purchase food that is organic and/or locally-sourced, the health of our planet and farmers who work hard to grow our food will thank you. "),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            alignment: Alignment(-0.8, 0),
            child: Text('TIP #10: CELEBRATE IN NATURE',style: TextStyle(fontFamily: 'Times New Roman'),),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text("Our precious Earth brings joy and wonder in all seasons, not just the warm and sunny ones. As family and friends come together for the holidays, there’s no better time to take your party outdoors for a hike in the forest or hot chocolate by a river or stream.\n\nIt is easy to forget amid the holiday hustle and bustle that we are a part of a vast and significant ecosystem of life. The air we breathe and ground beneath our feet are gifts that we give each other every day in how we choose to treat the environment.\n\nAs we give so much thought to the other gifts we give on another, may we also give thought to how we treat the planet we all rely on to survive. Care for the Earth, but also enjoy her beauty and abundance often. Find a walking trail at TrailLink or a hike on the Hiking Project.  ",style: TextStyle(fontFamily: 'Times New Roman'),),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 50,top: 20),
            child: Image(image: AssetImage('images/learn_6.jpg'),
            height: 200,
            width: screenWidth*0.9,
            fit: BoxFit.fitWidth,),
          ),
        ],
      ),
    );
  }
}

TextStyle heading() {
  return TextStyle(
      color: const Color.fromARGB(255, 42, 98, 44), fontSize: 20, fontWeight: FontWeight.bold,fontFamily: 'Times New Roman',);
}
