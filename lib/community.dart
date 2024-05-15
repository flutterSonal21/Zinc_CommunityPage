import 'package:flutter/material.dart';

class CommunityPage extends StatefulWidget{
  const CommunityPage({super.key});
  @override
  State<StatefulWidget> createState() => _CommunityPageState();
  
}
class CommunityChannel {
  final String name;
  final String image;
  
  CommunityChannel({required this.name, required this.image});
}


class _CommunityPageState extends State<CommunityPage> {
  final TextEditingController _searchController = TextEditingController();

  final List<CommunityChannel> channels = [
  CommunityChannel(name: "Hindustan Unilever Ltd", image: "assets/Ellipse 16.png"),
  CommunityChannel(name: "Crude Oil Ltd", image: "assets/C.png"),
  CommunityChannel(name: "Reliance Industries", image: "assets/Ellipse.png"),
  CommunityChannel(name: "HDFC bank", image: "assets/th.jpeg"),
  CommunityChannel(name: "Marico", image: "assets/M.png"),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Column(
        children: [
          //const SizedBox(width: 20,),
          Container(
            height: 50,
            width: double.infinity,
            color: Colors.white,
          ),
          //1st
          Container(
            //color: const Color.fromARGB(255, 35, 96, 146),
            height: 70,
            color: const Color.fromRGBO(0, 115, 230, 1),
            child: Padding(
              padding: const EdgeInsets.all(15),
                
              child: 
                Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _searchController,
                      decoration: const InputDecoration(
                        labelText: 'Search',
                        hintText: 'Search..',
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 180, 54, 54),
                            width: 4.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(25),
                          ),
                        ),
                      ),
                      onChanged: (value) {
                        // Handle search changes
                      },
                    ),
                  ),
                  const SizedBox(width: 10,),
                  //const Spacer(10),
                  SizedBox(
                    height: 90,
                    width: 90,
                    //color: Colors.pink,
                    child: Image.asset('assets/Messenger.png'),
                  ),
                ],
              )
            ),
          ),
          //2nd
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    color: const Color.fromRGBO(249, 247, 247, 1),
                    height: 400,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          //1st
                          const Text("#Trending Stocks", style: TextStyle(color: Colors.black,fontSize: 16)),
                          const SizedBox(height: 20),
                          Container(
                            height: 120,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color.fromRGBO(0, 115, 230, 1),),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: 
                            
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                //crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text("Arvee Laboratories Ltd (ARVE)",style: TextStyle(fontSize: 23,color: Colors.black,fontWeight: FontWeight.bold),),
                                      const Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        //crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Currency in ",style: TextStyle(fontSize: 13,color: Colors.black),),
                                          Text("INR",style: TextStyle(fontSize: 13,color: Colors.black,fontWeight: FontWeight.bold),),
                                        ]
                                      ),
                                      const SizedBox(width: 10,),
                                      const Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("208.85 ",style: TextStyle(fontSize: 25,color: Colors.blue),),
                                          Text("3.55 (+1.88%)",style: TextStyle(fontSize: 15,color: Colors.black),),
                                        ],
                                      ),
                                      GestureDetector(
                                          onTap: () {
                                            
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => const NEXtPage()));
                                          },
                                          child: Row(
                                            children: [
                                              
                                              const SizedBox(width: 330,),
                                              Image.asset(
                                                "assets/Vector.png",
                                    
                                              ),
                                            ],
                                          ),
                                          
                                        ),
                                       // Your icon
                                    ],
                            ),  

                          ),
                          const SizedBox(height: 20),

                          //2nd
                          const Text("#Community Channels", style: TextStyle(color: Colors.black,fontSize: 16)),
                          


                          ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: channels.length,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 5.0), // Adjust vertical spacing as needed
                                    child: Container(
                                      height: 50,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        border: Border.all(color: Colors.black),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Expanded(child:
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          const SizedBox(width: 10,),
                                          Container(
                                            height: 31,
                                            width: 31,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(100),
                                              color: Colors.red,
                                            ),
                                            child: Image.asset(channels[index].image),
                                          ),
                                          const SizedBox(width: 30,),
                                          Expanded(
                                            child: Text(channels[index].name, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16),),
                                          ),
                                          SizedBox(
                                            height: 25,
                                            width: 47,
                                            child: ElevatedButton(
                                              onPressed: (){},
                                              style: ElevatedButton.styleFrom(
                                                padding: EdgeInsets.zero, // Remove padding
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(10), // Adjust border radius as needed
                                                ),
                                              ),
                                              child: const Text("Join",style: TextStyle(color: Color.fromARGB(255, 9, 9, 9))),
                                            ),
                                          ),
                                          const SizedBox(width: 10,), // Adjust spacing between text and button
                                        ],
                                      ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10), // SizedBox with height 10
                                ],
                              );
                            },
                          )

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NEXtPage extends StatelessWidget{
  const NEXtPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Column(
        children: [
                                      const Text("Arvee Laboratories Ltd (ARVE)",style: TextStyle(fontSize: 23,color: Colors.black,fontWeight: FontWeight.bold),),
                                      const Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("Currency in ",style: TextStyle(fontSize: 13,color: Colors.black),),
                                          Text("INR",style: TextStyle(fontSize: 13,color: Colors.black,fontWeight: FontWeight.bold),),
                                        ]
                                      ),
                                      const SizedBox(width: 10,),
                                      const Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("208.85 ",style: TextStyle(fontSize: 25,color: Colors.blue),),
                                          Text("3.55 (+1.88%)",style: TextStyle(fontSize: 15,color: Colors.black),),
                                        ],
                                      ),
                                      GestureDetector(
                                          onTap: () {
                                            
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => const NEXtPage()));
                                          },
                                          child: Row(
                                            children: [
                                              
                                              const SizedBox(width: 330,),
                                              Image.asset(
                                                "assets/Vector.png",
                                    
                                              ),
                                            ],
                                          ),
                                          
                                        ),
                                       // Your icon
                                    ],
                            ),                           
    );
  }

}
