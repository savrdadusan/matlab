# MATLAB Projekt

Tento repozitár obsahuje MATLAB kód a skripty pre numerické výpočty, analýzu dát a vývoj algoritmov.

## Popis projektu

Projekt je zorganizovaný pre MATLAB-based vývoj s možnosťou:

- rýchlym prototypovaním algoritmov
- spracovaním numerických dát
- vizualizáciou výsledkov
- automatizáciou analýz a výpočtov

## Štruktúra repozitára

```
.
├── README.md                 % Technická dokumentácia
├── src/                      % Zdrojový kód a funkcie
│   ├── functions/           % Vlastné MATLAB funkcie
│   └── modules/             % MATLAB moduly a triedy
├── scripts/                 % Spúšťacie skripty a príklady
├── data/                    % Vstupné dáta
│   ├── input/              % Vstupné dátové súbory
│   └── output/             % Výstupné dáta po spracovaní
├── results/                % Výsledky, grafy a tabuľky
├── tests/                  % Jednotkové testy
├── docs/                   % Dokumentácia
│   ├── technická_spec.md   % Technické špecifikácie
│   └── user_guide.md       % Používateľská príručka
└── config/                 % Konfiguračné súbory
```

## Požiadavky

- **MATLAB** R2020b alebo novšia (odporúčané R2023b+)
- **Operačný systém:** Windows, macOS, Linux
- **Potrebné toolboxy:**
  - Signal Processing Toolbox
  - Statistics and Machine Learning Toolbox
  - Optimization Toolbox
  - (podľa konkrétneho projektu)

## Inštalácia a konfigurácia

### 1. Klonovaní repozitára

```bash
git clone https://github.com/savrdadusan/matlab.git
cd matlab
```

### 2. Pridanie do MATLAB cesty

V MATLAB príkazovom okne:

```matlab
addpath(genpath(pwd));
savepath;
```

### 3. Overenie inštalácie

```matlab
% Kontrola dostupných funkcií
help src/functions/
```

## Typický pracovný postup

1. **Príprava dát:** Umiestnite vstupné dáta do `data/input/`
2. **Implementácia:** Vytvorte alebo upravte kód v `src/`
3. **Testovanie:** Spustite testy z `tests/`
4. **Spustenie:** Vykonajte skript z `scripts/`
5. **Analýza výsledkov:** Výsledky sa nachádzajú v `results/`

## Príklad použitia

```matlab
% Načítanie dát
data = readmatrix('data/input/sample_data.csv');

% Spustenie analýzy
results = analyzeData(data);

% Vizualizácia
figure;
plot(results);
title('Výsledky analýzy');
xlabel('Čas [s]');
ylabel('Amplitúda [V]');
grid on;

% Uloženie výsledkov
saveas(gcf, 'results/analysis_plot.png');
```

## API a hlavné funkcie

### `src/functions/analyzeData.m`
```matlab
results = analyzeData(inputData, varargin)
% Analýza vstupných dát
% 
% Vstupy:
%   inputData   - matica rozmerov (N x M)
%   varargin    - voliteľné parametre
%
% Výstupy:
%   results     - štruktúra s výsledkami
```

### `src/functions/processSignal.m`
```matlab
signal = processSignal(rawSignal, fs, varargin)
% Spracovanie signálu
%
% Vstupy:
%   rawSignal   - vstupný signál
%   fs          - vzorkovacia frekvencia [Hz]
%
% Výstupy:
%   signal      - spracovaný signál
```

## Testovanie

Spustite jednotkové testy:

```matlab
% Spustenie všetkých testov
runtests('tests/');

% Spustenie konkrétneho testu
runtests('tests/test_analyzeData.m');
```

## Nastavenie a konfigurácia

Konfigurálne parametre sú uložené v `config/settings.m`:

```matlab
% Príklad nastavenia
config.sampleRate = 1000;      % vzorkovacia frekvencia [Hz]
config.filterOrder = 5;         % rád filtra
config.plotFigures = true;      % zobrazovanie grafov
```

## Výkonnosť a optimalizácia

- Použite **vectorizáciu** namiesto slučiek `for`
- Pre veľké dáta používajte **GPU** výpočty (s `gpuArray`)
- Profilovaní kódu pomocou `profile viewer`

Príklad:

```matlab
profile on;
analyzeData(largeData);
profile viewer;
```

## Známe problémy a riešenia

| Problém | Riešenie |
|---------|---------|
| Nedostaok pamäte pri veľkých dátach | Spracovávajte dáta po častiach |
| Pomalá konvergencia | Upravte toleranciu v `config/settings.m` |
| Chyby v grafe | Skontrolujte dátové typy vstupov |

## Referencie a dokumentácia

- [MathWorks MATLAB Documentation](https://www.mathworks.com/help/matlab/)
- [Signal Processing Guide](https://www.mathworks.com/help/signal/)
- Pozri `docs/technická_spec.md` pre podrobnosti implementácie

## Licencia

Projekt zatiaľ nemá špecifikovanú licenciu. Pri verejnom zdieľaní zvážte pridanie vhodnej open-source licencie (MIT, GPLv3, Apache 2.0).

## Kontakt a príspevky

- **Autor:** Dušan Šavrda
- **Email:** 82323669+savrdadusan@users.noreply.github.com

### Ako prispieť

1. Vytvorte feature branch: `git checkout -b feature/nova-funkcionalita`
2. Implementujte zmeny s testami
3. Commitnite zmeny: `git commit -m "Popis zmien"`
4. Pushните na branch: `git push origin feature/nova-funkcionalita`
5. Otvorte Pull Request

## Historia zmien

Pozri `CHANGELOG.md` pre detaily všetkých verzií.

---

**Posledná aktualizácia:** Október 2026
