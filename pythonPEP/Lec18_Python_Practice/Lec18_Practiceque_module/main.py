import calculator
import discount
import tax
import invoice

item = input("Enter Item Name: ")
price = float(input("Enter Price: "))
qty = int(input("Enter Quantity: "))

amount = calculator.mul(price, qty)

dis = discount.discount(amount)

amount_after_discount = amount - dis

gst = tax.tax(amount_after_discount)

final_bill = amount_after_discount + gst

invoice.invoice(item, price, qty, dis, gst, final_bill)