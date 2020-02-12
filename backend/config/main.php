<?php
$params = array_merge(
    require __DIR__ . '/../../common/config/params.php',
    require __DIR__ . '/../../common/config/params-local.php',
    require __DIR__ . '/params.php',
    require __DIR__ . '/params-local.php'
);

return [
    'id' => 'app-backend',
    'basePath' => dirname(__DIR__),
    'controllerNamespace' => 'backend\controllers',
    'bootstrap' => ['log'],
    'modules' => [
        // SETUP KONFIGURASI KARTIK GRIDVIEW
        'gridview' => [
            'class' => 'kartik\grid\Module',
        ],
    ],
    'components' => [
        'request' => [
            'csrfParam' => '_csrf-backend',
        ],
        'user' => [
            'identityClass' => 'common\models\User',
            'enableAutoLogin' => true,
            'identityCookie' => ['name' => '_identity-backend', 'httpOnly' => true],
        ],
        'session' => [
            // this is the name of the session cookie used for login on the backend
            'name' => 'advanced-backend',
        ],

        // NICKCV ENCRYPTER
        'encrypter' => [
            'class'               => 'nickcv\encrypter\components\Encrypter',
            'globalPassword'      => 't3zpDfQYk6owjlQNMdPo
                                        QzomULf6ltL5P4ucsnwA
                                        GvTirWAd3iJGngZndLYd
                                        b3nPlKlXwIWSaxTtwIYC
                                        AFhFRym5QU7vw5h3QxKE
                                        GIiQ7S4GoAF4SBfWbLDE
                                        alskdlam',
            'iv'                  => 'OVat3ZkkG3h9lU4F',
            'useBase64Encoding'   => true,
            'use256BitesEncoding' => false,
        ],

        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
        'errorHandler' => [
            'errorAction' => 'site/error',
        ],

        'urlManager' => [
            'enablePrettyUrl' => true,
            'showScriptName' => false,
            'rules' => [
                '<controller:\w+>/<id:\d+>' => '<controller>/view',
                '<controller:\w+>/<action:\w+>/<id:\d+>' => '<controller>/<action>',
                '<controller:\w+>/<action:\w+>' => '<controller>/<action>',
            ],
        ],
    ],
    'params' => $params,
];
