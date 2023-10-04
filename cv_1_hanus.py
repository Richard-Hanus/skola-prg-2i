try:
    # Vyzvěte uživatele k zadání jména
    jmeno = input("Zadejte své jméno: ")

    # Zkontrolujte délku jména
    if len(jmeno) > 10:
        raise ValueError("Jméno nesmí mít více než 10 znaků.")

    # Vytvořte soubor "jmeno.txt" a uložte jméno
    with open("jmeno.txt", "w") as soubor:
        soubor.write(jmeno)

    print("Jméno bylo úspěšně uloženo do souboru 'jmeno.txt'.")

except ValueError as e:
    print(f"Chyba: {e}")
except Exception as e:
    print(f"Došlo k neočekávané chybě: {e}")
