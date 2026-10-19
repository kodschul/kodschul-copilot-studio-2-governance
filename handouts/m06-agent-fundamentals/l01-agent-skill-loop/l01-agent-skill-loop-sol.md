# Lab 6.1 – Lösung: Nordwind-Aufgaben klassifizieren

## Ausgangslage

Nordwind Consulting sammelt mehrere Ideen für KI-Unterstützung. Vor dem Bauen wird jede Idee nach Aufwand, Datenlage, Wiederholung und Verantwortung eingeordnet.

## Zielartefakt

Eine belastbare Musterlösung ist eine Klassifizierungsmatrix mit Begründung und Bausteinbedarf. Die Nordwind-Projektbasis bleibt unverändert.

## Voraussetzungen und Starter

- Die IT- und Onboarding-Quellen liefern Beispiele für wiederkehrende Standardfragen.
- Die Matrix ist ein Entscheidungsartefakt, kein Agenten-Export.

## Aufgaben

### 1. Matrix anlegen

| Aufgabe | Einordnung | Begründung | Benötigter Baustein | Offene Prüfung |
| --- | --- | --- | --- | --- |
| A | reiner Prompt | einmalig, keine spätere Wiederverwendung | gute Aufgabenformulierung | Qualität der Ausschreibung |
| B | Chat-Agent | wiederkehrend, klare Quellen, viele Betroffene | Instruktionen + Wissen | Quellen aktuell und zugänglich |
| C | Agent mit Tools/Skills | wiederkehrender Ablauf, strukturierte Ausgabe | Skill + Wissen | Skill-Auslöser und Format testen |
| D | Agent mit Tools/Skills | Systemaktion nötig, Prozessrisiko vorhanden | Tool + Eskalationsregel | Berechtigungen und Freigabe |
| E | bewusst kein Agent | sensibel, personenbezogen, hohes Ermessen | menschliche HR-Prüfung | keine Automatisierung ohne Freigabe |
| F | reiner Prompt | einmaliger Textentwurf, kein stabiler Prozess | Prompt mit Tonvorgabe | persönliche Prüfung vor Versand |

### 2. Sechs Nordwind-Aufgaben klassifizieren

Die Musterklassifikation deckt alle vier Kategorien ab. Aufgabe B ist der Kernfall für den späteren Nordwind IT-Helfer.

### 3. Kategorie wählen

- Reiner Prompt: A und F.
- Chat-Agent: B.
- Agent mit Tools/Skills: C und D.
- Bewusst kein Agent: E.

### 4. Begründung notieren

- A und F: geringe Wiederholung, kein dauerhafter Agentenbedarf.
- B: stabile Wissensbasis, wiederkehrende Fragen, klare Grenzen.
- C: wiederverwendbares Vorgehen für Checklisten spricht für einen Skill.
- D: externe Aktion verlangt Tool, Berechtigung und menschliche Kontrolle.
- E: Datenschutz, Personalbezug und Verantwortung sprechen gegen Automatisierung.

### 5. Wichtigsten Baustein benennen

| Aufgabe | Wichtigster Baustein | Grund |
| --- | --- | --- |
| B | Wissen | Antworten müssen aus Richtlinie und Leitfaden stammen. |
| C | Skill | Die Checkliste folgt einem wiederholbaren Ablauf. |
| D | Tool | Der Gerätewechsel braucht einen Systemzugriff. |
| E | menschliche Freigabe | Kein Agentenbaustein darf die Entscheidung ersetzen. |

### 6. Menschliche Freigabe markieren

Aufgabe D braucht vor der Systemaktion mindestens eine Berechtigungs- oder Ticketfreigabe. Aufgabe E bleibt vollständig bei HR.

## Checkpoint

- Alle sechs Aufgaben sind eingeordnet.
- Begründungen nutzen Wiederholung, Datenlage, Risiko, Aktion und Verantwortung.
- Aufgabe E ist bewusst kein Agent.
- Skill und Tool werden nicht vermischt.

## Abschlusskriterien

- Die Matrix begründet den späteren Nordwind IT-Helfer als Chat-Agenten mit späterem Skill-Ausbau.
- Kritische Entscheidungen sind sichtbar abgegrenzt.

## Erweiterung

Eine eigene Aufgabe ist tragfähig eingeordnet, wenn Kategorie, zwei Kriterien und ein Bausteinbedarf dokumentiert sind.

## Fallback

Die Matrix bleibt ohne Live-Zugang gültig. Nicht geprüft sind reale Builder-Optionen, verfügbare Tools und Tenant-Richtlinien.
