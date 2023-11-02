from datetime import datetime

# Funkce pro výpočet věku
def vypocet_veku(narozeniny):
    aktualni_datum = datetime.now()
    rozdil = aktualni_datum - narozeniny
    pocet_dni = rozdil.days
    pocet_sekund = rozdil.total_seconds()
    return pocet_dni, pocet_sekund

# Získej datum narození od uživatele
rok = int(input("Zadej rok narození: "))
mesic = int(input("Zadej měsíc narození: "))
den = int(input("Zadej den narození: "))

datum_narozeni = datetime(rok, mesic, den)

# Zavolej funkci pro výpočet věku
dny, sekundy = vypocet_veku(datum_narozeni)

# Vypiš výsledky
print(f"Od vašich narozenin uběhlo {dny} dní.")
print(f"To je přibližně {sekundy:,} sekund.")