import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final List<Map<String, dynamic>> Settings = [
    {
      "title": "Edit profiel",
      "icon": Icon(Icons.edit),
    },
    {
      "title": "order History",
      "icon": Icon(Icons.delivery_dining),
    },
    {
      "title": "shipping detail",
      "icon": Icon(Icons.location_pin),
    },
    {
      "title": "All Coupon",
      "icon": Icon(Icons.money),
    },
    {
      "title": "Change Password",
      "icon": Icon(Icons.lock),
    },
    {
      "title": "Logout",
      "icon": Icon(Icons.logout),
    },
  ];
  List<String> language = [
    "English",
    "Khmer"
  ];
  String? SelectedLanguage = "English";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings",
          style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.w800,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Icon(Icons.notifications),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            decoration:
                BoxDecoration(color: const Color.fromARGB(255, 228, 225, 225)),
            padding: EdgeInsets.all(15),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: Colors.greenAccent,
                      width: 3,
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/images/sunghoon2.jpg'),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Park sunghoon",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "hoon@gmial.com",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            // title: DropdownButton(
            //   icon: Icon(Icons.keyboard_arrow_down),
            //   value: SelectedLanguage,
            //   onChanged: (value){
            //     setState(() {
            //       SelectedLanguage = value;
            //     });
            //   },
            //   items: language.map((item) => DropdownMenuItem(
            //     value: item,
            //     child: Text(item))).toList(),
            //   // child: Row(
            //   //   children: [
            //   //     Text(
            //   //       "English",
            //   //       style: TextStyle(
            //   //         fontSize: 16,
            //   //         color: Colors.grey,
            //   //       ),
            //   //     ),
            //   //     Icon(Icons.keyboard_arrow_down),
            //   //   ],
            //   // ),
            // ),

            title: GestureDetector(
              onTap: (){
                // showBottomSheet(
                  
                //   context: context, builder: (context){
                //   return Container(
                //     width: double.infinity,
                //     height: MediaQuery.of(context).size.height* 0.5,
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(10),
                      
                //     ),
                //   );
                // });
                showDialog(context: context, builder: (context){
                    return Dialog(
                      child: Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("Change language"),
                            ElevatedButton(onPressed: (){

                            }, child: Text("Submite"))
                          ],
                        ),
                      ),
                    );
                });
              },
              child: Row(
                children: [
                    Text(
                      "English",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    Icon(Icons.keyboard_arrow_down),
                  ],
                ),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Dark mood",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                CupertinoSwitch(value: false, onChanged: (values) {}),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: ListTile(
                      leading: Settings[index]['icon'],
                      title: Text(Settings[index]['title']),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => SizedBox(
                    height: 20,
                  ),
              itemCount: Settings.length)
        ],
      ),
    );
  }
}
