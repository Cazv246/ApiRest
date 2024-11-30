<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Home::index');


$routes->group('', ['namespace' => 'App\Controllers'], function($routes) {
    $routes->get('clientes', 'Clientes::index');
    $routes->get('clientes/(:num)', 'Clientes::show/$1');

    $routes->get('productos', 'Productos::index');
    $routes->get('productos/(:num)', 'Productos::show/$1');
});
