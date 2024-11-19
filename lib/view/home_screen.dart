import 'package:app_final_2/view/components/add_transaction_dialogue.dart';
import 'package:app_final_2/view/components/home_header.dart';
import 'package:app_final_2/view/components/transactions_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: const SafeArea(
        bottom: false,
        child: Column(
          children: [
            HomeHeader(),
            TransactionsList(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {
          //mostrar dialogo bottom ship para agregar transaccion
          showModalBottomSheet(context: context,
          isScrollControlled: true, 
          builder: (context){
            return const AddTransactionDialogue();
          },
          );
        } , 
        child: const Icon(Icons.add, color: Colors.white,)),
    );
  }
}


