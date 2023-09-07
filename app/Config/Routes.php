<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Guru::index');
$routes->get('/guru', 'Guru::index'); // Display the list of teachers
$routes->get('/guru/edit/(:num)', 'Guru::edit/$1'); // Edit teacher with ID
$routes->post('/guru/simpan', 'Guru::simpan'); // Handle teacher data saving via POST
$routes->get('/guru/hapus/(:num)', 'Guru::hapus/$1'); // Delete teacher with ID
