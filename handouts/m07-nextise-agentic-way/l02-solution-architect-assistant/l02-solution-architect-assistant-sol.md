# Lab 7.2 – Lösung: Solution Architect einsetzen

## Ausgangslage

Die Top-1-Empfehlung aus Lab 7.1 lautet „Nordwind IT-Helfer für interne IT- und Onboarding-Standardfragen“. Die Musterlösung erzeugt daraus einen schlanken Bauplan.

## Zielartefakt

Ein Architekturpaket mit Kurzkonzept, Skill-Liste, Tool-Grenzen, Ablauf und ausgewähltem Skill liegt vor.

## Voraussetzungen und Starter

- Canvas, Scoring und Risiken aus Lab 7.1 werden als Eingabe übernommen.
- Der Assistent-2-Prompt aus `../01-assistenten-prompts.md` bleibt unverändert.

## Aufgaben

### 1. Neuen Assistenten oder Chat anlegen

Der Prompt „Assistent 2 – Solution Architect“ wird als Rollen- oder Systemanweisung eingefügt.

### 2. Top-1-Empfehlung und Canvas einfügen

Geeignete Eingabe ist die komplette Lab-7.1-Ausgabe: Canvas, Scoring, Top-1-Empfehlung, Risiken und nächste Validierungsschritte.

### 3. Kurzkonzept erzeugen

| Feld | Musterinhalt |
| --- | --- |
| Zielbild | Interner Nordwind IT-Helfer beantwortet Standardfragen und bereitet Eskalationen vor. |
| Zielgruppe | Neue Mitarbeitende, Teamassistenzen, IT-Erstkontakt. |
| Scope | VPN, Erstlogin, Standardsoftware, Onboarding-Schritte, Supportkontakt. |
| Nicht-Scope | Gehalt, Vertrag, personenbezogene Sonderfälle, automatische Freigaben. |
| Erfolgskriterien | Drei Basistestfragen korrekt beantworten oder sauber eskalieren. |

### 4. Maximal 5–6 prozessabhängige Skills erzeugen

| Skill | Zweck | Eingabe | Ausgabe |
| --- | --- | --- | --- |
| `nordwind-it-zugang-beantragen` | IT-Zugang oder VPN-Antrag vorbereiten | Anliegen, Personengruppe, fehlende Angaben | strukturierter Antragsentwurf |
| `onboarding-checkliste-erstellen` | erste Schritte bündeln | Startdatum, Rolle, Fragekontext | kurze Checkliste |
| `supportfall-eskalieren` | Sonderfall sauber übergeben | Frage, bisherige Antwort, Grund | Eskalationsnotiz |
| `richtlinienantwort-pruefen` | Antwort gegen Quellenlogik prüfen | Antwortentwurf, Quelle | Prüfergebnis |
| `starterfrage-klaeren` | unklare Anfrage präzisieren | unvollständige Frage | Rückfragenliste |

### 5. Tool-Bedarf getrennt notieren

| Baustein | Rolle | Status |
| --- | --- | --- |
| Knowledge | IT-Richtlinie und Onboarding-Leitfaden | später verbindlich hinzufügen |
| Tool | Ticket erstellen oder Status lesen | später prüfen, nicht Teil dieses Labs |
| Human-in-the-loop | Freigabe bei Sonderfällen | Pflicht bei HR, Vertrag, Berechtigung |

### 6. Ablauf und Übergabepaket sichern

Ablauf: Anfrage entgegennehmen → Zweck und Zuständigkeit prüfen → passende Quelle oder Skill wählen → Antwort oder Antragsentwurf erzeugen → Grenzfall eskalieren → Testlog aktualisieren.

Übergabepaket für Assistent 3:

- Agent: Nordwind IT-Helfer.
- Rolle: interner IT- und Onboarding-Support für Standardfragen.
- Grenzen: keine Gehalts-, Vertrags- oder Sonderfreigaben.
- Quellen: IT-Richtlinie und Onboarding-Leitfaden.
- Gewählter Skill: `nordwind-it-zugang-beantragen`.
- Testfälle: VPN-Antrag, fehlende Angaben, Gehaltsfrage als Grenzfall.

### 7. Genau einen Skill auswählen

Ausgewählt wird `nordwind-it-zugang-beantragen`, weil dieser Skill einen klaren Prozess, Eingaben, Ausgabe und Freigabegrenzen besitzt.

## Checkpoint

- Die Skill-Liste bleibt bei fünf Einträgen.
- Tool, Knowledge und Skill sind getrennt.
- Eskalation ist im Ablauf enthalten.
- Ein Skill ist eindeutig gewählt.

## Abschlusskriterien

- Assistent 3 kann mit dem Übergabepaket arbeiten.
- Der gewählte Skill besitzt Name, Zweck, Eingaben, Ausgaben und Testfälle.

## Erweiterung

`richtlinienantwort-pruefen` kann aus der ersten Version gestrichen werden, wenn Preview-Tests zunächst manuell erfolgen. Das reduziert Bau- und Testaufwand.

## Fallback

Der normale Chat-Fallback erzeugt dasselbe Architekturpaket. Nicht erzeugt wird ein wiederverwendbarer Architect-Agent in der Agentenleiste.
