def show_menu(title, items):
    print(f"\n{title}")
    for i, (name, price) in enumerate(items.items(), start=1):
        print(f"{i}. {name} {price} KR")
    print(f"{len(items)+1}. Til baka")

def select_item(items, cart, peng):
    choice = int(input("\nVeldu: "))
    if choice == len(items) + 1:
        return cart, peng  # back
    item_name = list(items.keys())[choice - 1]
    price = items[item_name]
    if peng - price < 0:
        print("Ekki næg peningur!")
    else:
        cart += price
        peng -= price
        print(f"Þú bættir {item_name} í körfuna þína")
    input("1 Til þess að halda áfram: ")
    return cart, peng

def main():
    cart = 0
    peng = 10000

    drinks = {
        "Grænn Kristall": 180,
        "Pepsi MAX": 188,
        "Coke Zero": 190,
        "Powerade": 200,
        "Red Bull": 188
    }

    candy = {
        "Sour Patch Kids": 390,
        "Haribo": 400,
        "Pringles": 450,
        "Doritos": 560,
        "Súkkulaði": 500
    }

    food = {
        "Ribeye steik": 3990,
        "Spaghetti": 990,
        "Pizza": 1290,
        "Hakk": 1399,
        "Fiskur": 2590
    }

    while True:
        print("\n1 Krónan\n2 Veðja\n3 Aldursdæmerí\n4 LOKA")
        val = int(input("Veldu: "))

        if val == 4:
            break
        elif val == 1:
            while True:
                print("\n1 Drykkir\n2 Nammi\n3 Matur\n4 Karfa\n5 Til baka")
                vali = int(input("Veldu: "))

                if vali == 1:
                    show_menu("Drykkir", drinks)
                    cart, peng = select_item(drinks, cart, peng)
                elif vali == 2:
                    show_menu("Nammi", candy)
                    cart, peng = select_item(candy, cart, peng)
                elif vali == 3:
                    show_menu("Matur", food)
                    cart, peng = select_item(food, cart, peng)
                elif vali == 4:
                    print(f"\nÞú hefur {cart} KR í körfunni þinni")
                    print(f"Þú hefur {peng} KR eftir")
                    input("1 Til þess að halda áfram: ")
                elif vali == 5:
                    break

if __name__ == "__main__":
    main()
