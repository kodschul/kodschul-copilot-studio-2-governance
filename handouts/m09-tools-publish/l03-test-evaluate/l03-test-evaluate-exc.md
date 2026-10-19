# Lab 9.3 – Übung: Testset anlegen und Verbesserung prüfen

**Ändert die Nordwind-Projektbasis?** Ja — der Agent erhält eine erste dokumentierte Qualitätsbasis.

## Ausgangslage

Der Nordwind IT-Helfer enthält Knowledge, Skills, einen lesenden Connector und optional einen MCP-Server. Vor dem Veröffentlichen soll ein kleines Testset Schwächen sichtbar machen.

## Zielartefakt

Ein Fünf-Fragen-Testset mit Erwartung, Lauf-1-Ergebnis, Anpassung, Lauf-2-Ergebnis und kurzer Entscheidung.

## Voraussetzungen und Starterdateien

- Agent aus Lab 9.1 und 9.2.
- Skills aus dem vorherigen Skills-Lab.
- Nordwind-Wissensquellen `../../project/nordwind-it-richtlinie.md` und `../../project/nordwind-onboarding-leitfaden.md`.
- Evaluate-Zugang im Tenant; sonst Fallback-Matrix.

## Aufgaben

1. Fünf Testfragen anlegen: zwei Grenzfälle, eine MCP-Frage, eine Skill-Frage zu IT-Zugang/VPN-Antrag und eine normale Knowledge-Frage.
2. Für jede Frage das erwartete Verhalten notieren: direkte Antwort, Skill, Connector, MCP, Eskalation oder Nicht-Antwort.
3. Testset ausführen und die schwächste Antwort identifizieren.
4. Genau einen kleinsten sinnvollen Hebel ändern: Instructions, Skill-Beschreibung, Tool-Beschreibung oder Knowledge-Hinweis.
5. Dasselbe Testset erneut ausführen.
6. Vergleichen, ob die schwächste Antwort besser wurde und ob ein anderer Fall schlechter wurde.
7. Ergebnis als `beibehalten`, `zurückrollen` oder `weiter prüfen` markieren.

## Checkpoint

- Das Testset enthält zwei Grenzfälle, eine MCP-Frage und eine Skill-Frage zu IT-Zugang/VPN-Antrag.
- Zwischen Lauf 1 und Lauf 2 wurde nur ein Hebel verändert.
- Die Entscheidung beruht auf beobachteter Antwortqualität, nicht auf Bauchgefühl.

## Abschlusskriterien

- Zwei Läufe desselben Testsets sind dokumentiert.
- Eine konkrete Anpassung ist begründet und bewertet.

## Erweiterung

Eine sechste Frage ergänzen, die bewusst einen unnötigen Connector- oder MCP-Aufruf provoziert.

## Fallback

Ohne Evaluate-Zugang: dieselben fünf Fragen in Preview ausführen und in einer Markdown-Matrix bewerten. Einschränkung: kein echter Testset-Lauf im Evaluate-Tab.
