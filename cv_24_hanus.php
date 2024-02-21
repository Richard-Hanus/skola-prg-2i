<?php

// Pole s 7 textovými položkami
$pole = array("jablko", "banán", "pomeranč", "hruška", "meloun", "ananas", "kiwi");

// Náhodný výběr a výpis položky
$nahodny_index = rand(0, count($pole) - 1);
$vybrana_polozka = $pole[$nahodny_index];
echo "Náhodně vybraná položka: " . $vybrana_polozka . "<br>";

// Délka vybraného prvku
$delka_polozky = strlen($vybrana_polozka);
echo "Délka vybraného prvku: " . $delka_polozky . "<br>";

// Velikost pole
$velikost_pole = count($pole);
echo "Velikost pole: " . $velikost_pole . "<br>";

// Vypisování všech položek z pole
echo "<br>";
echo "Všechny položky v poli:<br>";
foreach ($pole as $polozka) {
  echo $polozka . "<br>";
}

?>