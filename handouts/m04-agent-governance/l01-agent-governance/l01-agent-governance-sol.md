# Lab 4.1 – Lösung: Governance-Blatt für den geplanten Nordwind Support-Agenten

**Ändert die Nordwind-Projektbasis?** Nein — es entsteht die Freigabe- und Betriebsdokumentation für den geplanten Agenten (Soll-Entwurf).

## Ausgangslage

Der Agent soll nicht nur funktionieren, sondern kontrolliert gebaut, freigegeben und betrieben werden. Das Blatt entsteht vor dem Bau (Tag 2); Lab 9.5 gleicht den fertigen Agenten damit ab.

## Aufgaben

### 1. Governance-Blatt anlegen

| Zeile | Eintrag für Nordwind |
| --- | --- |
| Zielgruppe | neue Mitarbeitende sowie interne Standard-Support-Anfragende |
| Wissensquellen | `nordwind-it-richtlinie.md`, `nordwind-onboarding-leitfaden.md` |
| Skills | `nordwind-it-zugang-beantragen` (Lab 7.3); weitere Skills erst nach Review |
| Workflow/Tools | Konnektor `IT-Geräte` (nur lesend, Lab 9.1); kein Workflow im Pilot |
| MCP-Server | optional, nur read-only Dokumentationsserver `<MCP-Server-URL vom Trainer>` |
| Freigeber | IT-Leitung gemeinsam mit HR-Verantwortung für den Onboarding-Teil |
| Review-Turnus | monatlich im Pilot, danach quartalsweise |
| Abschaltkriterium | Wissensquellen veraltet, Owner nicht benannt oder Credit-Limit überschritten |
| Umgebung/Solution | getrennte Test-/Pilot-Umgebung, Agent und Abhängigkeiten gemeinsam versioniert |
| Credit-Limit | pro Pilotumgebung festgelegt, mit benannter Verbrauchsverantwortung |

### 2. Offen markieren statt raten

Beispiel für einen sauber offenen Punkt:

- MCP-Server bleibt „noch offen“, solange Betreiber, URL und Tool-Umfang nicht freigegeben sind.

### 3. Zusätzliche Review-Fragen notieren

| Erweiterung | Review-Frage |
| --- | --- |
| Skills | Löst der Skill nur in den vorgesehenen Fällen aus? |
| MCP-Server | Welche Tools und Daten stellt der Server konkret bereit? |
| Konnektoren | Welche Liste und welche Felder liest der Konnektor, und ausschließlich lesend? |

### 4. Wer darf bauen, veröffentlichen, teilen?

| Tätigkeit | Rolle |
| --- | --- |
| bauen | Pilotteam im geschützten Testkontext |
| veröffentlichen | benannte Freigeber nach Review |
| teilen | nur an die freigegebene Zielgruppe |

### 5. Review-Turnus und Abschaltkriterium

- **Review-Turnus:** monatlicher Pilot-Review auf Wissensquellen, Fehltrigger und Credit-Verbrauch
- **Abschaltkriterium:** veraltete Richtlinien, fehlender Owner oder wiederholte Eskalationsfehler

### 6. Credit-Limit und Verantwortung

- Limit wird vor dem Pilot pro Umgebung festgelegt.
- Verantwortung liegt bei der Rolle, die Pilot und Evaluation freigibt.
- Evaluate ist vor Produktion Pflicht, damit Credits nicht in vermeidbare Fehlpfade laufen.

## Checkpoint

- Alle Zusatzzeilen sind enthalten.
- Offene Punkte wurden sichtbar offen gelassen.
- Build, Publish und Share sind rollensepariert.

## Abschlusskriterien

- Das Governance-Blatt ist vollständig genug für einen Pilotentscheid.
- Review-Turnus, Abschaltkriterium und Credit-Verantwortung sind explizit festgehalten.

## Erweiterung

Für Produktion würden strengere DLP-, Freigabe- und Monitoring-Regeln ergänzt. Im Pilot reicht eine schlankere, aber dokumentierte Variante.

## Fallback

Ohne Live-Umgebung bleibt die Lösung ein statisch ausgefülltes Governance-Artefakt. Rollen, Umgebungen und Limits müssen dann vor dem Kurs im Tenant abgeglichen werden.
