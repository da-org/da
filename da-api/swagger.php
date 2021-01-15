<?php
require("vendor/autoload.php");
$openapi = \OpenApi\scan('/controller');
header('Content-Type: application/x-yaml');
echo $openapi->toYaml();