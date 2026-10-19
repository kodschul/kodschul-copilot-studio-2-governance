---
theme: default
layout: default
---

# Lab 3.3: Endgerät bewerten

**Leitfragen:**

1. Welche Signale schaut man sich bei einem auffälligen Gerät zuerst an?
2. Wann ist "sperren" die richtige Reaktion und wann "einschränken"?
3. Was steuert Security Copilot hier bei, was Intune allein nicht liefert?

**Antworten:**

<details>
<summary>1. Welche Signale zuerst?</summary>

Konformitätsstatus (Intune), Anmelderisiko (Entra ID) und ob auf klassifizierte Inhalte zugegriffen wurde (Purview) — dieselben Signalquellen wie in der Plattform-Landkarte aus Modul 2. _Quelle: Microsoft Learn Intune + Security-Signal-Priorisierung, Stand: prüfpflichtig vor Kursbeginn._

</details>

<details>
<summary>2. Sperren vs. einschränken?</summary>

Sperren, wenn ein hohes Risiko mit potenziellem Datenabfluss vorliegt; Einschränken (z. B. nur Web-Zugriff ohne Download), wenn das Risiko moderat ist und die/der Mitarbeitende weiterhin arbeitsfähig bleiben soll. _Quelle: Microsoft Learn Conditional-Access-Reaktionsoptionen, Stand: prüfpflichtig vor Kursbeginn._

</details>

<details>
<summary>3. Was liefert Security Copilot zusätzlich?</summary>

Eine Zusammenfassung und Einordnung mehrerer Signalquellen gleichzeitig (Intune, Entra ID, Purview) in einem Ablauf, statt sie einzeln nacheinander prüfen zu müssen — schnellere Ersteinschätzung, keine automatische Entscheidung. _Quelle: `01-security-plattform-landkarte.md`, Modul 2._

</details>

**Grenze:** Automatisierte Sofortmaßnahmen ohne menschliche Freigabe → Parkplatz bzw. internes Security-Team.

- Die Bewertung eines auffälligen Geräts stützt sich auf dieselben drei Signalquellen wie die Plattform-Landkarte aus Modul 2.
- Sperren passt bei hohem Risiko mit Datenabflussgefahr, Einschränken bei moderatem Risiko mit weiterhin nötiger Arbeitsfähigkeit.

## Entscheidungslogik im Überblick

```
Signale prüfen (Intune-Konformität, Entra-Anmelderisiko, Purview-Zugriff)
  → hohes Risiko + möglicher Datenabfluss → sperren
  → moderates Risiko, Arbeitsfähigkeit wichtig → einschränken
  → kein erhöhtes Risiko → beobachten, keine Aktion
```

## Was Security Copilot beisteuert

| Ohne Security Copilot                               | Mit Security Copilot                                             |
| --------------------------------------------------- | ---------------------------------------------------------------- |
| Signale einzeln in Intune, Entra ID, Purview prüfen | zusammengeführte Ersteinschätzung über alle drei Quellen         |
| höherer Zeitaufwand pro Bewertung                   | schnellere erste Orientierung, Entscheidung bleibt beim Menschen |

> **Merksatz:** Security Copilot beschleunigt die Signalzusammenführung, ersetzt aber nicht die Entscheidung sperren vs. einschränken.

## Grenzen

- Automatisierte Sofortmaßnahmen ohne menschliche Freigabe sind hier bewusst nicht Teil des Kursumfangs.
- Die richtige Reaktion hängt stark von der individuellen Risikotoleranz und Tenant-Konfiguration ab.

## Fazit

- Konformität, Anmelderisiko und Zugriff auf klassifizierte Inhalte sind die drei zentralen Prüfsignale.
- Sperren bei hohem Risiko, Einschränken bei moderatem Risiko mit Arbeitsfähigkeitsbedarf.
- Security Copilot beschleunigt die Zusammenführung der Signale, die Entscheidung bleibt beim Menschen.

Die Übung bewertet ein nicht konformes/gefährdetes Endgerät mit Intune und Security Copilot.
