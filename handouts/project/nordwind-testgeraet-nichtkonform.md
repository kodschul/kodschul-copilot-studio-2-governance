# Nordwind Consulting IT – Simuliertes nicht konformes Testgerät

Vorbereitetes Geräteprofil für Lab 3.3 (Endgerät bewerten). Ersetzt Screenshots aus einer echten Intune-Konsole durch eine textuelle Zusammenfassung derselben drei Signalquellen. Alle Angaben sind fiktiv.

## Geräteprofil

| Feld               | Wert                                                         |
| ------------------ | ------------------------------------------------------------ |
| Gerätename         | NW-LAP-0231                                                  |
| Zugeordnete Person | R. Lammers (siehe `nordwind-sicherheitsvorfall-szenario.md`) |
| Gerätetyp          | Windows-Notebook, privat beschafft (kein Standard-Image)     |
| Zuletzt gesehen    | 21.09.2026, 06:47 Uhr                                        |

## Signal 1 – Intune-Konformität

- Status: **nicht konform**.
- Gründe: Festplattenverschlüsselung nicht aktiv, Betriebssystem-Sicherheitsupdate seit 96 Tagen ausstehend, Endpoint-Schutz nicht installiert.

## Signal 2 – Entra-Anmelderisiko

- Risikostufe: **hoch**.
- Grund: Anmeldung aus einem für dieses Konto bislang unbekannten Land, unmittelbar gefolgt von einer zweiten, zeitgleichen Anmeldung aus Deutschland (siehe Vorfallszenario, 02:14–02:31 Uhr).

## Signal 3 – Purview-Zugriff

- Zugriff auf klassifizierte Inhalte: **ja**.
- Details: Zugriff auf zwei mit "Vertraulich – Nordwind Intern" gelabelte Dateien (`Gehaltsübersicht_2026.xlsx`, `nordwind-berechtigungsexport.md`) außerhalb der üblichen Arbeitszeit.

## Erwartete Security-Copilot-Zusammenfassung (Beispieltext)

> "Gerät NW-LAP-0231 ist nicht konform (fehlende Verschlüsselung, veraltete Updates), zeigt ein hohes Anmelderisiko und griff auf klassifizierte Inhalte außerhalb der üblichen Arbeitszeit zu. Empfehlung: Gerät sperren, nicht nur einschränken, da alle drei Signale gleichzeitig auf hohes Risiko mit möglichem Datenabfluss hindeuten."

## Für die Entscheidung in Lab 3.3

Alle drei Signale zeigen erhöhtes bis hohes Risiko gleichzeitig — nach der Entscheidungslogik aus der Theorie ("hohes Risiko + möglicher Datenabfluss → sperren") ist **Sperren** die konsistente Entscheidung, nicht Einschränken.
