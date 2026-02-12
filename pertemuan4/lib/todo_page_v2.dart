import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TodoPagev2 extends StatefulWidget {
  const TodoPagev2({super.key});

  @override
  State<TodoPagev2> createState() => _TodoPageV2State();
}

class _TodoPageV2State extends State<TodoPagev2> {
  final TextEditingController _todoController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  List<Map<String, dynamic>> todoList = [];

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      if (!_focusNode.hasFocus) {
        setState(() {});
      }
    });
  }

  void _addTodo() {
    if (_todoController.text.isNotEmpty) {
      setState(() {
        todoList.add({
          'title': _todoController.text.trim(),
          'isCompleted': false,
        });
        _todoController.clear();
      });
      _focusNode.requestFocus();
    }
  }

  void _toggleTodo(int index) {
    setState(() {
      todoList[index]['isCompleted'] = !todoList[index]['isCompleted'];
    });
  }

  void _deleteTodo(int index) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          title: Text(
            'Delete tasks?',
            style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          content: Text(
            'Are you sure for delete this tasks?',
            style: GoogleFonts.poppins(fontSize: 14),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(
                'Cancel',
                style: GoogleFonts.poppins(color: Colors.grey[600]),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  todoList.removeAt(index);
                });
                Navigator.pop(context);
              },
              child: Text(
                'Delete',
                style: GoogleFonts.poppins(color: Colors.red, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      /// FLOATING BUTTON (AMAN)
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue[600],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        elevation: 6,
        onPressed: _addTodo,
        child: const Icon(Icons.assignment_add, color: Colors.black, size: 22),
      ),

      body: SafeArea(
        child: Column(
          children: [
            /// HEADER
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue[800]!, Colors.blue[600]!],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(24),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'My To-Do',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    '${todoList.where((t) => !t['isCompleted']).length} tasks pending',
                    style: GoogleFonts.poppins(
                      color: Colors.blue[100],
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ]
              ),
            ),

            /// INPUT
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                controller: _todoController,
                focusNode: _focusNode,
                onSubmitted: (_) => _addTodo(),
                decoration: InputDecoration(
                  hintText: 'Add tasks...',
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.task_alt, color: Colors.blue[600], size: 22),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide(color: Colors.blue[200]!, width: 1.5),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide(color: Colors.blue[200]!, width: 1.5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide(color: Colors.blue[600]!, width: 2),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                ),
                style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ),

            /// LIST VIEW
            Expanded(
              child: todoList.isEmpty
                  ? Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.check_circle_outline, size: 64, color: Colors.blue[300]),
                          const SizedBox(height: 16),
                          Text(
                            'Not tasks yet..',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[600],
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Adding your task for your Journey!',
                            style: GoogleFonts.poppins(
                              color: Colors.grey[400],
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    )
                  : ListView.builder (
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      itemCount: todoList.length,
                      itemBuilder: (context, index) {
                        final todo = todoList[index];
                        final isCompleted = todo['isCompleted'] as bool;

                        return Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                            elevation: isCompleted ? 0 : 3,
                            shadowColor: Colors.blue.withValues(alpha: 0.2),
                            color: isCompleted ? Colors.blue[50] : Colors.white,
                            child: ListTile(
                              contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                              leading: GestureDetector(
                                onTap: () => _toggleTodo(index),
                                child: Container(
                                  width: 28,
                                  height: 28,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: isCompleted ? Colors.blue[600]! : Colors.blue[400]!,
                                      width: 2,
                                    ),
                                    color: isCompleted ? Colors.blue[600] : Colors.transparent,
                                  ),
                                  child: isCompleted
                                      ? const Icon(Icons.check, color: Colors.white, size: 16)
                                      : null,
                                ),
                              ),
                              title: Text(
                                todo['title'],
                                style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  decoration: isCompleted ? TextDecoration.lineThrough : TextDecoration.none,
                                  color: isCompleted ? Colors.grey[500] : Colors.grey[800],
                                ),
                              ),
                              trailing: IconButton(
                                icon: Icon(Icons.delete_outline, color: Colors.red[400], size: 22),
                                onPressed: () => _deleteTodo(index),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
  
  @override
  void dispose() {
    _todoController.dispose();
    _focusNode.dispose();
    super.dispose();
  }
}
