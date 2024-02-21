<!DOCTYPE html>
<html lang="cs">
<head>
  <meta charset="UTF-8">
  <title>Nákupní košík</title>
<style>
body {
  font-family: Arial, sans-serif;
}

h1, h2 {
  text-align: center;
}

table {
  width: 100%;
  border-collapse: collapse;
}

th, td {
  border: 1px solid #ddd;
  padding: 8px;
}

th {
  text-align: center;
}

form {
  width: 50%;
  margin: 0 auto;
}

label {
  display: block;
  margin-bottom: 8px;
}

input, select {
  width: 100%;
  padding: 8px;
  border: 1px solid #ccc;
}

button {
  margin-top: 16px;
  padding: 8px 16px;
  background-color: #4caf50;
  color: white;
  border: none;
  cursor: pointer;
}
</style>
</head>
<body>

<h1>Přidání položky do košíku</h1>

<form action="pridat_polozku.php" method="post">

  <label for="nazev">Název položky:</label>
  <input type="text" name="nazev" id="nazev" required>

  <label for="typ">Typ položky:</label>
  <select name="typ" id="typ" required>
    <option value="">Vyberte typ</option>
    <option value="Potraviny">Potraviny</option>
    <option value="Elektronika">Elektronika</option>
    <option value="Oblečení">Oblečení</option>
  </select>

  <label for="cena">Cena za kus:</label>
  <input type="number" name="cena" id="cena" required>

  <button type="submit">Přidat do košíku</button>

</form>

<h2>Tabulka položek</h2>

<table>
  <tr>
    <th>ID</th>
    <th>Název</th>
    <th>Cena</th>
    <th>Typ</th>
  </tr>

  <?php

// Připojení k databázi
$server = "localhost";
$user = "root";
$password = "";
$databaze = "nakupni_kosik";

$conn = new mysqli($server, $user, $password, $databaze);

// Kontrola připojení
if ($conn->connect_error) {
  die("Připojení k databázi se nezdařilo: " . $conn->connect_error);
}

// SQL dotaz pro vypsání všech položek
$sql = "SELECT * FROM polozky";

// Výsledek dotazu
$result = $conn->query($sql);

// Zpracování výsledku
if ($result->num_rows > 0) {
  // Vypisování položek
  while ($row = $result->fetch_assoc()) {
    echo "<tr>";
    echo "<td>" . $row["id"] . "</td>";
    echo "<td>" . $row["nazev_polozky"] . "</td>";
    echo "<td>" . $row["cena_kus"] . "</td>";
    echo "<td>" . $row["typ"] . "</td>";
    echo "</tr>";
  }
} else {
  echo "V tabulce nejsou žádné položky.";
}

// Uzavření připojení
$conn->close();

?>

</table>

</body>
</html>