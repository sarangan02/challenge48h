<?php include("inc/header.inc.php"); ?>

  <div class="container-fluid p-0">

    <section class="resume-section p-3 p-lg-5 d-flex align-items-center" id="about">
      <div class="w-100">
      <img src="img/header.jpg" class="images_LBC">
        <h1 class="mb-0">Leboncoin
          <span class="text-primary">meilleur site de transaction en ligne</span>
        </h1>
      </div>
    </section>

    <hr class="m-0">

    <?php

$db_server = 'localhost'; // Adresse du serveur MySQL
$db_name = 'projet_web';            // Nom de la base de données
$db_user_login = 'root';  // Nom de l'utilisateur
$db_user_pass = '';       // Mot de passe de l'utilisateur

// Ouvre une connexion au serveur MySQL
$conn = mysqli_connect($db_server,$db_user_login, $db_user_pass, $db_name);

 // Récupère la recherche
 $recherche = isset($_POST['recherche']) ? $_POST['recherche'] : '';

 // la requete mysql
 $q = $conn->query("SELECT * FROM objet_annonce WHERE titre LIKE '%$recherche%' OR Instants_de_consommation LIKE '%$recherche%' LIMIT 10");?>

<section class="resume-section p-3 p-lg-5 d-flex justify-content-center" id="experience">
      <div class="w-100">
        <h2 class="mb-5">Mes Annonces</h2>

<?php
 // affichage du résultat
 while( $recherche = mysqli_fetch_array($q)){?>
<br><div class="card">
    <div class="card-body">
        <br>
        <h3 class="card-title"><?php echo $recherche['titre'] ; ?></h3>
        <div class="subheading mb-3"><?php echo $recherche['Instants_de_consommation'] ; ?> </div>
        <p><?php echo $recherche['description'] ; ?>.</p>
        </div>
        <div class="subheading mb-3"><?php echo $recherche['ambiance'] ; ?> </div>
        <div class="subheading mb-3"><?php echo $recherche['composante_du_repas'] ; ?> </div>
        <div class="subheading mb-3"><?php echo $recherche['prise_de_vue'] ; ?> </div>
        <div class="subheading mb-3"><?php echo $recherche['region'] ; ?> </div>
        <?php
        echo "<div id='img_div' >";
      	echo "<img class='rounded float-left' style='width: 200px;' src='images/".$recherche['image']."' >";
        echo "</div>";?>
        <div class="resume-date text-md-right">
        <span class="text-primary"><?php echo $recherche['date'] ; ?></span><br><?php echo $recherche['statut'] ; ?></div>
  <?php if($recherche['statut'] == "Actif"){?>
                <a href="messagerie/messagerie_client.php?IDtable=<?= $recherche['id'] ?>" class="btn btn-info">Contacter</a>
  <?php }else { ?>
                <a href="#experience" class="btn btn-info">Indisponible</a>
    <?php } ?>
        
        <br>
   <?php } ?>
    </div>
    </section>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for this template -->
  <script src="js/resume.min.js"></script>

</body>

</html>
