# MATLAB Projekt – Numerické výpočty a simulácie

Vitaj v repozitári, ktorý obsahuje jednoduché MATLAB skripty pre numerické metódy, simulácie a vizualizáciu výsledkov.

Tento projekt je dobrý na učenie sa základov:

- MATLAB syntaxe
- numerických výpočtov
- Monte Carlo metódy
- grafického zobrazenia výsledkov
- práce so vstupnými a výstupnými hodnotami

---

## 📁 Obsah repozitára

```text
matlab/
├── README.md                 # Dokumentácia projektu
├── vypocet_pi.m              # Výpočet čísla π pomocou Monte Carlo metódy
├── urcity_integral.m         # Výpočet určitého integrálu pomocou simulácie
└── ...
```

---

## 1) README.md

### Popis
Tento súbor slúži ako hlavná dokumentácia projektu.

### Na čo sa používa
- vysvetľuje, čo projekt robí
- opisuje jednotlivé skripty
- ukazuje, ako projekt spúšťať
- pomáha pochopiť účel celého repozitára

### Ako funguje
README je dokumentácia, ktorá odkazuje na dôležité informácie o projekte. V praxi slúži ako „návod pre používateľa“ a „mapa projektu“.

> Poznámka: V malých projektoch je README často najdôležitejší súbor, pretože vysvetľuje celý projekt bez otvorenia kódu.

---

## 2) vypocet_pi.m

### Popis
Skript počíta približnú hodnotu čísla π pomocou metódy Monte Carlo.

### Na čo sa používa
- štúdium náhodných simulácií
- numerický odhad π
- demonstrácia pravdepodobnostného výpočtu v MATLAB-e
- vizualizácia bodov v rovine

### Ako funguje
1. Vytvorí sa náhodný bod s súradnicami `(x, y)` v intervale od 0 do 1.
2. Skontroluje sa, či platí nerovnosť:

```matlab
x^2 + y^2 <= 1
```

3. Ak bod leží vo vnútri jednotkovej kružnice, počíta sa ako „trafený“.
4. Počet trafených bodov sa porovná s celkovým počtom bodov.
5. Hodnota π sa odhaduje podľa vzorca:

```matlab
pi = 4 * body_trafene / N
```

### Čo sa vykresľuje
- 🔴 červené body = body vo vnútri kružnice
- 🟢 zelené body = body mimo kružnice

### Kľúčové premenné
- `N` – počet náhodných bodov
- `body_trafene` – počet bodov vo vnútri kružnice
- `x`, `y` – náhodné súradnice bodu

> Tip: Čím väčšie je `N`, tým presnejší je výsledok, ale výpočet trvá dlhšie.

---

## 3) urcity_integral.m

### Popis
Skript počíta určitý integrál funkcie:

```matlab
f(x) = 1 / (1 + x)
```

na intervale od 0 do 1.

### Na čo sa používa
- numerická integrácia
- aproximácia plochy pod krivkou
- simulácia metódy Monte Carlo v aplikácii na matematiku
- vizualizácia integrálu graficky

### Ako funguje
1. Definuje sa funkcia `yy = 1 ./ (1 + xx)`, teda graf funkcie.
2. Náhodne sa generujú body v obdĺžniku pod maximálnou hodnotou funkcie.
3. Overuje sa, či bod leží pod krivkou funkcie.
4. Z pomeru bodov pod krivkou a všetkých bodov sa odhadne plocha pod funkciou.
5. Tento odhad sa porovná s presnou hodnotou:

```matlab
∫(0 do 1) 1/(1+x) dx = ln(2)
```

### Čo sa vykresľuje
- 🔵 modrá krivka = funkcia `1/(1+x)`
- 🔴 červené body = body pod krivkou
- 🟢 zelené body = body nad krivkou

### Kľúčové premenné
- `N` – počet simulovaných bodov
- `xx` – x-ové hodnoty funkcie
- `yy` – y-ové hodnoty funkcie
- `maximum` – maximálna hodnota funkcie na intervale
- `integral` – odhadnutá hodnota integrálu

> Poznámka: Teoretická hodnota je `log(2) ≈ 0.6931`, takže skript porovnáva simulovaný výsledok s touto presnou hodnotou.

---

## 🧠 Čo sa v projekte učí

Tento projekt je vhodný na pochopenie nasledujúcich pojmov:

- náhodné generovanie dát
- Monte Carlo metóda
- numerická aproximácia π
- numerická integrácia
- grafické vykreslenie výsledkov v MATLAB-e
- základný programátorský prístup k matematickým úlohám

---

## 🚀 Ako spustiť projekt v MATLAB-e

Urobte nasledovné:

1. Otvorte MATLAB
2. Prejdite do priečinka projektu
3. Spustite skript:

```matlab
vypocet_pi
```

alebo

```matlab
urcity_integral
```

Po spustení sa otvorí graf a zobrazia sa body a krivky.

---

## 📌 Zhrnutie funkcií projektu

| Súbor | Funkcia | Použitie |
|--------|---------|----------|
| `README.md` | Dokumentácia | Popisuje projekt a jeho účel |
| `vypocet_pi.m` | Výpočet π | Simulácia a náhodné body |
| `urcity_integral.m` | Výpočet integrálu | Približný výpočet plochy pod krivkou |

---

## ✅ Dôležité poznámky

> 💡 Tento projekt je jednoduchý, ale veľmi dobrý na pochopenie, ako sa numerické metódy používajú v praxi.

> ⚠️ Všetky výpočty sú približné, pretože používajú náhodné generovanie bodov.

> 🔍 Pre presnejšie výsledky je potrebné zvyšovať hodnotu `N`.

---

## Autor

- Dušan Šavrda

---

Posledná aktualizácia: Október 2026
