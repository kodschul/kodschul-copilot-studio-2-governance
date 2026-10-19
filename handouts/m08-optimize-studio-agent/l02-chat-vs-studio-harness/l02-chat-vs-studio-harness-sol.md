# Lab 8.2 – Lösung: Copilot Chat oder Copilot Studio?

**Ändert die Nordwind-Projektbasis?** Nein — es entsteht eine Architekturentscheidung für den weiteren Ausbau.

## Ausgangslage

Der optimierte Chat-Agent bleibt ein guter Startpunkt für Wissensfragen. Die Entscheidung bewertet, ob der geplante Ausbau zusätzliche Orchestrierung braucht.

## Zielartefakt

Das Zielartefakt ist eine ausgefüllte Entscheidungsmatrix plus Empfehlung für den Support-Agenten.

## Voraussetzungen und Starterdateien

| Grundlage | Verwendung |
| --- | --- |
| Testtabelle aus Lab 8.1 | zeigt, was der Chat-Agent bereits gut kann |
| Vergleichstabelle aus dem Theoriehandout | Faktengrundlage für Harness-Fähigkeiten |
| Drei Nordwind-Szenarien | decken Wissen, Prozess und Dateiarbeit ab |

## Aufgaben

### 1. Matrix anlegen

| Szenario | Primärer Weg | Kriterien | Risiko | Entscheidung |
| --- | --- | --- | --- | --- |
| FAQ | Copilot-Chat-Agent | Wissen, intern, wenig Aufbau | bei späteren Tools zu begrenzt | im Chat-Harness belassen |
| Onboarding-Prozess | GitHub-Copilot-Harness | Skills, Workflows, mehrstufiges Ziel | Credits und Setup-Aufwand | in Copilot Studio ausbauen |
| Rechnungsprüfung mit Dateien | GitHub-Copilot-Harness | Dateien, Reasoning, Ausnahmen | hoher Governance-Bedarf | nur mit klarem Nutzen und Review |

### 2. FAQ-Szenario entscheiden

Der Copilot-Chat-Agent reicht für FAQ zu VPN, Standardsoftware und erstem Arbeitstag aus. Der Kernbedarf ist Wissen aus internen Quellen, interne Veröffentlichung und niedriger Aufbauaufwand.

### 3. Onboarding-Prozess entscheiden

Der GitHub-Copilot-Harness ist passender, wenn aus der Anfrage eine Checkliste, eine Eskalation oder später ein Tool-Aufruf entstehen soll. Skills und Workflows rechtfertigen den Wechsel, wenn der Prozess über reine Antwortlogik hinausgeht.

### 4. Rechnungsprüfung mit Dateien entscheiden

Der GitHub-Copilot-Harness ist der passende Kandidat, weil die Faktengrundlage native Word-, Excel-, PowerPoint- und PDF-Dateiarbeit sowie mehrstufiges Reasoning belegt. Der Fall braucht zusätzlich Governance, Testsets und klare Credit-Verantwortung.

### 5. Support-Agent empfehlen

Empfehlung: Der Nordwind Support-Agent wird für den weiteren Kurs in Copilot Studio auf dem GitHub-Copilot-Harness aufgebaut, weil Skills, spätere Tools und Evaluation geübt werden. Der reine FAQ-Anteil zu VPN und erstem Arbeitstag könnte schlank im Copilot-Chat-Agenten bleiben.

### 6. Nicht-Wechselbarkeit prüfen

Die Harness-Wahl ist früh kritisch, weil Agenten nicht nachträglich zwischen Standard- und GitHub-Copilot-Harness übertragen werden. Ein falsch gewählter Weg bedeutet Neuaufbau statt einfacher Umschaltung.

## Checkpoint

- FAQ, Onboarding-Prozess und Rechnungsprüfung sind getrennt entschieden.
- Jede Begründung nennt Fähigkeit und Kosten-/Aufwandswirkung.
- Der GitHub-Copilot-Harness wird als Copilot-Studio-Harness beschrieben, nicht als GitHub-Copilot-Dienst.

## Abschlusskriterien

- Die Matrix zeigt bewusst, dass der Chat-Agent für FAQ tragfähig bleibt.
- Die Empfehlung passt zum geplanten Ausbau mit Skills und späteren Tool-/Workflow-Bausteinen.
- Die Risiken Credits, Preview-Status und Governance bleiben sichtbar.

## Erweiterung

Ein eigenes Szenario ist tragfähig begründet, wenn mindestens zwei Kriterien klar entscheiden: Wissen, Tools, Skills, Memory, Workflows, Dateien, Kanäle oder Abrechnung.

## Fallback

Ohne Tenant-Zugang bleibt die Entscheidung statisch belastbar. Reale UI-Optionen, Kanalverfügbarkeit und Credit-Anzeigen müssen vor Kursbeginn im Tenant geprüft werden.
