# Lab 9.5 – Lösung: Governance-Kurzcheck und Aktionsplan

**Ändert die Nordwind-Projektbasis?** Nein — es entsteht eine Freigabe- und Transferdokumentation.

## Ausgangslage

Der Abschluss übersetzt die Kurskette in eine belastbare Pilotentscheidung.

## Zielartefakt

Das Zielartefakt besteht aus Nordwind-Governance-Kurzcheck, Showcase-Skizze und persönlichem Aktionsplan.

## Voraussetzungen und Starterdateien

- Grundlage sind die protokollierten Ergebnisse aus den Labs 8.3 bis 9.4.
- Nicht belegte Tenant-Fakten bleiben offen markiert.

## Aufgaben

### 1. Governance-Kurzcheck ausfüllen

| Feld | Modellantwort |
| --- | --- |
| Datenquellen | `nordwind-it-richtlinie.md`, `nordwind-onboarding-leitfaden.md`, SharePoint-Liste `IT-Geräte`, optional Microsoft Learn MCP |
| Zielgruppe | Kurs-/Pilotgruppe für interne IT- und Onboarding-Standardfragen |
| Freigeber | IT-Leitung für IT-Inhalte, HR-Verantwortung für Onboarding-Grenzen |
| Credit-Limit | pro Pilotumgebung festgelegt; Verantwortlichkeit bei Pilot-Owner |
| Abschaltkriterium | veraltete Quellen, Fehltrigger bei Grenzfällen, überschrittenes Credit-Limit oder fehlender Owner |

### 2. Erweiterungen als Zugriffsfläche markieren

| Erweiterung | Zugriffsfläche | Review-Frage |
| --- | --- | --- |
| Skills | Verhalten und Entscheidungslogik | Löst der Skill nur im vorgesehenen Fall aus? |
| Connector | SharePoint-Lesedaten | Ist die Verbindung read-only und DLP-konform? |
| MCP | externer Server und Tool-/Resource-Liste | Sind Betreiber, Tools und Authentifizierung geprüft? |
| Workflow | SharePoint-Schreibaktion und Teams-Nachricht | Liegt die Freigabe vor der Wirkung? |

### 3. Showcase-Kette skizzieren

| Station | Ergebnis |
| --- | --- |
| Problem | interne IT- und Onboarding-Anfragen sind wiederkehrend |
| Assistenten 1–3 | Use-Case-Canvas, Architektur-Kurzkonzept, Skill-Entwurf |
| Skill | IT-Zugangs-, Onboarding- und Eskalationsfähigkeiten |
| Studio-Agent | GitHub-Copilot-Harness-Agent mit Knowledge und Skills |
| MCP/Connector | Microsoft-Learn-Dokumentation und `IT-Geräte`-Liste |
| Workflow | Support-Ticket und Teams-Nachricht nach Freigabe |
| Teams | veröffentlichter Kanaltest mit Zielgruppenprüfung |

### 4. Realen Use Case formulieren

**Beispiel:** „Ein interner Onboarding-Agent beantwortet Standardfragen neuer Mitarbeitender und bereitet Sonderfälle strukturiert für HR oder IT vor.“

### 5. Weg wählen

**Beispielwahl:** Studio-Agent.

**Gründe:**

1. Der Use Case braucht Skills, Workflow und spätere Kanalveröffentlichung.
2. Grenzfälle und Eskalationen sollen getestet und überwacht werden.

**Gültige Alternative:** Chat-Agent, wenn nur freigegebene Wissensquellen beantwortet werden und keine Tools, Workflows oder MCP nötig sind.

### 6. Erste drei Skills benennen

| Skill | Zweck |
| --- | --- |
| `nordwind-it-zugang-beantragen` | IT-Zugangs-, VPN- und Software-Antragsentwürfe vorbereiten |
| `onboarding-checkliste-erstellen` | häufige Onboarding-Fragen strukturiert beantworten |
| `ticket-eskalation-vorbereiten` | nicht beantwortbare Fälle für HR oder IT formatieren |

### 7. Pilotdatum festlegen

**Beispiel:** Pilotstart am ersten Montag des nächsten Monats, zunächst mit einer Abteilung und maximal 20 Testfällen.

### 8. Governance-Owner benennen

| Verantwortung | Owner im Modell |
| --- | --- |
| Freigabe | Fachbereichsleitung + IT |
| Review | Pilot-Owner |
| Credits | Plattform-/Umgebungsverantwortung |
| Abschaltung | benannte Agent-Owner-Rolle |

## Checkpoint

- Offene Tenant-Fakten bleiben offen markiert.
- Skills, MCP und Workflow sind als Zugriffsflächen dokumentiert.
- Der Aktionsplan enthält alle Pflichtfelder.

## Abschlusskriterien

- Der Nordwind-Kurzcheck kann als Pilotfreigabe-Entwurf dienen.
- Der persönliche Pilotplan ist konkret und terminiert.

## Erweiterung

Erster Evaluationsfall: „Welche Schritte gelten am ersten Arbeitstag?“ Erfolgskriterium: Antwort nennt Login, Passwortänderung, MFA, Buddy/Patin und keine Vertragsdetails.

## Fallback

Ohne Live-Tenant bleibt die Lösung ein Planungsartefakt. Rollen, Freigaben, DLP und Credit-Limits müssen vor Umsetzung im Tenant geprüft werden.
