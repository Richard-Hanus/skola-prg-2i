class Autor:
    def __init__(self, jmeno, prijmeni, vek):
        self.jmeno = jmeno
        self.prijmeni = prijmeni
        self.vek = vek
        self.knihy = []

    def pridat_knihu(self, kniha):
        self.knihy.append(kniha)

    def vypis_informace(self):
        print(f"Autor: {self.jmeno} {self.prijmeni}")
        print(f"Věk: {self.vek}")
        print("Seznam knih:")
        for kniha in self.knihy:
            print(f"- {kniha.nazev}")

class Kniha:
    def __init__(self, nazev, vazba, pocet_stran, isbn, rok_vydani, popis, zanr, cena):
        self.nazev = nazev
        self.vazba = vazba
        self.pocet_stran = pocet_stran
        self.isbn = isbn
        self.rok_vydani = rok_vydani
        self.popis = popis
        self.zanr = zanr
        self.cena = cena

    def vypis_informace(self):
        print(f"Kniha: {self.nazev}")
        print(f"Vazba: {self.vazba}")
        print(f"Počet stran: {self.pocet_stran}")
        print(f"ISBN: {self.isbn}")
        print(f"Rok vydání: {self.rok_vydani}")
        print(f"Popis: {self.popis}")
        print(f"Žánr: {self.zanr}")
        print(f"Cena: {self.cena} Kč")

# Vytvoření autorů a knih
autor1 = Autor("J.K.", "Rowling", 56)
kniha1 = Kniha("Harry Potter and the Philosopher's Stone", "Měkká", 320, "978-0747532743", 1997, "První díl série Harry Potter", "Fantasy", 299)
kniha2 = Kniha("Harry Potter and the Chamber of Secrets", "Tvrdá", 368, "978-0747538493", 1998, "Druhý díl série Harry Potter", "Fantasy", 349)

autor2 = Autor("George R.R.", "Martin", 73)
kniha3 = Kniha("A Game of Thrones", "Tvrdá", 694, "978-0553103540", 1996, "První díl série A Song of Ice and Fire", "Fantasy", 599)
kniha4 = Kniha("A Clash of Kings", "Tvrdá", 761, "978-0553108033", 1998, "Druhý díl série A Song of Ice and Fire", "Fantasy", 649)

# Přidání knih autorům
autor1.pridat_knihu(kniha1)
autor1.pridat_knihu(kniha2)
autor2.pridat_knihu(kniha3)
autor2.pridat_knihu(kniha4)

# Vypsání informací o autorovi a jeho knihách
autor1.vypis_informace()
print()
autor2.vypis_informace()
