import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
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
    final String response = await rootBundle.loadString('assets/data/customers.json');
    final data = await json.decode(response) as Map<String, dynamic>;
    final List<dynamic> tableData = data['tablav'];
    return tableData.map((item) => Customer.fromJson(item)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clientes'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: customers == null
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
                              infoList.add(Text('$key: ${value.toString()}'));
                            } else {
                              infoList.add(Text('$key: $value'));
                            }
                          }
                        });

                        return AlertDialog(
                          title: Text('More Information'),
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
    );
  }
}
