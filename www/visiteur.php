<!DOCTYPE html>
<html>
    <head>
        <title>Ceci est une page de test avec des balises PHP</title>
        <meta charset="utf-8" />
    </head>
    <body>
        <h2>Page de test</h2>

        <p>
            <fieldset>
                <legend>Cette page contient les informations des utilisateurs de la base de donnée.</legend>
                <?php

                    $dbh = new PDO('mysql:host=db;dbname=mysql', 'marion', 'marion');

                        $sql = 'SELECT * FROM utilisateurs ORDER BY age';
                        foreach ($dbh->query($sql) as $row) {
                            echo $row['name'] . "\t\t";
                            echo $row['age'] . "\t\t";
                            echo $row['pays'] . '<br>';
                        }
                ?>
            </fieldset>
        </p>
    </body>
</html>