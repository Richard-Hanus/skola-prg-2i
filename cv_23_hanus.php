<!DOCTYPE html>
<html lang="cs">
<head>
  <meta charset="UTF-8">
  <title>Formulář</title>
</head>
<body>

<form action="zpracovani.php" method="post">

  Jméno: <input type="text" name="jmeno" required><br>
  E-mail: <input type="email" name="email"><br>

  <input type="submit" value="Odeslat">
<?php

// Zjistěte, zda byl formulář odeslán
if (isset($_POST["jmeno"]) && isset($_POST["email"])) {

  // Vyhodnocení, zda byly všechny položky vyplněné
  if (empty($_POST["jmeno"])) {
    echo "Zadejte prosím jméno.";
    exit;
  }

  // Zjistěte délku zadaného jména
  $delka_jmena = strlen($_POST["jmeno"]);

  // Zjistěte, zda je jméno delší než 5 znaků
  if ($delka_jmena > 5) {
    echo "Jméno je delší než 5 znaků.";
  } else {
    echo "Jméno je kratší než 5 znaků.";
  }

  echo "<br>";

  // Odeslaná data
  echo "Jméno: " . $_POST["jmeno"] . "<br>";
  echo "E-mail: " . $_POST["email"] . "<br>";

} else {
  echo "Formulář nebyl odeslán.";
}

?>
</form>

</body>
</html>
