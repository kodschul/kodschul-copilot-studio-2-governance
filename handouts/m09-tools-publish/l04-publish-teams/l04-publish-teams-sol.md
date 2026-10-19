# Lab 9.4 – Lösung: Agent in Teams veröffentlichen

**Ändert die Nordwind-Projektbasis?** Ja — der Agent wird in einem Kanal getestet.

## Ausgangslage

Der Agent soll nicht breit ausgerollt, sondern kontrolliert in Teams geprüft werden.

## Zielartefakt

Das Publish-Protokoll ist vollständig, wenn Version, Kanal, Test, Freigabe und Oversharing-Prüfung dokumentiert sind.

## Voraussetzungen und Starterdateien

- Veröffentlicht wird nur der Nordwind IT-Helfer aus der Kursumgebung.
- Zielgruppe im Modell: eigene Testperson oder Kursgruppe.
- Organisationsweite Freigabe bleibt ausgeschlossen, bis Admin-Review erfolgt ist.

## Aufgaben

### 1. Aktuelle Agentenversion benennen

| Feld | Modellantwort |
| --- | --- |
| Version/Stand | `m07-evaluate-nachlauf-1` |
| Letzte kritische Änderung | Skill-Beschreibung gegen private-Geräte-Fehltrigger geschärft |
| Noch offen | GitHub-Harness-Publish-Pfad im Tenant geprüft markieren |

### 2. Agent veröffentlichen

Der Publish-Schritt wird nach der letzten relevanten Änderung ausgeführt. Ohne Publish darf die Änderung nicht als kanalwirksam gelten.

### 3. Kanal verbinden

Kanal: **Teams und Microsoft 365 Copilot**.

Vor-Kurs-Prüfung: Im Kunden-Tenant muss bestätigt werden, ob die Option für den GitHub-Copilot-Harness-Agenten sichtbar ist und ob Microsoft 365 Copilot zusätzlich aktiviert werden darf.

### 4. Agent in Teams öffnen und Standardfrage stellen

**Testfrage:** „Welches VPN nutzt Nordwind?“

**Erwartetes Ergebnis:** Antwort nennt Cisco Secure Client, Firmen-Login und MFA; keine Connector-, MCP- oder Workflow-Nutzung nötig.

### 5. Freigabe-Einstellungen notieren

| Einstellung | Modellnotiz |
| --- | --- |
| Installation | zuerst eigenes Teams-Profil |
| Link | nur nutzbar für Personen mit Agent-Zugriff |
| Geteilte Nutzende | Kursgruppe oder Testgruppe |
| App-Store-Anzeige | nur mit passender Freigabe sichtbar |
| Organisation | Admin-Freigabe erforderlich, nicht im Baseline-Lab |

### 6. Oversharing-Check durchführen

| Prüffeld | Entscheidung |
| --- | --- |
| Zielgruppe | nur Pilot-/Kursgruppe |
| Wissensquellen | fiktive Nordwind-Dateien, keine realen Kundendaten |
| Connector | nur read-only `IT-Geräte` |
| MCP | nur freigegebener read-only Server |
| Workflow | noch nicht produktiv breit geteilt |

### 7. Änderung nicht ohne neues Publish bewerten

Wenn nach dem Teams-Test eine Skill- oder Tool-Beschreibung angepasst wird, muss erneut veröffentlicht und in einer neuen Session getestet werden.

## Checkpoint

- Publish erfolgte nach der letzten Änderung.
- Teams-Testfrage wurde beantwortet.
- Freigabe und Zielgruppe sind sichtbar dokumentiert.

## Abschlusskriterien

- Ein Teams-Testlauf ist nachvollziehbar beschrieben.
- Oversharing wurde nicht pauschal verneint, sondern pro Fläche geprüft.

## Erweiterung

Nach einem erneuten Publish kann eine neue Session gestartet werden. In Teams kann je nach Kanal `start over` oder eine neue Unterhaltung nötig sein, damit aktuelle Inhalte sichtbar werden.

## Fallback

Ohne Publish-Rechte bleibt die Lösung ein beobachtetes Demo-Protokoll. Der echte Kanalnachweis muss mit passenden Rechten vor oder während des Kurses nachgeholt werden.
