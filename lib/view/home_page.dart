import 'package:bakenss/models/history_models.dart';
import 'package:bakenss/models/profile_models.dart';
import 'package:bakenss/models/status_models.dart';
import 'package:bakenss/service/status_service.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize:
              Size(double.infinity, MediaQuery.of(context).size.height * 0.08),
          child: FutureBuilder(
              future: StatusService.getProfile(),
              builder: (context, AsyncSnapshot snapshot) {
                if (!snapshot.hasData) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (snapshot.hasError) {
                  return Text(snapshot.error.toString());
                } else {
                  ProfileModels profileData = snapshot.data as ProfileModels;
                  return AppBar(
                    title: ListTile(
                      title: Text(profileData.title.toString()),
                      subtitle: Text(profileData.name.toString()),
                      leading: CircleAvatar(
                          backgroundImage:
                              NetworkImage(profileData.img.toString())),
                    ),
                  );
                }
              }),
        ),
        backgroundColor: Colors.purple,
        body: Column(children: [
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: FutureBuilder(
                future: StatusService.getStatus(),
                builder: (context, AsyncSnapshot snapshot) {
                  if (!snapshot.hasData) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (snapshot.hasError) {
                    return Text(snapshot.error.toString());
                  } else {
                    StatusModels statusData = snapshot.data as StatusModels;
                    return Column(
                      children: [
                        ListTile(
                          leading: Text(
                              "${statusData.statis!.result}${statusData.statis!.steps}"),
                        )
                      ],
                    );
                  }
                }),
          ),
          Column(
            children: [
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                child: FutureBuilder(
                    future: StatusService.getHistory(),
                    builder: (context, AsyncSnapshot snapshot) {
                      if (!snapshot.hasData) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      } else if (snapshot.hasError) {
                        return Text(snapshot.error.toString());
                      } else {
                        HistoryModels historyData =
                            snapshot.data as HistoryModels;
                        return ListView.builder(itemBuilder: (context, index) {
                          return ListTile(
                              leading:
                                  Text(historyData.data![index].date.toString()));
                        },itemCount: historyData.data!.length,);
                      }
                    }),
              )
            ],
          ),
        ]));
  }
}
