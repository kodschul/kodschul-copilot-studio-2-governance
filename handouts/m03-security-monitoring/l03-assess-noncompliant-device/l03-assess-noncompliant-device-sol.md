# Lab 3.3 – Lösung: Endgerät bewerten

## Aufgaben

### 1. Signalprüfung (Beispiel)

| Signal              | Befund                                                |
| ------------------- | ----------------------------------------------------- |
| Intune-Konformität  | nicht konform (veraltetes Betriebssystem)             |
| Entra-Anmelderisiko | erhöht (neuer, unbekannter Standort)                  |
| Purview-Zugriff     | Zugriff auf ein mit "Vertraulich" gelabeltes Dokument |

### 2.–3. Entscheidung

Hohes Risiko mit möglichem Datenabfluss (Zugriff auf vertrauliches Dokument bei erhöhtem Anmelderisiko) → Entscheidung: sperren. Die Security-Copilot-Zusammenfassung bestätigte dieselbe Risikoeinschätzung in einem einzigen zusammengeführten Bericht.

### 4. Zeitersparnis

Statt drei getrennte Abfragen in Intune, Entra ID und Purview nacheinander durchzuführen, lieferte Security Copilot die drei Signale in einer gemeinsamen Zusammenfassung.

### 5. Dokumentation der Entscheidung

"Gerät gesperrt aufgrund kombiniertem Risiko: nicht konform + erhöhtes Anmelderisiko + Zugriff auf vertraulichen Inhalt. Entscheidung durch Sicherheitsverantwortliche Person am [Datum]."

## Checkpoint

- Alle drei Signale sind mit konkretem Befund dokumentiert.
- Die Sperren-Entscheidung ist nachvollziehbar aus der Kombination aller drei Signale begründet, nicht aus nur einem.
