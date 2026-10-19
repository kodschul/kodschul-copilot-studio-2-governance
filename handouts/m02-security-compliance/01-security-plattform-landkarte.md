# Security-Plattform-Landkarte

Hintergrundmaterial zu Modul 2. Ordnet Microsoft Security Copilot in die übrige Microsoft-Sicherheitsplattform ein — Grundlage für Lab 2.5.

## Die Plattform-Produkte im Überblick

| Produkt                    | Zuständigkeit                                                                  |
| -------------------------- | ------------------------------------------------------------------------------ |
| Entra ID                   | Identität, Zugriffssteuerung, Conditional Access                               |
| Purview                    | Datenklassifizierung, Sensitivity Labels, DLP, Compliance                      |
| Defender XDR               | Bedrohungserkennung über Endpunkte, E-Mail, Identität, Cloud-Apps              |
| Sentinel                   | SIEM/SOAR, unternehmensweite Sicherheitsereignisse und Automatisierung         |
| Intune                     | Geräteverwaltung, Gerätekonformität, App-Schutz                                |
| Microsoft Security Copilot | KI-gestützte Analyse und Zusammenfassung von Signalen aus all diesen Produkten |

## Wie Security Copilot eingebettet ist

Security Copilot arbeitet nicht isoliert, sondern zieht Signale aus den oben genannten Produkten zusammen und bereitet sie für Analyst:innen auf. Es ersetzt keines dieser Produkte, sondern erleichtert deren gemeinsame Auswertung.

## Eigenständig vs. eingebettet

| Nutzungsart  | Beschreibung                                                                        |
| ------------ | ----------------------------------------------------------------------------------- |
| Eigenständig | Security Copilot als eigene Oberfläche, in der Analyst:innen gezielt Fragen stellen |
| Eingebettet  | Security-Copilot-Funktionen direkt innerhalb von Defender, Sentinel oder Intune     |

## Plugins, Promptbooks und Agents (grob eingeordnet)

| Begriff    | Grobe Bedeutung                                                                  |
| ---------- | -------------------------------------------------------------------------------- |
| Plugin     | Anbindung einer zusätzlichen Datenquelle oder eines zusätzlichen Produkts        |
| Promptbook | vordefinierte Abfolge von Prompts für einen wiederkehrenden Analyseablauf        |
| Agent      | eigenständig handelnde Komponente, die einen Teilschritt automatisiert übernimmt |

> **Merksatz:** Security Copilot ist die Analyseebene über der Plattform, nicht ein Ersatz für die einzelnen Sicherheitsprodukte.

## Grenzen

- Die genaue technische Funktionsweise von Promptbooks und Plugins wird in diesem Kurs nur grob eingeordnet, nicht im Detail konfiguriert.
- Welche Signale tatsächlich verfügbar sind, hängt von der Lizenzierung der jeweiligen Produkte im Tenant ab.

## Konsequenzen für die Praxis

- Eine Security-Copilot-Antwort ist nur so gut wie die Signale, die aus den angebundenen Produkten tatsächlich verfügbar sind.
- Bevor Security Copilot befragt wird, lohnt sich die Prüfung, welche Produkte im eigenen Tenant überhaupt angebunden sind.

Angewendet in Lab 2.5 (Plattform-Integration) und vertieft in Lab 2.6 (Vorfallanalyse).
