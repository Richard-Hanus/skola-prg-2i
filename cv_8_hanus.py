import math

class Geometrie:
    @staticmethod
    def obsah_ctverec(a):
        obsah = a * a
        print(f"Obsah čtverce se stranou {a} je {obsah}.")

    @staticmethod
    def obsah_obdelnik(a, b):
        obsah = a * b
        print(f"Obsah obdélníku se stranami {a} a {b} je {obsah}.")

    @staticmethod
    def objem_koule(r):
        objem = (4/3) * math.pi * r**3
        print(f"Objem koule s poloměrem {r} je {objem}.")

    @staticmethod
    def obsah_valce(r, v):
        obsah = 2 * math.pi * r**2 + 2 * math.pi * r * v
        print(f"Obsah válce s poloměrem {r} a výškou {v} je {obsah}.")

    @staticmethod
    def prumerNaPolomer(d):
        polomer = d / 2
        print(f"Poloměr zadaného průměru {d} je {polomer}.")

# Příklady použití třídy:
Geometrie.obsah_ctverec(5)
Geometrie.obsah_obdelnik(4, 7)
Geometrie.objem_koule(3)
Geometrie.obsah_valce(2, 6)
Geometrie.prumerNaPolomer(10)