Start `MyFoodBag.Func.Billing` in debug 

Open Azure Storage Explorer. Look for `Emulator - Deafult Ports (Key)` and under `Queues` will be `billing-email`

Sample message for `billing-email` queue

```
{
  messageId: "test-message",
  value: {
    deliveryId: "3",
    reason: "PaymentSucceededInDps",
    deliveryPaymentId: "1",
    deliveryIsRemoved: "false"
  }
}
```
