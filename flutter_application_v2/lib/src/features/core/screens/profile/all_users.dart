import 'package:flutter/material.dart';
import 'package:flutter_project_mobile_v2/src/constants/size.dart';
import 'package:flutter_project_mobile_v2/src/constants/text_strings.dart';
import 'package:flutter_project_mobile_v2/src/features/authentication/models/user_model.dart';
import 'package:flutter_project_mobile_v2/src/features/core/controllers/profile_controller.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class UserManegementScreen extends StatelessWidget {
  const UserManegementScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfileController());

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(LineAwesomeIcons.angle_left)),
        title: Text(
          mEditProfile,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(mDefaultSize),
          child: FutureBuilder<List<UserModel>>(
            future: controller
                .getAllUser(), // in this case on minute (https://youtu.be/Kn2vOrznAxs?list=PL5jb9EteFAODpfNJu8U2CMqKFp4NaXlto&t=918) he created a different code
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: snapshot.data!.length,
                    itemBuilder: (c, index) {
                      return Column(
                        children: [
                          ListTile(
                            iconColor: Colors.blue,
                            tileColor: Colors.blue.withOpacity(.1),
                            leading: const Icon(LineAwesomeIcons.user_1),
                            // title: Text("Name: ${snapshot.data![index].fullName}"),
                            title:
                                Text("Name: ${snapshot.data![index].fullName}"),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(snapshot.data![index].phoneNo),
                                Text(snapshot.data![index].email),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                        ],
                      );
                    },
                  );
                } else if (snapshot.hasError) {
                  return Center(child: Text(snapshot.error.toString()));
                } else {
                  return const Center(child: Text('Something went wrong.'));
                }
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
            // Before the column data was here
          ),
        ),
      ),
    );
  }
}
