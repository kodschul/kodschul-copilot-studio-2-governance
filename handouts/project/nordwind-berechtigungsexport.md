# Nordwind Consulting – Berechtigungsexport (anonymisiert)

Vorbereiteter Berechtigungsexport für Lab 1.2 (Oversharing & Schatten-KI). Alle Angaben sind fiktiv und anonymisiert; Grundlage für den Oversharing-Befund in Lab 1.2 und das Sensitivity-Label-Beispiel in Lab 2.2.

## Freigaben (SharePoint/OneDrive, Auszug)

| #   | Datei/Ordner                          | Pfad                                    | Freigabetyp          | Freigegeben für              | Vermutete Sensibilität |
| --- | ------------------------------------- | --------------------------------------- | -------------------- | ---------------------------- | ---------------------- |
| 1   | Gehaltsübersicht_2026.xlsx            | /HR/Gehaltsdaten/                       | gesamte Organisation | alle Nordwind-Mitarbeitenden | hoch                   |
| 2   | nordwind-projektnotizen.md            | /Projekte/Hafenmodernisierung/          | spezifische Personen | Projektteam (5 Personen)     | mittel                 |
| 3   | Betriebsratsvereinbarung_Entwurf.docx | /HR/Mitbestimmung/                      | jeder mit dem Link   | nicht eingeschränkt          | hoch                   |
| 4   | nordwind-budget-daten.xlsx            | /Projekte/Hafenmodernisierung/Finanzen/ | spezifische Personen | Projektteam + Controlling    | mittel                 |
| 5   | Angebotsvorlage_Standard.docx         | /Vorlagen/                              | gesamte Organisation | alle Nordwind-Mitarbeitenden | gering                 |
| 6   | Kandidatenbewertungen_2026.xlsx       | /HR/Recruiting/                         | jeder mit dem Link   | nicht eingeschränkt          | hoch                   |
| 7   | Teamfoto_Sommerfest.jpg               | /Intern/Events/                         | gesamte Organisation | alle Nordwind-Mitarbeitenden | gering                 |
| 8   | nordwind-jourfixe-protokoll.md        | /Projekte/Hafenmodernisierung/          | spezifische Personen | Projektteam (5 Personen)     | mittel                 |

## Hinweise für die Auswertung

- Drei Freigaben mit "gesamte Organisation" oder "jeder mit dem Link" gelten als potenziell zu breit: #1, #3, #6.
- #1 (Gehaltsübersicht_2026.xlsx) ist der kritischste Befund: hoch sensibler Inhalt, aber für die gesamte Organisation freigegeben. Wird in Lab 2.2 mit einem Sensitivity Label nachgeschärft.
- #3 und #6 betreffen HR-Daten mit offenem Link — Empfehlung: Freigabe auf die Gruppe "HR-Team" einschränken.

## Grenzen

Dieser Export ist ein anonymisierter Ausschnitt, kein vollständiges Tenant-Abbild. Für die Übung reicht er, um mindestens einen belastbaren Oversharing-Befund abzuleiten.
