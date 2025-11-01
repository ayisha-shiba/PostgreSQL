postgres=# SELECT AVG(price) FROM CAR;
        avg
--------------------
 47698.982100000000
(1 row)


postgres=# SELECT MAX(price) FROM CAR;
   max
----------
 99003.41
(1 row)


postgres=# SELECT MIN(price) FROM CAR;
   min
---------
 2318.53
(1 row)


postgres=# SELECT AVG(price) FROM CAR;
        avg
--------------------
 47698.982100000000
(1 row)


postgres=#
postgres=# SELECT make,model,MIN(price) FROM CAR GROUP BY make, model;
     make      |       model        |   min
---------------+--------------------+----------
 Plymouth      | Sundance           | 47207.44
 Infiniti      | FX                 | 23414.34
 Dodge         | Stealth            | 17555.46
 Mercury       | Topaz              | 71843.00
 Cadillac      | SRX                | 54235.60
 Chrysler      | Pacifica           | 23733.31
 Nissan        | Pathfinder         | 50739.93
 Chevrolet     | 3500               | 53587.53
 Alfa Romeo    | 164                |  5521.67
 Mercury       | Grand Marquis      | 46970.62
 Toyota        | Sequoia            |  2318.53
 Ford          | F350               | 34487.28
 Mercedes-Benz | SLK-Class          | 51330.42
 Chrysler      | 300M               | 46967.23
 Mercury       | Mountaineer        | 35085.30
 Ford          | LTD Crown Victoria | 33239.34
 Aston Martin  | V8 Vantage         | 77703.56
 Mitsubishi    | Mirage             | 15469.99
 Pontiac       | Grand Prix         | 22078.30
 Mercedes-Benz | W126               | 34092.65
 Audi          | RS6                | 26716.71
 Infiniti      | QX                 | 46734.91
 Chevrolet     | Express 3500       | 89251.38
 Mercedes-Benz | CLS-Class          | 64444.82
 Ford          | Explorer           | 41214.35
 Honda         | CR-V               | 45419.23
 Pontiac       | Sunbird            | 66098.72
 Chevrolet     | S10                |  5582.35
 Nissan        | Stanza             | 99003.41
 Pontiac       | Aztek              | 17577.14
 Volkswagen    | Cabriolet          | 28638.07
 Subaru        | Legacy             | 67030.50
 GMC           | Safari             | 45873.27
 GMC           | Terrain            | 24163.29
 Audi          | A6                 | 79612.07
 Mitsubishi    | Starion            | 65317.58
 Mitsubishi    | Raider             | 55890.96
 BMW           | 530                | 53927.98
 Maserati      | 228                | 40998.20
 Volkswagen    | Type 2             | 92184.21
 Dodge         | Ram 3500           | 76911.58
 Chevrolet     | 1500               | 58931.23
 Volvo         | XC90               | 24709.50
 Mitsubishi    | Pajero             | 54022.70
 Audi          | TT                 | 65905.02
 Chevrolet     | G-Series 3500      | 22957.58
 Ford          | Ranger             | 32140.14
 Daewoo        | Nubira             | 92239.01
 Honda         | Accord             | 19615.91
 Mercedes-Benz | 300E               | 92785.42
 Chevrolet     | Astro              | 34547.40
 Suzuki        | Swift              | 49333.02
 BMW           | 7 Series           | 25888.56
 Ford          | E250               |  5590.98
 Dodge         | Stratus            | 35301.49
 Ford          | Aerostar           | 91393.15
 Infiniti      | I                  | 24545.52
 Lexus         | RX Hybrid          | 14475.49
 Hummer        | H3T                | 27048.42
 Dodge         | Caliber            | 32736.71
 Acura         | TL                 | 45753.09
 Pontiac       | Vibe               | 35151.45
 Saturn        | Astra              | 46622.18
 Buick         | Rainier            | 45474.51
 GMC           | Sierra 2500        | 71059.03
 Jaguar        | XK Series          | 91758.73
 Eagle         | Vision             | 86620.84
 Chrysler      | New Yorker         | 26770.41
 Buick         | LaCrosse           | 71393.26
 Pontiac       | Grand Am           |  5538.70
 Ford          | Fusion             | 19566.98
 Chevrolet     | Beretta            | 34517.64
 Pontiac       | Bonneville         | 53652.56
 Dodge         | Ram Van 2500       | 94453.21
 Nissan        | Sentra             | 33253.65
 Lexus         | GX                 | 56767.95
 BMW           | M3                 | 59191.96
 Ford          | Lightning          | 86789.08
 Ford          | Thunderbird        | 65428.18
 GMC           | Sierra 3500        | 51570.91
 Pontiac       | Daewoo Kalos       |  7436.82
 Jaguar        | X-Type             | 95792.63
 Honda         | Odyssey            |  4051.45
 Dodge         | Dakota Club        |  6633.50
 Mercedes-Benz | GL-Class           | 61332.71
 Volkswagen    | Eurovan            | 18582.55
 Subaru        | Justy              | 25844.53
 Chevrolet     | Tahoe              | 43890.18
 Suzuki        | Sidekick           | 45545.30
