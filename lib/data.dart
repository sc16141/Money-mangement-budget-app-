import 'dart:math';
import 'expense_model.dart';

final rand = Random();

final List<double> weeklySpending = [
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
];

List<Expense> _generateExpenses() {
  return List.generate(6, (index) => Expense(name: 'Item $index', cost: rand.nextDouble() * 90));
}

List<Category> categories = [
  Category(name: 'Food', maxAmount: 450, expenses: _generateExpenses()),
  Category(name: 'Clothing', maxAmount: 500, expenses: _generateExpenses()),
  Category(name: 'Utilities', maxAmount: 600, expenses: _generateExpenses()),
  Category(name: 'Entertainment', maxAmount: 330, expenses: _generateExpenses()),
  Category(name: 'Transportation', maxAmount: 500, expenses: _generateExpenses()),
  Category(name: 'Housing', maxAmount: 1000, expenses: _generateExpenses()),
];



class Category {
  final String name;
  final double maxAmount;
  final List<Expense> expenses;

  Category({required this.name, required this.maxAmount, required this.expenses});
}