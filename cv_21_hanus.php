<?php

// Pole s 5 textovými položkami
$pole = array("jablko", "banán", "pomeranč", "hruška", "meloun");

// Vypisování položek pole na samostatných řádcích
foreach ($pole as $polozka) {
  echo $polozka . "<br>";
}

// Spočítání velikosti pole
$pocet_polozek = count($pole);

// Podmínka pro "Velké" a "Malé" pole
if ($pocet_polozek > 4) {
  echo "Velké pole";
} else {
  echo "Malé pole";
}

echo "<br>";

// Bonus - spočítání a vypisování délky každé položky
foreach ($pole as $polozka) {
  $delka_polozky = strlen($polozka);
  echo "Délka položky \"" . $polozka . "\": " . $delka_polozky . "<br>";
}

?>