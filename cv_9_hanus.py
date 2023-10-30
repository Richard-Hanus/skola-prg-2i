import math

class Rovnice:
    def vypocti_kvadratickou_rovnici(self, a, b, c):
        if a == 0:
            raise ValueError("Kvadratický koeficient 'a' nesmí být roven nule.")
        
        diskriminant = b**2 - 4*a*c

        if diskriminant > 0:
            x1 = (-b + math.sqrt(diskriminant)) / (2*a)
            x2 = (-b - math.sqrt(diskriminant)) / (2*a)
            return x1, x2
        elif diskriminant == 0:
            x = -b / (2*a)
            return x
        else:
            return "Žádná reálná řešení"

# Příklad použití třídy:
kvadrat = Rovnice()
a = 1
b = -3
c = 2
res = kvadrat.vypocti_kvadratickou_rovnici(a, b, c)
print("Řešení kvadratické rovnice:", res)