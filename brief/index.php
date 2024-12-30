<?php

require_once __DIR__ . '/config/Database.php';
require_once __DIR__ . '/Crud.php';

$connexion = (new Database())->con();

if (!$connexion) {
    die("Connection failed"); 
}

$data = [
    'name' => 'kudo',
    'position' => 'gk',
    'rating'=> 98,
    'pace' => 10,
    'shooting' => 10,
    'passing' => 10,
    'dribbling' => 10,
    'defending' => 10,
    'physicality' => 10
]; 


$players = new Crud();

 $players->insertRecord('players', $data);

// $players->deleteRecord('players', 4);


 //$players->updateRecord('players',$data, 1);


// SEELCT * FROM players;

// $players->selectRecords('players');

$rows = $players->selectRecords('players' );
echo "<pre>";
print_r($rows);
echo "</pre>";