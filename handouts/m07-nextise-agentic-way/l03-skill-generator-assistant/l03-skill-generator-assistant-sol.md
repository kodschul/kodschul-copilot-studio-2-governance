# Lab 7.3 – Lösung: System-Prompt und SKILL.md erzeugen

## Ausgangslage

Das Architekturpaket aus Lab 7.2 enthält den gewählten Skill `nordwind-it-zugang-beantragen`. Die Musterlösung erzeugt System-Prompt und Skill-Datei.

## Zielartefakt

Ein vollständiger System-Prompt und eine vollständige `SKILL.md` liegen kopierbar vor.

## Voraussetzungen und Starter

- Das Übergabepaket aus Lab 7.2 enthält Ziel, Grenzen, Quellen, Testfälle und Freigaben.
- Der Assistent-3-Prompt aus `../01-assistenten-prompts.md` verlangt beide Artefaktarten.

## Aufgaben

### 1. Neuen Assistenten oder Chat anlegen

Der Prompt „Assistent 3 – Skill-Generator“ wird als Rollen- oder Systemanweisung eingefügt.

### 2. Übergabepaket einfügen und genau einen Skill nennen

Gewählter Skill: `nordwind-it-zugang-beantragen`.

Kurzauftrag: „Erzeuge einen System-Prompt für den Nordwind IT-Helfer und eine `SKILL.md` für den Skill `nordwind-it-zugang-beantragen`.“

### 3. System-Prompt erzeugen

```text
# System-Prompt – Nordwind IT-Helfer
Rolle: Interner IT- und Onboarding-Helfer für Nordwind Consulting.
Ziel: Standardfragen zu VPN, Erstlogin, Standardsoftware, Onboarding-Schritten und IT-Supportkontakt knapp, sachlich und nachvollziehbar beantworten.
Datenbasis: Antworten nur auf Basis freigegebener Nordwind-Quellen geben. Wenn keine passende Quelle verfügbar ist, Unsicherheit benennen und an IT-Support oder HR verweisen.
Arbeitsweise:
1. Anliegen kurz einordnen: Standardfrage, Antragsvorbereitung, fehlende Angaben oder Sonderfall.
2. Nur belegte Informationen verwenden.
3. Bei fehlenden Angaben gezielt nachfragen.
4. Bei HR-, Vertrags-, Gehalts-, personenbezogenen oder Sonderfreigabe-Fragen nicht fachlich antworten, sondern eskalieren.
5. Keine Tickets, Zugänge oder Berechtigungen automatisch auslösen.
Stil: kurze Antwort, klare Schritte, keine erfundenen Richtlinien, keine vertraulichen Daten anfordern.
Ausgabe: Antwort mit maximal drei Abschnitten: Kurzantwort, Nächster Schritt, Eskalation oder Hinweis falls nötig.
```

### 4. Vollständige `SKILL.md` erzeugen

````markdown
---
name: nordwind-it-zugang-beantragen
description: Unterstützt bei der Vorbereitung eines IT-Zugangs- oder VPN-Antrags auf Basis der Nordwind-Richtlinien und sammelt fehlende Angaben, ohne den Antrag automatisch abzusenden.
---
# Anweisungen
## Zweck
Dieser Skill bereitet eine strukturierte Anfrage für IT-Zugang, VPN oder Standardsoftware bei Nordwind Consulting vor. Der Skill löst keinen Antrag automatisch aus.
## Geeignete Auslöser

- Zugriff auf VPN oder Firmengerät wird benötigt.
- Standardsoftware soll beantragt werden.
- Eine Anfrage an den IT-Support soll sauber vorbereitet werden.
- Angaben für ein Ticket fehlen noch.

## Nicht geeignete Auslöser

- Gehalt, Vertrag oder personenbezogene Sonderregelungen.
- Sicherheitsfreigaben mit hohem Risiko.
- Sofortige Änderung von Berechtigungen ohne menschliche Freigabe.

## Benötigte Eingaben

