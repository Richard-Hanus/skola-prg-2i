# Inicializace seznamu
nakupni_seznam = []

# Hlavní smyčka programu
while True:
    # Získání položky od uživatele
    polozka = input("Zadejte název položky (nebo 'exit' pro ukončení programu): ")

    # Ukončení programu, pokud uživatel zadal 'exit'
    if polozka.lower() == 'exit':
        break

    # Přidání položky do seznamu
    nakupni_seznam.append(polozka)

# Výpis všech položek ze seznamu
print("\nVaše položky na nákupním seznamu:")
for index, polozka in enumerate(nakupni_seznam, start=1):
    print(f"{index}. {polozka}")

# Vypsání položky s nejdelším názvem
nejdelsi_polozka = max(nakupni_seznam, key=len)
print(f"\nPoložka s nejdelším názvem: {nejdelsi_polozka}")

# Vypsání položky s nejkratším názvem
nejkratsi_polozka = min(nakupni_seznam, key=len)
print(f"Položka s nejkratším názvem: {nejkratsi_polozka}")

# Vypsání počtu položek v seznamu
pocet_polozek = len(nakupni_seznam)
print(f"Celkový počet položek na seznamu: {pocet_polozek}")