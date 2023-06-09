import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_genesis/customer.dart';
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';

class CustomerDetailPage extends StatefulWidget {
  @override
  _CustomerDetailPageState createState() => _CustomerDetailPageState();
}

class _CustomerDetailPageState extends State<CustomerDetailPage> {
  List<Customer>? customers;

  @override
  void initState() {
    super.initState();
    readCustomerData().then((data) {
      setState(() {
        customers = data;
      });
    });
  }

  Future<List<Customer>> readCustomerData() async {
    final String response =
        await rootBundle.loadString('assets/data/customers.json');
    final data = await json.decode(response) as Map<String, dynamic>;
    final List<dynamic> tableData = data['tablav'];
    return tableData.map((item) => Customer.fromJson(item)).toList();
  }

  final List<String> imagePaths = [
    'assets/images/antigua.jpg',
    'assets/images/castillo.jpg',
    'assets/images/semuc.jpeg',
    'assets/images/tikal.JPG',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clientes'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: customers == null
                ? CircularProgressIndicator()
                : ListView.builder(
                    itemCount: customers!.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(customers![index].nombreCliente ?? ''),
                        subtitle: Text(
                            'Prestamo: ${customers![index].prestamo ?? ''}, DPI: ${customers![index].dpi ?? ''}, FUD: ${customers![index].fudCliente ?? ''}'),
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              final customerData = customers![index].toMap();
                              final infoList = <Widget>[];

                              customerData.forEach((key, value) {
                                if (value != null) {
                                  if (key == 'codSucursal' && value is int) {
                                    infoList
                                        .add(Text('$key: ${value.toString()}'));
                                  } else {
                                    infoList.add(Text('$key: $value'));
                                  }
                                }
                              });

                              return AlertDialog(
                                title: Text(
                                    'Más información - ${customers![index].nombreCliente ?? ''}'),
                                content: SingleChildScrollView(
                                  child: ListBody(
                                    children: infoList,
                                  ),
                                ),
                                actions: <Widget>[
                                  TextButton(
                                    child: Text('Close'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        },
                      );
                    },
                  ),
          ),
          imagePaths.isNotEmpty
              ? Container(
                  height: 200,
                  child: Swiper(
                    itemCount: imagePaths.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Image.asset(
                        imagePaths[index],
                        fit: BoxFit.contain,
                      );
                    },
                    pagination: SwiperPagination(),
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
