<?php
$url = $_GET['_url'];

$route = explode('/',$url);


if (count($route) == 1 && $route[0] == '') {
    $route[0] = 'home';
    $route[1] = 'index';
}

if (count($route) == 1 && $route[0] == 'signup') {
    $route[0] = 'signup';
    $route[1] = 'index';
}

if (count($route) == 1 && $route[0] == 'home') {
    $route[0] = 'home';
    $route[1] = 'index';
}

if (count($route) == 1 && $route[0] == 'signin') {
    $route[0] = 'signin';
    $route[1] = 'index';
}

if (count($route) == 1 && $route[0] == 'basket') {
    $route[0] = 'basket';
    $route[1] = 'index';
}

if (count($route) == 1 && $route[0] == 'about') {
    $route[0] = 'about';
    $route[1] = 'index';
}

if (count($route) == 1 && $route[0] == 'admin') {
    $route[0] = 'admin';
    $route[1] = 'index';
}

if (count($route) == 1 && $route[0] == 'newrelease') {
    $route[0] = 'newrelease';
    $route[1] = 'index';
}

if (count($route) == 1 && $route[0] == 'category') {
    $route[0] = 'category';
    $route[1] = 'index';
}

if (count($route) == 1 && $route[0] == 'product') {
    $route[0] = 'product';
    $route[1] = 'index';
}

if (count($route) == 1 && $route[0] == 'complete') {
    $route[0] = 'complete';
    $route[1] = 'index';
}

if (count($route) == 1 && $route[0] == 'search') {
    $route[0] = 'search';
    $route[1] = 'index';
}

if (count($route) == 1 && $route[0] == 'sessionclose') {
    $route[0] = 'sessionclose';
    $route[1] = 'index';
}

if (!isset($route[1])) {
    $route[1] = 'index';
}