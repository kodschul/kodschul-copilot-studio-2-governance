# Nordwind Consulting IT – Simuliertes Sicherheitsvorfall-Szenario

Vorbereitetes Szenario für die geführte Demo in Lab 2.6 (Vorfallanalyse) und die eigene Dokumentation in Lab 2.7. Alle Angaben sind fiktiv.

## Ausgangslage

Am Morgen des 21.09.2026 meldet das Monitoring bei Nordwind Consulting IT eine Kette auffälliger Ereignisse rund um das Konto von **R. Lammers (IT, Stadtwerke Nordhafen-Projekt, externer Systemzugang)**.

## Chronologie der Rohsignale

| Zeitpunkt (21.09.2026) | Quelle       | Ereignis                                                                                                                 |
| ---------------------- | ------------ | ------------------------------------------------------------------------------------------------------------------------ |
| 02:14 Uhr              | Entra ID     | Anmeldung von R. Lammers aus einem bislang unbekannten Land, MFA über SMS-Fallback bestätigt                             |
| 02:19 Uhr              | Purview      | Zugriff auf `nordwind-berechtigungsexport.md` und `Gehaltsübersicht_2026.xlsx` (beide mit Sensitivity Label ab Lab 2.2) |
| 02:26 Uhr              | Defender XDR | Massenhafter Download mehrerer als vertraulich gekennzeichneter Dateien in kurzer Zeit                                   |
| 02:31 Uhr              | Entra ID     | Zweite Anmeldung desselben Kontos von einer IP-Adresse in Deutschland (Konto gleichzeitig an zwei Orten aktiv)           |
| 06:47 Uhr              | Intune       | Gerät, von dem der Nachtzugriff erfolgte, ist nicht als konformes Firmengerät registriert                                |

## Von Security Copilot generierte Erstzusammenfassung (Beispieltext für die Demo)

> "Konto R. Lammers zeigt zwischen 02:14 und 02:31 Uhr eine Anmeldung aus einem ungewöhnlichen Land, gefolgt von einem Massendownload vertraulicher Dateien und einer zweiten, zeitgleichen Anmeldung aus Deutschland. Das genutzte Gerät ist nicht als konform registriert. Empfehlung: Konto vorsorglich sperren und Zugriffstoken widerrufen."

## Prüfpunkte für Lab 2.6 (Aufgabe 3/4)

- Zeitpunkt und Konto in der Zusammenfassung stimmen mit der Rohdatentabelle oben überein.
- Sentinel ist im Szenario **nicht** angebunden — die Zusammenfassung enthält daher keine SIEM-Korrelation über mehrere Systeme hinweg. Das ist die Stelle, die vor einer endgültigen Entscheidung von einem Menschen zusätzlich geprüft werden sollte (fehlende Signalquelle).
- Die Entscheidung "Konto sperren" wird im Rahmen der Demo bewusst nicht automatisch von Security Copilot ausgeführt, sondern von der Trainerin/dem Trainer als menschliche Entscheidung im Nachgang bestätigt.

## Für Lab 2.7 (Dokumentation)

Dieses Szenario liefert die fünf Pflichtbestandteile:

1. **Zeitpunkt:** 21.09.2026, 02:14–06:47 Uhr.
2. **Beteiligte Konten/Systeme:** R. Lammers (Entra ID), betroffene Dateien in Purview, Endgerät in Intune.
3. **Signalquellen:** Entra ID, Purview, Defender XDR, Intune (Sentinel nicht angebunden).
4. **Entscheidung + Begründung:** Konto vorsorglich sperren, da Massendownload vertraulicher Daten von einem nicht-konformen Gerät und aus einem untypischen Land erfolgte.
5. **Verantwortliche Person:** wird im Kurs individuell durch die Trainerin/den Trainer als Rollenspiel besetzt (z. B. IT-Security-Lead).
