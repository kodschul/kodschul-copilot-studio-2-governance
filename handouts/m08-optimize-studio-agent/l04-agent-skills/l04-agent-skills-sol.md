# Lab 8.4 – Lösung: Skills hinzufügen

**Ändert die Nordwind-Projektbasis?** Ja — der Studio-Agent erhält Skills als Baseline für spätere Tool-, Workflow- und Evaluation-Labs.

## Ausgangslage

Der Studio-Agent aus Lab 8.3 ist bereit für modulare Teilaufgaben. Skills werden bewusst nach Instructions und Knowledge ergänzt, damit ihr Effekt getrennt beobachtbar bleibt.

## Zielartefakt

Das Zielartefakt besteht aus mindestens zwei Skills, einem Trigger-Testprotokoll und geschärften Beschreibungen.

## Voraussetzungen und Starterdateien

| Voraussetzung | Tragfähiger Stand |
| --- | --- |
| Studio-Agent | aus Lab 8.3 vorhanden oder dokumentiert |
| `SKILL.md` | aus Lab 7.3 vorhanden oder als Datei rekonstruiert |
| Wissensquellen | IT-Richtlinie und Onboarding-Leitfaden bleiben angebunden |

## Aufgaben

### 1. Vorhandenen Skill hochladen

Hochgeladen wird die `SKILL.md` aus Lab 7.3 (vollständige Fassung in der [Lösung zu Lab 7.3](../../m07-nextise-agentic-way/l03-skill-generator-assistant/l03-skill-generator-assistant-sol.md)). Kopf der Datei:

```md
---
name: nordwind-it-zugang-beantragen
description: Unterstützt bei der Vorbereitung eines IT-Zugangs- oder VPN-Antrags auf Basis der Nordwind-Richtlinien und sammelt fehlende Angaben, ohne den Antrag automatisch abzusenden.
---
```

Nach dem Upload erscheint der Skill im Skills-Bereich des Agenten (Anzeige vor Kurs im Tenant prüfen).

### 2. Beschreibung des Upload-Skills prüfen

| Prüffeld | Ergebnis |
| --- | --- |
| Anlass | IT-Zugang, VPN oder Standardsoftware beantragen; fehlende Ticket-Angaben |
| Quelle | IT-Richtlinie und Onboarding-Leitfaden |
| Grenze | Gehalt, Vertrag, Hochrisiko-Freigaben, Berechtigungsänderung ohne Freigabe |
| Zielausgabe | Antragsentwurf mit fehlenden Angaben und Eskalationshinweis |
| Schärfung | Beschreibung um „Nicht für Gehalt, Vertrag oder Sonderfreigaben" ergänzen, damit Abgrenzung schon beim Auslösen greift |

### 3. Zweiten Skill mit Generate with AI erstellen

Sinnvolle Antworten auf Rückfragen:

| Rückfrage | Beispielantwort |
| --- | --- |
| Zielgruppe | neue Mitarbeitende oder Buddy in den ersten 30 Tagen |
| Quellen | Onboarding-Leitfaden, bei VPN-Bezug zusätzlich IT-Richtlinie |
| Ergebnisformat | Checkliste nach „vor Start“, „erster Arbeitstag“, „erste 30 Tage“ |
| Grenzen | keine Vertragsdetails, kein Gehalt, keine projektspezifischen Sonderfreigaben |

Finale Beschreibung:

```text
Erstellt aus dem Nordwind-Onboarding-Leitfaden eine konkrete Checkliste für den ersten Arbeitstag oder die ersten 30 Tage. Nutze diesen Skill bei Fragen nach Schritten, Reihenfolge, Zuständigkeiten oder Standardsoftware im Onboarding. Nutze ihn nicht für Vertragsdetails, Gehalt oder projektspezifische Sonderfreigaben.
```

### 4. Optionalen dritten Skill von blank anlegen

Minimal tragfähige Description:

```text
Bereitet aus einer nicht sicher beantwortbaren Nordwind-Support-Anfrage eine Eskalation für IT oder HR vor. Nutze diesen Skill bei Lücken in den Wissensquellen, Sonderberechtigungen, personenbezogenen Fällen oder Gehalts-/Vertragsfragen. Nutze ihn nicht für Standardfragen, die direkt aus IT-Richtlinie oder Onboarding-Leitfaden beantwortet werden können.
```

### 5. Preview-Trigger testen

| Skill | Prompt | Erwartung | Beispielbeobachtung |
| --- | --- | --- | --- |
| `nordwind-it-zugang-beantragen` | „Ich brauche VPN-Zugang für mein neues Notebook.“ | Skill löst aus | korrekt, Antragsentwurf mit Rückfragen |
| `nordwind-it-zugang-beantragen` | „Wie beantrage ich Standardsoftware?“ | Skill löst aus | korrekt |
| `nordwind-it-zugang-beantragen` | „Wie hoch ist mein Gehalt?“ | Skill löst nicht aus | korrekt nicht ausgelöst |
| `onboarding-checkliste-erstellen` | „Checkliste für meinen ersten Arbeitstag“ | Skill löst aus | korrekt |
| `onboarding-checkliste-erstellen` | „Was ist in den ersten 30 Tagen wichtig?“ | Skill löst aus | korrekt |
| `onboarding-checkliste-erstellen` | „Sonderzugriff auf Projektablage sofort freigeben“ | Skill löst nicht oder eskaliert | nach Schärfung korrekt |

### 6. Beschreibungen nachschärfen

Beispielkorrektur: Die Onboarding-Description wurde um „Nutze ihn nicht für projektspezifische Sonderfreigaben“ ergänzt. Danach löst die Sonderzugriff-Frage nicht mehr als Checkliste aus, sondern bleibt beim Agenten beziehungsweise bei Eskalation.

### 7. Finale Skill-Notiz dokumentieren

| Skill | Finale Beschreibung kurz | Erfolgreicher Trigger | Nicht-Auslöser |
| --- | --- | --- | --- |
| `nordwind-it-zugang-beantragen` | IT-Zugang/VPN/Software-Antrag vorbereiten, nichts automatisch absenden | „VPN-Zugang beantragen“ | „Gehalt“ |
| `onboarding-checkliste-erstellen` | Onboarding-Checkliste nach Phasen erstellen | „erster Arbeitstag“ | „Sonderfreigabe“ |
| `ticket-eskalation-vorbereiten` | nicht sicher beantwortbare Fälle an IT/HR vorbereiten | „Sonderberechtigung“ | „Welches VPN nutzen wir?“ |

## Checkpoint

- Mindestens zwei Skills sind vorhanden oder vollständig spezifiziert.
- Die Baseline-Skills haben klare Trigger und Nicht-Auslöser.
- Eine Description wurde nach Testbeobachtung nachgeschärft.

## Abschlusskriterien

- Der Upload-Skill aus Lab 7.3 ist integriert oder als vollständiges `SKILL.md` verfügbar.
- Der Generate-with-AI-Skill wurde geprüft und fachlich begrenzt.
- Das Preview-Protokoll zeigt nicht nur erfolgreiche Trigger, sondern auch Abgrenzung.

## Erweiterung

Der dritte Skill ist vollständig, wenn Description, Vorgehen, Ausgabeformat und Nicht-Auslöser dokumentiert sind. Besonders wichtig ist der Satz, dass direkt beantwortbare Standardfragen nicht eskaliert werden.

## Fallback

Ohne Tenant-Test bleibt die Lösung eine statisch geprüfte Skill-Spezifikation. Echte Trigger-Sicherheit und UI-Verfügbarkeit müssen vor Kursbeginn im Tenant validiert werden.
