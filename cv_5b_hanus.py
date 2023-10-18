def vyres_linearni_rce():
    try:
        a = float(input("Zadejte hodnotu a: "))
        b = float(input("Zadejte hodnotu b: "))

        if a == 0:
            if b == 0:
                print("Rovnice má nekonečně mnoho řešení.")
            else:
                print("Rovnice nemá žádné řešení.")
        else:
            x = -b / a
            print(f"Řešení rovnice {a}x + {b} = 0 je x = {x}")
    except ValueError:
        print("Zadali jste neplatné číslo.")

vyres_linearni_rce()