<!DOCTYPE html>
<html lang="cs">
<head>
  <meta charset="UTF-8">
  <title>Studenti</title>
</head>
<body>

<table>
  <tr>
    <th>ID</th>
    <th>Jméno a příjmení</th>
    <th>Datum narození</th>
    <th>Třída</th>
  </tr>

  <?php include "vypsat_studenty.php"; ?>
<?php

// Připojení k databázi
$server = "localhost";
$user = "root";
$password = "";
$databaze = "test";

$conn = new mysqli($server, $user, $password, $databaze);

// Kontrola připojení
if ($conn->connect_error) {
  die("Připojení k databázi se nezdařilo: " . $conn->connect_error);
}

// SQL příkaz
$sql = "SELECT * FROM studenti";

// Výsledek dotazu
$result = $conn->query($sql);

// Zpracování výsledku
if ($result->num_rows > 0) {
  // Vypisování dat
  while ($row = $result->fetch_assoc()) {
    echo "<tr>";
    echo "<td>" . $row["id"] . "</td>";
    echo "<td>" . $row["jmeno_prijmeni"] . "</td>";
    echo "<td>" . $row["datum_narozeni"] . "</td>";
    echo "<td>" . $row["trida"] . "</td>";
    echo "</tr>";
  }
} else {
  echo "V databázi nejsou žádné záznamy.";
}

// Uzavření připojení
$conn->close();

?>
</table>

</body>
</html>