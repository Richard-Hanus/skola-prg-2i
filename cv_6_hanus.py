class Televize:
    def __init__(self):
        self.aktualniKanal = 0
        self.zapnuto = False

    def zapni(self):
        if not self.zapnuto:
            self.zapnuto = True
            print("Televize byla zapnuta.")

    def vypni(self):
        if self.zapnuto:
            self.zapnuto = False
            print("Televize byla vypnuta.")

    def prepniKanal(self, kanal):
        if self.zapnuto:
            self.aktualniKanal = kanal
            print(f"Nyní jste na kanálu {kanal}.")
        else:
            print("Nejprve zapněte televizi.")

# Vytvoření instance televize
moje_televize = Televize()

# Použití funkcí
moje_televize.zapni()
moje_televize.prepniKanal(5)
moje_televize.vypni()