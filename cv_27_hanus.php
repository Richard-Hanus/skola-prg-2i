<!DOCTYPE html>
<html lang="cs">
<head>
  <meta charset="UTF-8">
  <title>Formulář</title>
</head>
<body>

<h1>Formulář</h1>

<form action="zpracovani.php" method="post">

  Jméno: <input type="text" name="jmeno" required><br>
  Věk: <input type="number" name="vek" required><br>

  <button type="submit">Odeslat</button>
<?php

// Zjistěte, zda byl formulář odeslán
if (isset($_POST["jmeno"]) && isset($_POST["vek"])) {

  // Vyhodnocení, zda byly všechny položky vyplněné
  if (empty($_POST["jmeno"])) {
    echo "Zadejte prosím jméno.";
    exit;
  }

  if (empty($_POST["vek"])) {
    echo "Zadejte prosím věk.";
    exit;
  }

  // Zjistěte, zda je věk větší než 18
  if ($_POST["vek"] < 18) {
    echo "Přístup k obsahu je povolen pouze osobám starším 18 let.";
    exit;
  }

  // Odeslaná data
  echo "Jméno: " . $_POST["jmeno"] . "<br>";
  echo "Věk: " . $_POST["vek"] . "<br>";

  // Pole s alespoň 5 jmény
  $pole = array("Jana", "Petr", "Anna", "Martin", "Michaela");

  // Náhodný výběr a výpis položky
  $nahodny_index = rand(0, count($pole) - 1);
  $vybrana_polozka = $pole[$nahodny_index];
  echo "Náhodně vybraná položka: " . $vybrana_polozka . "<br>";

  // Délka vybraného prvku
  $delka_polozky = strlen($vybrana_polozka);
  echo "Délka vybraného prvku: " . $delka_polozky . "<br>";

  // Vypisování všech položek z pole
  echo "<br>";
  echo "Všechny položky v poli:<br>";
  foreach ($pole as $polozka) {
    echo $polozka . "<br>";
  }

} else {
  echo "Formulář nebyl odeslán.";
}

?>
</form>

</body>
</html>