(89 rows)


postgres=# SELECT make,model,MAX(price) FROM CAR GROUP BY make, model;
     make      |       model        |   max
---------------+--------------------+----------
 Plymouth      | Sundance           | 47207.44
 Infiniti      | FX                 | 33427.26
 Dodge         | Stealth            | 17555.46
 Mercury       | Topaz              | 71843.00
 Cadillac      | SRX                | 54235.60
 Chrysler      | Pacifica           | 23733.31
 Nissan        | Pathfinder         | 50739.93
 Chevrolet     | 3500               | 53587.53
 Alfa Romeo    | 164                |  5521.67
 Mercury       | Grand Marquis      | 46970.62
 Toyota        | Sequoia            |  2318.53
 Ford          | F350               | 34487.28
 Mercedes-Benz | SLK-Class          | 51330.42
 Chrysler      | 300M               | 46967.23
 Mercury       | Mountaineer        | 35085.30
 Ford          | LTD Crown Victoria | 33239.34
 Aston Martin  | V8 Vantage         | 77703.56
 Mitsubishi    | Mirage             | 15469.99
 Pontiac       | Grand Prix         | 64407.10
 Mercedes-Benz | W126               | 34092.65
 Audi          | RS6                | 26716.71
 Infiniti      | QX                 | 46734.91
 Chevrolet     | Express 3500       | 89251.38
 Mercedes-Benz | CLS-Class          | 64444.82
 Ford          | Explorer           | 41214.35
 Honda         | CR-V               | 45419.23
 Pontiac       | Sunbird            | 66098.72
 Chevrolet     | S10                |  5582.35
 Nissan        | Stanza             | 99003.41
 Pontiac       | Aztek              | 17577.14
 Volkswagen    | Cabriolet          | 28638.07
 Subaru        | Legacy             | 67030.50
 GMC           | Safari             | 45873.27
 GMC           | Terrain            | 24163.29
 Audi          | A6                 | 79612.07
 Mitsubishi    | Starion            | 65317.58
 Mitsubishi    | Raider             | 55890.96
 BMW           | 530                | 53927.98
 Maserati      | 228                | 63262.46
 Volkswagen    | Type 2             | 92184.21
 Dodge         | Ram 3500           | 76911.58
 Chevrolet     | 1500               | 58931.23
 Volvo         | XC90               | 24709.50
 Mitsubishi    | Pajero             | 54022.70
 Audi          | TT                 | 65905.02
 Chevrolet     | G-Series 3500      | 22957.58
 Ford          | Ranger             | 32690.50
 Daewoo        | Nubira             | 92239.01
 Honda         | Accord             | 36441.97
 Mercedes-Benz | 300E               | 92785.42
 Chevrolet     | Astro              | 34547.40
 Suzuki        | Swift              | 49333.02
 BMW           | 7 Series           | 25888.56
 Ford          | E250               |  5590.98
 Dodge         | Stratus            | 35301.49
 Ford          | Aerostar           | 91393.15
 Infiniti      | I                  | 24545.52
 Lexus         | RX Hybrid          | 14475.49
 Hummer        | H3T                | 27048.42
 Dodge         | Caliber            | 82144.82
 Acura         | TL                 | 45753.09
 Pontiac       | Vibe               | 35151.45
 Saturn        | Astra              | 46622.18
 Buick         | Rainier            | 45474.51
 GMC           | Sierra 2500        | 86655.79
 Jaguar        | XK Series          | 91758.73
 Eagle         | Vision             | 86620.84
 Chrysler      | New Yorker         | 26770.41
 Buick         | LaCrosse           | 71393.26
 Pontiac       | Grand Am           |  5538.70
 Ford          | Fusion             | 19566.98
 Chevrolet     | Beretta            | 34517.64
 Pontiac       | Bonneville         | 53652.56
 Dodge         | Ram Van 2500       | 94453.21
 Nissan        | Sentra             | 33253.65
 Lexus         | GX                 | 56767.95
 BMW           | M3                 | 59191.96
 Ford          | Lightning          | 86789.08
 Ford          | Thunderbird        | 73507.45
 GMC           | Sierra 3500        | 95523.60
 Pontiac       | Daewoo Kalos       |  7436.82
 Jaguar        | X-Type             | 95792.63
 Honda         | Odyssey            |  4051.45
 Dodge         | Dakota Club        |  6633.50
 Mercedes-Benz | GL-Class           | 61332.71
 Volkswagen    | Eurovan            | 18582.55
 Subaru        | Justy              | 25844.53
 Chevrolet     | Tahoe              | 43890.18
 Suzuki        | Sidekick           | 45545.30
(89 rows)


postgres=#