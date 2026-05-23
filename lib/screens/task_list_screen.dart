import 'package:flutter/material.dart';
import '../widgets/task_card.dart';
import 'add_task_screen.dart';

class TaskListScreen extends StatelessWidget {
  const TaskListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: const Text(
          "To-Do List",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          TaskCard(
            id: "01",
            title: "Market Research",
            time: "10:00 AM",
            status: "Done",
          ),
          SizedBox(height: 16),

          TaskCard(
            id: "02",
            title: "Competitive Analysis",
            time: "12:00 PM",
            status: "In Progress",
          ),
          SizedBox(height: 16),

          TaskCard(
            id: "03",
            title: "Create Low-fidelity Wireframe",
            time: "07:00 PM",
            status: "To-do",
          ),
          SizedBox(height: 16),

          TaskCard(
            id: "04",
            title: "How to pitch a Design Sprint",
            time: "09:00 PM",
            status: "To-do",
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const AddTaskScreen()),
          );
        },
      ),
    );
  }
}
