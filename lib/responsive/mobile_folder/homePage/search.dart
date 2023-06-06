import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:god_life_conversations/responsive/mobile_folder/profilePage/profile_page.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  bool showingUsers = false;

  @override
  void dispose() {
    super.dispose();
    _searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: TextField(
            onSubmitted: (String _) {
              setState(() {
                showingUsers = true;
                _searchController.text = '';
              });
            },
            minLines: 1,
            maxLines: 2,
            controller: _searchController,
            decoration: InputDecoration(
              fillColor: Colors.grey.shade100,
              hintText: 'Search...',
              border: OutlineInputBorder(
                borderSide: Divider.createBorderSide(context),
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(10)),
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(10)),
              filled: true,
              contentPadding: const EdgeInsets.all(10),
            ),
            keyboardType: TextInputType.text,
          ),
        ),
        body: showingUsers
            ? FutureBuilder(
                future: FirebaseFirestore.instance
                    .collection('users')
                    .where('username',
                        isGreaterThanOrEqualTo: _searchController.text)
                    .get(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(
                      child: CircularProgressIndicator(
                        backgroundColor: Colors.white,
                      ),
                    );
                  }
                  return ListView.builder(
                      scrollDirection: Axis.vertical,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      itemCount: (snapshot.data! as dynamic).docs.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () =>
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => ProfilePage(
                                        uid: (snapshot.data as dynamic)
                                            .docs[index]['uid'],
                                      ))),
                          child: ListTile(
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 5,
                              horizontal: 10,
                            ),
                            minLeadingWidth: 5,
                            minVerticalPadding: 5,
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                (snapshot.data as dynamic).docs[index]
                                    ['photoUrl'],
                              ),
                            ),
                            tileColor: const Color.fromARGB(255, 227, 239, 249),
                            subtitle: Text((snapshot.data! as dynamic)
                                .docs[index]['email']),
                            title: Text(
                              (snapshot.data! as dynamic).docs[index]
                                  ['username'],
                            ),
                          ),
                        );
                      });
                },
              )
            : FutureBuilder(
                future:
                    FirebaseFirestore.instance.collection('feedposts').get(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  return AlignedGridView.count(
                      crossAxisCount: 3,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      itemBuilder: (context, index) => Image.network(
                          (snapshot.data as dynamic).docs[index]['postUrl']));
                  // StaggeredGridView.countBuilder(
                  //   crossAxisCount: 3,
                  //   itemCount: (snapshot.data! as dynamic).docs.length,
                  //   itemBuilder: (context, index) => Image.network(
                  //       (snapshot.data as dynamic).docs[index]['postUrl']),
                  //   staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
                  //   mainAxisSpacing: 8,
                  //   crossAxisSpacing: 8,
                  // );
                })
        // Center(
        //     child: Column(
        //       children: [
        //         Image.network(
        //             height: 200,
        //             width: 200,
        //             'https://cdn.pixabay.com/photo/2021/06/09/16/23/smiley-6323863_960_720.png'),
        //         const Text('Search users'),
        //       ],
        //     ),
        //   ),
        );
  }
}
