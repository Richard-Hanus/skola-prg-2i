# Funkce pro vytvoření nového textového souboru
def vytvor_soubor():
    with open("data.txt", "w") as soubor:
        print("Nový textový soubor 'data.txt' byl vytvořen.")

# Funkce pro přidání textu do stávajícího souboru
def pridej_text():
    text = input("Zadej text: ")
    with open("data.txt", "a") as soubor:
        soubor.write(text + "\n")
    print("Text byl úspěšně přidán do souboru 'data.txt'.")

# Funkce pro přečtení obsahu souboru
def precti_text():
    try:
        with open("data.txt", "r") as soubor:
            obsah = soubor.read()
            print("Obsah souboru 'data.txt':")
            print(obsah)
    except FileNotFoundError:
        print("Soubor 'data.txt' neexistuje. Zvolte možnost 1 pro vytvoření nového souboru.")

# Hlavní program
while True:
    print("\nTextový editor 2023\n")
    print("Vyberte si jednu z možností:")
    print("1. Vytvoř nový textový soubor")
    print("2. Přidej text")
    print("3. Přečti text")
    print("4. Konec")

    volba = input("Vaše volba: ")

    if volba == "1":
        vytvor_soubor()
    elif volba == "2":
        pridej_text()
    elif volba == "3":
        precti_text()
    elif volba == "4":
        break
    else:
        print("Neplatná volba. Zvolte číslo od 1 do 4.")