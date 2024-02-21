<!DOCTYPE html>
<html lang="cs">
<head>
  <meta charset="UTF-8">
  <title>Formulář</title>
</head>
<body>

<h1>Formulář</h1>

<form action="zpracovani.php" method="post">

  <button type="submit">Odeslat</button>
<?php

// Pole s alespoň 5 položkami
$pole = array("jablko", 10, true, "modrá", array(1, 2, 3));

// Náhodný výběr a výpis položky
$nahodny_index = rand(0, count($pole) - 1);
$vybrana_polozka = $pole[$nahodny_index];
echo "Náhodně vybraná položka: " . $vybrana_polozka . "<br>";

// Délka vybraného prvku
$delka_polozky = strlen($vybrana_polozka);
if (is_array($vybrana_polozka)) {
  $delka_polozky = count($vybrana_polozka);
}
echo "Délka vybraného prvku: " . $delka_polozky . "<br>";

// Vypisování všech položek z pole
echo "<br>";
echo "Všechny položky v poli:<br>";
foreach ($pole as $polozka) {
  echo $polozka . "<br>";
}

?>

</form>

</body>
</html>