import '../models/pwd.dart';

class PwdService {
  List<Pwd> getSampleRecords() {
    return const [
      Pwd(
        name: 'Juan Dela Cruz',
        age: 45,
        disability: 'Orthopedic',
        barangay: 'District IV',
        contactNumber: '09123456789',
      ),
      Pwd(
        name: 'Maria Santos',
        age: 52,
        disability: 'Visual',
        barangay: 'District IV',
        contactNumber: '09987654321',
      ),
    ];
  }
}
