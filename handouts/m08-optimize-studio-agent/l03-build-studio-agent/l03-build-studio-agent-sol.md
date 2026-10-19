# Lab 8.3 – Lösung: Studio-Agent anlegen

**Ändert die Nordwind-Projektbasis?** Ja — es entsteht die Studio-Variante des Nordwind Support-Agenten für Lab 8.4.

## Ausgangslage

Der Chat-Agent aus Lab 8.1 bleibt als Vergleichsbasis erhalten. Der Studio-Agent nutzt dieselben Inhalte, aber einen anderen Harness und mehr Build-Komponenten.

## Zielartefakt

Das Zielartefakt ist ein dokumentierter Nordwind Studio-Agent mit Testprotokoll und Vergleichstabelle.

## Voraussetzungen und Starterdateien

| Voraussetzung | Tragfähiger Stand |
| --- | --- |
| System-Prompt | Prompt aus Lab 7.3 mit Quellenbindung und Eskalation |
| Wissen | beide Nordwind-Dateien aus Lab 8.1 |
| Testfragen | fünf Fragen aus Lab 8.1 |
| Zugang | eigener Studio-Zugang oder bereitgestellten Demo-Protokoll |

## Aufgaben

### 1. Neuen Agenten anlegen

Beispielkonfiguration:

| Feld | Wert |
| --- | --- |
| Name | Nordwind Support-Agent (Studio) |
| Harness | GitHub-Copilot-Harness |
| Zweck | IT- und Onboarding-Standardfragen beantworten, Sonderfälle eskalieren |

### 2. Instructions übernehmen

Der übernommene Prompt enthält mindestens:

- Rolle als interner Nordwind Support-Agent.
- Nutzung nur der hinterlegten Nordwind-Quellen.
- knappe, sachliche Antworten.
- Eskalation bei Gehalt, Sonderberechtigungen und nicht belegten Fällen.

### 3. Knowledge ergänzen

| Datei | Erwarteter Nutzen |
| --- | --- |
| `nordwind-it-richtlinie.md` | VPN, Geräte, Passwörter, MFA, Supportkontakt |
| `nordwind-onboarding-leitfaden.md` | erster Arbeitstag, Standardsoftware, Buddy, erste 30 Tage |

### 4. Modellwahl dokumentieren

Beispielnotiz: „Im Tenant war eine Modellwahl sichtbar; ein verfügbares Modell wurde für Preview gewählt. Modellnamen, Preview-Status und Verfügbarkeit werden vor Kursbeginn geprüft.“

### 5. Preview mit fünf Fragen testen

| Testfrage | Erwartetes Verhalten | Beispielbeobachtung |
| --- | --- | --- |
| Welches VPN nutzen wir? | Cisco Secure Client, Ziel, MFA | korrekt aus IT-Richtlinie |
| Was passiert am ersten Arbeitstag? | Erstlogin, Passwort, MFA, Apps, Buddy | korrekt aus Leitfaden |
| Gehaltsbandbreite? | HR-Eskalation | korrekt eskaliert |
| VPN-Zertifikat abgelaufen? | 12 Monate, IT-Support | korrekt aus IT-Richtlinie |
| Zugriff auf Projektablagen? | schrittweise durch Projektleitung | korrekt aus Leitfaden |

### 6. Mit dem Chat-Agenten vergleichen

| Kriterium | Chat-Agent aus Lab 8.1 | Studio-Agent aus Lab 8.3 |
| --- | --- | --- |
| Antwortqualität | gut für Wissensfragen | vergleichbar, bei komplexeren Fragen strukturierter möglich |
| Quellenbezug | abhängig von Chat-/Agent-UI | Preview kann zusätzliche Hinweise zeigen; tenantabhängig |
| Steuerbarkeit | Instruktionen und Wissen | Build-Komponenten, spätere Skills/Evaluate/Monitor |
| Aufwand | niedrig | höher durch Harness, Modell, Umgebung und Tests |
| Credits | je nach Lizenz/Verbrauch | Copilot Credits auch beim Bauen und Testen relevant |

### 7. Nächsten Ausbaupunkt notieren

Geeigneter Ausbaupunkt für Lab 8.4: VPN-Anleitung, Onboarding-Checkliste oder Eskalationsvorbereitung als kleiner Skill. Diese Aufgaben haben eigene Schritte und Grenzen und gehören nicht dauerhaft in globale Instructions.

## Checkpoint

- System-Prompt und Knowledge stimmen mit Lab 8.1 überein.
- Fünf Testfälle sind nachvollziehbar dokumentiert.
- Die Vergleichstabelle enthält Nutzen und Kosten-/Aufwandsaspekt.

## Abschlusskriterien

- Die Studio-Variante ist als Baseline für Skills vorbereitet.
- Der Vergleich begründet, warum nicht jede FAQ in den stärkeren Harness wandern muss.
- Lab 8.4 kann mit Skills starten, ohne Instructions erneut umzubauen.

## Erweiterung

Eine kombinierte Frage ist bestanden, wenn die Antwort VPN-Fakten und Onboarding-Schritte korrekt verbindet und bei Unklarheit nicht spekuliert.

## Fallback

Im Fallback ist die Lösung vollständig, wenn alle Konfigurationsfelder, Testfragen und Beobachtungen aus der Demo dokumentiert sind. Ein eigener Preview-Lauf und realer Credit-Verbrauch bleiben unvalidiert.
