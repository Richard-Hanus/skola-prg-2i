def obvod_ctverec(a):
    obvod = 4 * a
    print(f"Obvod čtverce se stranou {a} je {obvod}.")

def obvod_obdelnik(a, b):
    obvod = 2 * (a + b)
    print(f"Obvod obdélníka se stranami {a} a {b} je {obvod}.")

def obsah_ctverec(a):
    obsah = a ** 2
    print(f"Obsah čtverce se stranou {a} je {obsah}.")

def obsah_obdelnik(a, b):
    obsah = a * b
    print(f"Obsah obdélníka se stranami {a} a {b} je {obsah}.")

# Testování funkcí
strana_ctverce = 5
strana_a = 4
strana_b = 6

obvod_ctverec(strana_ctverce)
obsah_ctverec(strana_ctverce)
obvod_obdelnik(strana_a, strana_b)
obsah_obdelnik(strana_a, strana_b)