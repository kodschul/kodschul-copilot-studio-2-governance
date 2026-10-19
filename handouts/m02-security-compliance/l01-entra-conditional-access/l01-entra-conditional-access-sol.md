# Lab 2.1 – Lösung: Entra ID & Conditional Access

## Aufgaben

### 1.–3. Richtlinie und Test (Beispiel)

Richtlinie "Copilot-Zugriff nur konforme Geräte": Bedingung Gerätestatus = konform, Aktion = Zugriff blockieren bei Nichterfüllung. Test mit simuliertem nicht konformem Gerät: Zugriff wurde blockiert, keine eingeschränkte Nutzung zugelassen.

### 4. Signalzuordnung

| Signal          | Konfiguration in der eigenen Richtlinie             |
| --------------- | --------------------------------------------------- |
| Benutzer/Gruppe | alle Nordwind-Mitarbeitenden mit Copilot-Lizenz     |
| Standort        | keine Einschränkung in dieser ersten Richtlinie     |
| Gerätestatus    | muss konform sein (zentrale Bedingung)              |
| Risiko          | nicht separat konfiguriert in dieser ersten Version |

### 5. Reaktion bei Nichtkonformität

Blockieren statt Einschränken gewählt, da Copilot-Zugriff auf sensible interne Inhalte (siehe Oversharing-Befund aus Lab 1.2) bei nicht verwalteten Geräten ein zu hohes Risiko darstellt.

## Checkpoint

- Die Richtlinie hat den nicht konformen Testfall korrekt blockiert.
- Alle vier Signale wurden bewusst zugeordnet, auch die nicht konfigurierten (Standort, Risiko) mit Begründung.
