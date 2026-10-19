---
theme: default
layout: default
---

# Lab 2.6: Vorfallanalyse (Demo)

**Leitfragen:**

1. Welche Schritte eines Vorfalls nimmt Security Copilot ab und welche bleiben beim Menschen?
2. Woher stammen die Daten in der generierten Zusammenfassung?
3. Woran erkennt man, dass eine Copilot-Empfehlung nachgeprüft werden muss?

**Antworten:**

<details>
<summary>1. Welche Schritte nimmt Security Copilot ab?</summary>

Security Copilot fasst Signale zusammen, ordnet sie chronologisch ein und schlägt eine erste Einschätzung vor. Die endgültige Bewertung, Entscheidung über Gegenmaßnahmen und Verantwortung für die Reaktion bleiben beim Menschen. _Quelle: Microsoft Learn Security-Copilot-Incident-Response, Stand: prüfpflichtig vor Kursbeginn._

</details>

<details>
<summary>2. Woher stammen die Daten in der Zusammenfassung?</summary>

Aus den angebundenen Produkten der Plattform-Landkarte (Entra ID, Purview, Defender XDR, Intune, Sentinel) — siehe `01-security-plattform-landkarte.md`. _Quelle: Microsoft Learn Security-Copilot-Datenquellen, Stand: prüfpflichtig vor Kursbeginn._

</details>

<details>
<summary>3. Woran erkennt man Nachprüfungsbedarf?</summary>

Wenn die Empfehlung auf unvollständigen Signalen beruht (z. B. ein nicht angebundenes Produkt aus Lab 2.5), wenn Zahlen/Zeitangaben nicht mit der Rohdatenquelle übereinstimmen, oder wenn die Empfehlung eine Tragweite-Entscheidung ohne menschliche Freigabe nahelegt. _Quelle: eigene Ableitung aus Human-in-the-Loop-Prinzip._

</details>

**Grenze:** Automatisierte Reaktionsmaßnahmen (Auto-Remediation) im Detail → Parkplatz bzw. internes Security-Team.

- Security Copilot fasst Signale zusammen und schlägt eine erste Einschätzung vor, entscheidet aber nicht selbst über Gegenmaßnahmen.
- Eine generierte Zusammenfassung ist nur so vollständig wie die tatsächlich angebundenen Signalquellen.

## Typischer Analyseablauf

```
Signale aus angebundenen Produkten
  → Security Copilot fasst zusammen und ordnet chronologisch ein
  → erste Einschätzung/Empfehlung wird vorgeschlagen
  → Mensch prüft, entscheidet, dokumentiert (Lab 2.7)
```

## Was beim Menschen bleibt

| Aufgabe                                  | Bleibt beim Menschen?            |
| ---------------------------------------- | -------------------------------- |
| Signale zusammenfassen                   | nein, übernimmt Security Copilot |
| Endgültige Bewertung des Vorfalls        | ja                               |
| Entscheidung über Gegenmaßnahme          | ja                               |
| Verantwortung gegenüber Geschäftsführung | ja                               |

> **Merksatz:** Eine Zusammenfassung ist eine Arbeitserleichterung, keine Entscheidung.

## Grenzen

- Die Demo läuft nach einem vorbereiteten Skript mit einem simulierten Vorfall, keine Live-Improvisation im Sandbox-Tenant.
- Automatisierte Reaktionsmaßnahmen (Auto-Remediation) sind ein eigenes, hier nicht vertieftes Thema.

## Fazit

- Security Copilot übernimmt Zusammenfassung und erste Einschätzung, nicht die Entscheidung.
- Die Datengrundlage der Zusammenfassung ist immer nur so vollständig wie die angebundenen Produkte.
- Eine Empfehlung braucht Nachprüfung, sobald Signale fehlen, Zahlen abweichen oder Tragweite-Entscheidungen im Raum stehen.

Die Übung ist eine geführte Demo: ein simulierter Sicherheitsvorfall wird in Security Copilot analysiert.
