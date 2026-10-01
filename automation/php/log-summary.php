<?php

declare(strict_types=1);

if ($argc < 2) {
    fwrite(STDERR, "Uso: php log-summary.php <arquivo.log>\n");
    exit(2);
}

$path = $argv[1];
if (!is_file($path) || !is_readable($path)) {
    fwrite(STDERR, "Arquivo ilegível ou inexistente.\n");
    exit(2);
}

$counts = [
    'ERROR' => 0,
    'WARNING' => 0,
    'INFO' => 0,
    'OTHER' => 0,
];

$handle = fopen($path, 'rb');
if ($handle === false) {
    fwrite(STDERR, "Não foi possível abrir o arquivo.\n");
    exit(2);
}

while (($line = fgets($handle)) !== false) {
    if (preg_match('/\b(ERROR|ERR|CRITICAL|FATAL)\b/i', $line) === 1) {
        $counts['ERROR']++;
    } elseif (preg_match('/\b(WARNING|WARN)\b/i', $line) === 1) {
        $counts['WARNING']++;
    } elseif (preg_match('/\bINFO\b/i', $line) === 1) {
        $counts['INFO']++;
    } else {
        $counts['OTHER']++;
    }
}

fclose($handle);

foreach ($counts as $level => $count) {
    echo $level . ': ' . $count . PHP_EOL;
}

exit(0);
