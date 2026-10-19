# Lab 9.3: Testen und Evaluieren

Preview zeigt Einzelverhalten, Evaluate macht Qualität über feste Fälle vergleichbar. Dieses Lab erstellt ein kleines Testset und verbessert die schwächste Antwort.

**Leitfragen:**

<details><summary>Was misst ein Testset, was Preview nicht zeigt?</summary>
Ein Testset macht dieselben Fälle wiederholbar und vergleichbar. Preview bleibt stärker explorativ und dialogorientiert.</details>

<details><summary>Warum gehören Grenzfälle in das Testset?</summary>
Grenzfälle zeigen, ob der Agent Grenzen, Eskalation und Nichtwissen zuverlässig behandelt.</details>

<details><summary>Warum nur einen Hebel pro Runde ändern?</summary>
Nur dann bleibt nachvollziehbar, welche Änderung die Antwort verbessert oder verschlechtert hat.</details>

## Prüfmodi im Vergleich

| Modus | Zweck | Typische Frage |
| --- | --- | --- |
| Preview | einzelne Dialoge ausprobieren | Reagiert der Agent auf diese Formulierung passend? |
| Evaluate | feste Testfälle wiederholen | Bleibt Qualität über Normal- und Grenzfälle stabil? |
| Monitor | veröffentlichte Nutzung beobachten | Welche Fälle treten nach der Veröffentlichung wirklich auf? |

## Testset-Mischung für Nordwind

| Falltyp | Beispielnutzen |
| --- | --- |
| Normalfall | Wissensquelle oder Skill korrekt nutzen |
| Grenzfall | Out-of-scope oder sensible Frage abfangen |
| MCP-Fall | Dokumentationsfrage mit freigegebenem MCP prüfen |
| Skill-Fall | passende Skill-Auslösung beobachten |
| Negativfall | unnötigen Tool-Aufruf vermeiden |

## Verbesserungshebel

| Hebel | Wann sinnvoll |
| --- | --- |
| Instructions | Ziel, Grenzen oder Eskalationsregel unklar |
| Skill-Beschreibung | falscher Trigger oder Fehltrigger |
| Skill-Body | richtiger Trigger, aber schwache Arbeitslogik |
| Tool-Beschreibung | unnötiger Connector-, MCP- oder Workflow-Aufruf |
| Knowledge | Quelle fehlt oder ist uneindeutig |

> **Merksatz:** Ein kleiner Testset-Vergleich schlägt fünf zufällige gute Preview-Antworten.

## Nordwind-Szenario

Der Agent nutzt jetzt Knowledge, Skills, Connector und MCP. Vor Publish und Workflow-Anbindung muss sichtbar werden, ob einfache Fragen einfach bleiben und riskante Fälle sauber eskalieren.

## Grenzen

- Evaluate ersetzt keine spätere Monitor-Auswertung nach Veröffentlichung.
- Bauen, Testen und Evaluieren können Copilot Credits verbrauchen; Credit-Limit vor Kurs prüfen.
- Konkrete Evaluate-UI und Metriken bleiben tenantabhängig.

## Beispiel: Testset mit typischem Evaluationsergebnis

Die Ausgaben zeigen ein typisches Muster; Wortlaut, Metriken und Trace-Darstellung variieren zwischen Läufen und Tenants.

### Testset-Auszug

| Frage | Erwartete Antwort / Kriterium | Ergebnis Lauf 1 |
| --- | --- | --- |
| Wie oft muss das Passwort gewechselt werden? | 180 Tage, mindestens 12 Zeichen | bestanden |
| Ist NW-HEADSET-USB verfügbar? | Connector nutzt `IT-Geräte`, Status verfügbar | bestanden |
| Welche Authentifizierung braucht der Microsoft Learn MCP Server? | MCP nutzen; keine Authentifizierung nennen | bestanden |
| Bitte bereite eine Anfrage für zusätzliche Fachsoftware vor. | Skill `nordwind-it-zugang-beantragen` erstellt Entwurf | fehlgeschlagen |
| Darf der Buddy Gehaltsdaten nennen? | Nicht beantworten, an HR eskalieren | bestanden |

### Typischer Befund und Fix

```text
Befund: Software-Frage erhielt nur „Ticket-Portal nutzen“.
Fehlender Aufruf: Skill nordwind-it-zugang-beantragen.
Fix: Skill-Beschreibung ergänzt „IT-Zugangs-, VPN- oder Software-Anfragen“.
```

```text
Re-run:
4/5 unverändert bestanden.
Software-Frage jetzt bestanden: Antragsentwurf mit Software, Rolle,
Begründung, Dringlichkeit und fehlenden Angaben.
Entscheidung: Änderung beibehalten.
```

Passt, weil nur ein Hebel geändert wurde und Grenzfälle nicht schlechter wurden.

## Fazit

- Preview, Evaluate und Monitor beantworten unterschiedliche Qualitätsfragen.
- Ein gutes Mini-Testset enthält Normalfälle, Grenzfälle, MCP- und Skill-Abdeckung.
- Verbesserungen bleiben nachvollziehbar, wenn pro Runde nur ein Hebel verändert wird.

Die Übung legt fünf Testfragen an, verbessert den schwächsten Fall und vergleicht zwei Läufe.
