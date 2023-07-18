class RecentFile {
  final String operation,subOperation, amount, date, status;

  RecentFile({this.operation,this.subOperation, this.date, this.amount, this.status});
}

List demoRecentFiles = [
  RecentFile(
    operation: "Withdraw",
    subOperation:"Hash: 2111853732263042",
    date: "Feb 17,2023",
    amount: "\$50,00.00",
    status: "Completed",
  ),
];
