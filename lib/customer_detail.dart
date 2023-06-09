import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_genesis/customer.dart';

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
      body: customers == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: customers!.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: ListTile(
                    title: Text(
                      customers![index].nombreCliente ?? '',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    subtitle: Text(
                      'Prestamo: ${customers![index].prestamo ?? ''}, DPI: ${customers![index].dpi ?? ''}, FUD: ${customers![index].fudCliente ?? ''}',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          final customerData = customers![index].toMap();
                          final infoList = <Widget>[];

                          customerData.forEach((key, value) {
                            if (value != null) {
                              if (key == 'codSucursal' && value is int) {
                                infoList.add(Text('$key: ${value.toString()}'));
                              } else {
                                infoList.add(Text('$key: $value'));
                              }
                            }
                          });

                          return AlertDialog(
                            title: Text('Más información'),
                            content: SingleChildScrollView(
                              child: ListBody(
                                children: infoList,
                              ),
                            ),
                            actions: <Widget>[
                              TextButton(
                                child: Text('Cerrar'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                );
              },
            ),
      bottomNavigationBar: imagePaths.isNotEmpty
          ? Container(
              color: Colors.grey[200],
              padding: EdgeInsets.all(16),
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 200,
                  enableInfiniteScroll: true,
                ),
                items: imagePaths.map((path) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      path,
                      fit: BoxFit.cover,
                    ),
                  );
                }).toList(),
              ),
            )
          : SizedBox(),
    );
  }
}
