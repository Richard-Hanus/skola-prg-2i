# Načtení prvního čísla od uživatele
cislo1 = float(input("Zadejte první číslo: "))

# Rozhodnutí, zda je číslo sudé nebo liché
if cislo1 % 2 == 0:
    print(f"{cislo1} je sudé číslo.")
else:
    print(f"{cislo1} je liché číslo.")

# Zjištění, zda je číslo dělitelné 5 beze zbytku
if cislo1 % 5 == 0:
    print(f"{cislo1} je dělitelné 5 beze zbytku.")
else:
    print(f"{cislo1} není dělitelné 5 beze zbytku.")

# Načtení druhého čísla od uživatele
cislo2 = float(input("Zadejte druhé číslo: "))

# Sečtení a výpis výsledku
soucet = cislo1 + cislo2
print(f"Součet {cislo1} a {cislo2} je {soucet}.")

# Vynásobení a výpis výsledku
nasobek = cislo1 * cislo2
print(f"Násobek {cislo1} a {cislo2} je {nasobek}.")

# Uložení výsledků do souboru výsledky.txt
with open("vysledky.txt", "w") as file:
    file.write(f"Součet {cislo1} a {cislo2} je {soucet}.\n")
    file.write(f"Násobek {cislo1} a {cislo2} je {nasobek}.\n")