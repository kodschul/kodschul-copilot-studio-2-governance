# Lab 9.2 – Übung: Read-only MCP-Server anbinden

**Ändert die Nordwind-Projektbasis?** Ja — der Nordwind IT-Helfer erhält eine zusätzliche read-only Tool-Quelle.

## Ausgangslage

Der Agent kann Wissensquellen, Skills und einen lesenden Connector nutzen. Für dokumentationsnahe Fragen soll ein freigegebener MCP-Server getestet werden.

## Zielartefakt

Ein MCP-Testprotokoll mit Server, Zweck, Authentifizierung, Testfrage, beobachtetem Tool-Aufruf und Governance-Notiz.

## Voraussetzungen und Starterdateien

- Vom Kurs freigegebener read-only MCP-Server.
- Bevorzugt: Microsoft Learn MCP Server `https://learn.microsoft.com/api/mcp`, sofern im Tenant erlaubt.
- Alternative: anderer vorab geprüfter Dokumentations-MCP-Server.
- Generative Orchestration und MCP-Verfügbarkeit vor Kurs im Tenant prüfen.

## Aufgaben

1. Freigegebenen MCP-Server prüfen: Betreiber, Zweck, Transport, Authentifizierung und read-only-Charakter notieren.
2. MCP-Server im Tools-Bereich des Agenten anbinden. Klickpfad vor Kurs im Tenant prüfen.
3. Verbindung oder Authentifizierung einrichten, falls der Server dies verlangt.
4. Tools/Resources des MCP-Servers ansehen und eine knappe Beschreibung für den Agenten prüfen oder ergänzen.
5. Eine Frage stellen, die nachvollziehbar den MCP-Server braucht, zum Beispiel nach einem Microsoft-Learn-Dokumentationsfakt.
6. Im Verlauf prüfen und notieren, welches Tool oder welche MCP-Quelle gelaufen ist.
7. Eine Nordwind-Standardfrage stellen und prüfen, ob der Agent ohne MCP direkt aus Knowledge oder Skill antwortet.

## Checkpoint

- Server, Betreiber und Zweck sind dokumentiert.
- Der Server ist read-only oder im Kurs ausdrücklich als read-only freigegeben.
- Mindestens ein MCP-gestützter und ein MCP-freier Test sind notiert.

## Abschlusskriterien

- Der Agent beantwortet eine passende Frage mit MCP-Unterstützung.
- Das Protokoll zeigt, wann MCP genutzt wurde und wann nicht.

## Erweiterung

Eine zweite dokumentationsnahe Frage formulieren und die Tool-Beschreibung nachschärfen, falls MCP zu breit auslöst.

## Fallback

Ohne MCP-Freigabe: Trainer-Demo verfolgen und das MCP-Testprotokoll statisch ausfüllen. Einschränkung: kein eigener Laufzeitnachweis.