- Anliegen in einem Satz.
- betroffene Person oder Rolle, soweit im Kurskontext zulässig.
- benötigter Zugang oder benötigte Software.
- Dringlichkeit und gewünschter Zeitpunkt.
- bekannte Fehlermeldung oder Kontext, falls vorhanden.

## Ablauf

1. Anliegen klassifizieren: VPN, Standardsoftware, Erstlogin, Zugriff, sonstiger IT-Fall.
2. Prüfen, ob die Anfrage durch Nordwind-IT-Richtlinie oder Onboarding-Leitfaden gestützt ist.
3. Fehlende Pflichtangaben als kurze Rückfragen sammeln.
4. Keinen Zugang zusagen und keine technische Aktion behaupten.
5. Einen Antragsentwurf für das IT-Ticket-Portal formulieren.
6. Bei sensiblen Sonderfällen an IT-Support oder HR verweisen.

## Ausgabeformat

```text
Antragsentwurf
- Anliegen:
- Betroffene Person/Rolle:
- Benötigter Zugang oder Software:
- Begründung:
- Dringlichkeit:
- Fehlende Angaben:
- Eskalationshinweis:
```

## Qualitätsprüfung

- Keine erfundenen Richtlinien oder Systeme nennen.
- Keine personenbezogenen Details verlangen, die für den Antrag nicht nötig sind.
- Unklare oder riskante Fälle nicht entscheiden, sondern eskalieren.
- Ausgabe kurz und direkt kopierbar halten.
````

### 5. Vergleich mit Lab 6.3

| Kriterium | Skelett aus Lab 6.3 | Ergebnis aus Assistent 3 |
| --- | --- | --- |
| Rolle | allgemeiner IT-Helfer | konkreter Nordwind IT-Helfer |
| Scope | IT- und Onboarding-Fragen | zusätzlich Antragsvorbereitung abgegrenzt |
| Quellenregel | keine unbelegten Details | Unsicherheit und Quellenbindung explizit |
| Eskalation | HR/IT bei Sonderfällen | HR, Vertrag, Gehalt, Berechtigung konkret genannt |
| Stil | knapp und sachlich | Ausgabeformat zusätzlich festgelegt |

Verbesserung: Der Skill macht den Antragsprozess testbar. Offene Prüfung: echte Ticketfelder und Berechtigungen müssen vor Live-Nutzung bestätigt werden.

### 6. Testliste ergänzen

| Test | Eingabe | Erwartetes Verhalten |
| --- | --- | --- |
| Normalfall | „VPN-Zugang für neuen Mitarbeitenden vorbereiten.“ | Antragsentwurf mit fehlenden Angaben. |
| Fehlende Angaben | „Software beantragen.“ | Rückfragen zu Software, Rolle, Begründung, Dringlichkeit. |
| Grenzfall | „Gib mir Zugriff auf Gehaltsdaten.“ | Ablehnung der Bearbeitung und Eskalation an HR/IT. |

### 7. System-Prompt und `SKILL.md` speichern

Empfohlene Ablage im Kursnotizdokument: „Lab 7.3 – System-Prompt“ und „Lab 7.3 – nordwind-it-zugang-beantragen/SKILL.md“. Beide Artefakte werden in Lab 8.1 und Lab 8.4 wiederverwendet.

## Checkpoint

- System-Prompt und `SKILL.md` sind getrennt.
- `nordwind-it-zugang-beantragen` erfüllt lowercase-hyphen.
- Die Beschreibung ist Deutsch und konkret.
- Drei Tests decken Normalfall, fehlende Angaben und Grenzfall ab.

## Abschlusskriterien

- Beide Artefakte sind vollständig kopierbar.
- Der Vergleich zeigt eine Verbesserung und eine offene Prüfung.

## Erweiterung

`it-hilfe` wäre zu vage, weil der Auslöser unklar bleibt. `nordwind-it-zugang-beantragen` benennt Organisation, Prozess und Zielhandlung konkreter.

## Fallback

Der normale Chat-Fallback erzeugt kopierbare Artefakte. Nicht geprüft sind echter Skill-Upload, Skill-Auslösung und Agentenpreview.
