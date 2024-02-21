<!DOCTYPE html>
<html lang="cs">
<head>
  <meta charset="UTF-8">
  <title>Formulář</title>
</head>
<body>

<form action="zpracovani.php" method="post">

  Jméno: <input type="text" name="jmeno" required><br>
  Datum: <input type="date" name="datum" required><br>
  E-mail: <input type="email" name="email" required><br>

  <input type="submit" value="Odeslat">
<?php

// Zjistěte, zda byl formulář odeslán
if (isset($_POST["jmeno"]) && isset($_POST["datum"]) && isset($_POST["email"])) {

  // Spočítání délky zadaného jména
  $delka_jmena = strlen($_POST["jmeno"]);

  // Kontrola, zda byl vyplněn datum
  if (empty($_POST["datum"])) {
    echo "Zadejte prosím datum.";
    exit;
  }

  // Kontrola, zda byl zadán e-mail
  if (!filter_var($_POST["email"], FILTER_VALIDATE_EMAIL)) {
    echo "Zadejte prosím platný e-mail.";
    exit;
  }

  // Vypisování všech dat
  echo "Jméno: " . $_POST["jmeno"] . "<br>";
  echo "Datum: " . $_POST["datum"] . "<br>";
  echo "E-mail: " . $_POST["email"] . "<br>";

} else {
  echo "Formulář nebyl odeslán.";
}

?>
</form>

</body>
</html>