import 'package:demo_cor/const/constants.dart';
import 'package:demo_cor/model/data_model.dart';
import 'package:demo_cor/model/demo_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Datum> datalisthere = [];
  bool isLoading = false; // Add a loading state

  @override
  void initState() {
    super.initState();
    uerlistDatahere();
  }

  Future<void> uerlistDatahere() async {
    setState(() {
      isLoading = true; // Set loading state to true while fetching data
    });

    try {
      final response = await http.get(Uri.parse(ApiConstants.baseUrl));

      if (response.statusCode == 200) {
        final jsonData = welcomeFromJson(response.body);

        setState(() {
          datalisthere = jsonData.data;
        });
      } else {
        throw Exception('Failed to fetch data: ${response.statusCode}');
      }
    } catch (e) {
      // Optionally, show a snackbar or dialog to the user
    } finally {
      setState(() {
        isLoading =
            false; // Set loading state to false regardless of success or failure
      });
    }
  }

  Color _optionsCardColor = Colors.white;
  Color _commodityCardColor = Colors.white;
  Color _equityCardColor = Colors.white;

  void _changeCardColor(String cardType) {
    setState(() {
      // Reset all card colors to white
      _optionsCardColor = Colors.white;
      _commodityCardColor = Colors.white;
      _equityCardColor = Colors.white;

      // Change the selected card's color
      if (cardType == 'options') {
        _optionsCardColor = Colors.blue;
      } else if (cardType == 'commodity') {
        _commodityCardColor = Colors.blue;
      } else if (cardType == 'equity') {
        _equityCardColor = Colors.blue;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.purple.shade800,
                // Colors.deepPurple,
                Colors.purpleAccent,
              ],
            ),
          ),
        ),
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'vishal',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Good Day',
                          style: TextStyle(
                            color: Colors.white60,
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 9,
                        ),
                        Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 9,
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                              width: 1.0,
                            ),
                          ),
                          child: isLoading
                              ? Center(
                                  child: SizedBox(
                                      height: 10.0,
                                      width: 10.0,
                                      child: CircularProgressIndicator(
                                        strokeWidth: 2.0,
                                        color: Colors.white,
                                      )))
                              : Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Image.network(
                                    'https://s3.eu-north-1.amazonaws.com/copartners-storage/Images/image-removebg-preview (3).png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.purple,
              Colors.purple,
              Colors.deepPurple,
              Colors.deepPurple.shade900,
              Colors.deepPurple.shade800,
              Colors.deepPurple.shade700,
              Colors.deepPurple.shade600,
              Colors.purpleAccent,
              Colors.purpleAccent,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.purpleAccent,
                    // Colors.deepPurple,
                    Colors.purpleAccent,
                  ],
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 8.0, top: 8.0, bottom: 8.0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () => _changeCardColor('options'),
                      child: Card(
                        color: _optionsCardColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 7.0, right: 7.0),
                          child: Text(
                            'Options',
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => _changeCardColor('commodity'),
                      child: Card(
                        color: _commodityCardColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 7.0, right: 7.0),
                          child: Text(
                            'Commodity',
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => _changeCardColor('equity'),
                      child: Card(
                        color: _equityCardColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 7.0, right: 7.0),
                          child: Text(
                            'Equity',
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            isLoading
                ? const Padding(
                    padding: EdgeInsets.only(top: 18.0),
                    child: Center(
                        child: CircularProgressIndicator(
                      color: Colors.white,
                    )),
                  ) // Show loading indicator while fetching data
                : Expanded(
                    child: ListView.separated(
                      itemCount: datalisthere.length,
                      itemBuilder: (BuildContext context, int index) {
                        var frenchisedataitem = datalisthere[index];

                        return Padding(
                          padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 2,
                              ),
                              Card(
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                child: ListTile(
                                  onTap: () {
                                    // Handle item tap
                                  },
                                  title: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          // crossAxisAlignment:
                                          //     CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Container(
                                                      width: 50,
                                                      height: 50,
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        border: Border.all(
                                                          color: Colors.blue,
                                                          width: 1.5,
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(5.0),
                                                        child: Image.network(
                                                          frenchisedataitem
                                                              .experts
                                                              .expertImagePath,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    Column(
                                                      children: [
                                                        Text(
                                                          frenchisedataitem
                                                              .experts.name,
                                                          style:
                                                              const TextStyle(
                                                            color:
                                                                Colors.black87,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 14,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                          ),
                                                        ),
                                                        Text(
                                                          frenchisedataitem
                                                              .experts
                                                              .legalName,
                                                          style:
                                                              const TextStyle(
                                                            color:
                                                                Colors.black38,
                                                            fontSize: 14,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Row(
                                                  children: [
                                                    const Icon(
                                                      Icons.star_border_rounded,
                                                      color: Colors.blue,
                                                    ),
                                                    Text(
                                                      frenchisedataitem.amount
                                                          .toString(),
                                                      style: const TextStyle(
                                                        color: Colors.black87,
                                                        fontSize: 14,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  subtitle: Card(
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 2.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  frenchisedataitem.planType
                                                      .toString(),
                                                  style: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      '${frenchisedataitem.createdOn.hour}:',
                                                      style: const TextStyle(
                                                        color: Colors.black38,
                                                        fontSize: 17,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                      ),
                                                    ),
                                                    Text(
                                                      frenchisedataitem
                                                          .createdOn.minute
                                                          .toString(),
                                                      style: const TextStyle(
                                                        color: Colors.black38,
                                                        fontSize: 17,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              const Text(
                                                'amount: ',
                                                style: TextStyle(
                                                  color: Colors.black87,
                                                  fontSize: 15,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ),
                                              Text(
                                                frenchisedataitem.amount
                                                    .toString(),
                                                style: const TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 14,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              const Text(
                                                'email: ',
                                                style: TextStyle(
                                                  color: Colors.black87,
                                                  fontSize: 15,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ),
                                              Text(
                                                frenchisedataitem.experts.email,
                                                style: const TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  color: Colors.black54,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                  // height: 2,
                                  ),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox();
                      },
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
