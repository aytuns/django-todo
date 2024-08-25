from django.test import TestCase
from .models import Todo

class ToDoModelTest(TestCase):

    def test_todo_creation(self):
        todo = Todo.objects.create(title="Test the code coverage article")
        self.assertEqual(todo.title, "Test the code coverage article")
        self.assertFalse(todo.isCompleted)