# Funkce pro převod měny
def convert_currency(amount, exchange_rate):
    return amount * exchange_rate

# Získání vstupu od uživatele
source_currency = input("Zadejte základní měnu: ")
amount = float(input("Zadejte částku: "))
exchange_rate = float(input("Zadejte směnný kurz: "))
target_currency = input("Zadejte cílovou měnu: ")

# Přepočet měny
result = convert_currency(amount, exchange_rate)

# Výstup
print(f"{amount} {source_currency} = {result} {target_currency}")

# Uložení výsledků do souboru
with open("prepocty.txt", "a") as file:
    file.write(f"{amount} {source_currency} = {result} {target_currency}\n")