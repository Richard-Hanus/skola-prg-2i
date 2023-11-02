import random

# Vytvoř pole možných tahů
moznosti = ["kámen", "nůžky", "papír"]

# Počáteční skóre
skore_uzivatele = 0
skore_pocitace = 0

while True:
    # Uživatel zadá volbu
    volba_uzivatele = input("Zvolte kámen, nůžky nebo papír (pro ukončení napište 'konec'): ").lower()
    
    # Zkontroluj, zda uživatel chce ukončit hru
    if volba_uzivatele == 'konec':
        break

    # Zkontroluj platnost volby uživatele
    if volba_uzivatele not in moznosti:
        print("Nesprávná volba. Zadejte kámen, nůžky nebo papír.")
        continue

    # Počítač vybere náhodnou volbu
    volba_pocitace = random.choice(moznosti)

    # Výpočet výsledku
    if volba_uzivatele == volba_pocitace:
        print(f"Remíza! Počítač i vy jste si vybrali {volba_uzivatele}.")
    elif (volba_uzivatele == "kámen" and volba_pocitace == "nůžky") or (volba_uzivatele == "nůžky" and volba_pocitace == "papír") or (volba_uzivatele == "papír" and volba_pocitace == "kámen"):
        print(f"Vyhráli jste! Počítač si vybral {volba_pocitace}.")
        skore_uzivatele += 1
    else:
        print(f"Prohráli jste. Počítač si vybral {volba_pocitace}.")
        skore_pocitace += 1

# Zobrazit konečné skóre
print(f"Konečné skóre - Uživatel: {skore_uzivatele}, Počítač: {skore_pocitace}")