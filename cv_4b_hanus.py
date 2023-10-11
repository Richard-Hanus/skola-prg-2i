import random

# Seznam slov pro hru
slova = ["jabko", "hory", "slunce", "pes", "kocka", "stul"]

# Vybrání náhodného slova
vybrane_slovo = random.choice(slova)

# Inicializace proměnných
zivoty = 3
uhadnute_pismeno = ["_"] * len(vybrane_slovo)

# Funkce pro zobrazení stavu hry
def zobraz_stav_hry():
    print(" ".join(uhadnute_pismeno))
    print(f"Zivoty: {zivoty}")

# Hlavní smyčka hry
while zivoty > 0:
    zobraz_stav_hry()
    hadane_pismeno = input("Hadej pismeno: ").lower()

    if hadane_pismeno in vybrane_slovo:
        for i in range(len(vybrane_slovo)):
            if vybrane_slovo[i] == hadane_pismeno:
                uhadnute_pismeno[i] = hadane_pismeno

        if "".join(uhadnute_pismeno) == vybrane_slovo:
            print("Gratuluji, vyhral jsi!")
            break
    else:
        zivoty -= 1
        print(f"Spatne pismeno. Zbyvajici zivoty: {zivoty}")

# Konec hry
if zivoty == 0:
    print(f"Prohral jsi. Vybrane slovo bylo: {vybrane_slovo}")