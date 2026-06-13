enum OrderStatus {
  pending,
  processing,
  shipped,
  delivered,
  cancelled
}

class Order {
  String orderId;
  String customerName;
  OrderStatus status;
  double totalAmount;

  Order(this.orderId, this.customerName, this.totalAmount) : status = OrderStatus.pending;

  void updateStatus(OrderStatus newStatus) {
    print("Order $orderId : ${status.name} -> ${newStatus.name}");
    status = newStatus;
  }

  void printInfo() {
    print("Order : $orderId | Pelanggan : $customerName | Total : $totalAmount | Status : ${status.name.toUpperCase()}");
  }
}

void main() {
  Order order = Order("ORD-001", "Budi Santono", 350000);
  order.printInfo();

  order.updateStatus(OrderStatus.processing);
  order.updateStatus(OrderStatus.shipped);
  order.updateStatus(OrderStatus.delivered);
    
  order.printInfo();
}

