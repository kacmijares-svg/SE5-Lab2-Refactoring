import 'package:flutter/material.dart';
import '../models/pwd.dart';
import '../services/pwd_service.dart';
import '../utils/app_constants.dart';

class PwdListPage extends StatelessWidget {
  const PwdListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Pwd> records = PwdService().getSampleRecords();

    return Scaffold(
      appBar: AppBar(title: const Text(AppConstants.appTitle)),
      body: records.isEmpty
          ? const Center(child: Text(AppConstants.noRecords))
          : _buildRecordList(records),
    );
  }

  Widget _buildRecordList(List<Pwd> records) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: records.length,
      itemBuilder: (context, index) {
        return _buildPwdCard(records[index]);
      },
    );
  }

  Widget _buildPwdCard(Pwd pwd) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: const CircleAvatar(child: Icon(Icons.person)),
        title: Text(pwd.name),
        subtitle: Text(
          '${pwd.age} years old\n'
          '${pwd.disability} • ${pwd.barangay}\n'
          'Contact: ${pwd.contactNumber}',
        ),
        isThreeLine: true,
      ),
    );
  }
}
