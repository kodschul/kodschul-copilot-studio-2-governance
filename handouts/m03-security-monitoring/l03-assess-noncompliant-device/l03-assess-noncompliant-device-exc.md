# Lab 3.3 – Übung: Endgerät bewerten

**Ändert die Nordwind-Projektbasis?** Ja — nutzt Sandbox-Zugriff auf Intune und Security Copilot.

## Ausgangslage

Ein vorbereitetes, simuliertes nicht-konformes/gefährdetes Testgerät liegt vor: `nordwind-testgeraet-nichtkonform.md` in `handouts/project/` (Kursvoraussetzung).

## Aufgaben

1. Die drei zentralen Signale (Intune-Konformität, Entra-Anmelderisiko, Purview-Zugriff) für das Testgerät prüfen und dokumentieren.
2. Anhand der Entscheidungslogik aus der Theorie festlegen: sperren oder einschränken?
3. Die Entscheidung mit einer Security-Copilot-Zusammenfassung der drei Signale abgleichen.
4. Eine Stelle benennen, an der Security Copilot Zeit gespart hat gegenüber dem einzelnen Prüfen jeder Quelle.
5. Die getroffene Entscheidung (sperren/einschränken) mit Begründung dokumentieren.

## Checkpoint

- Alle drei Signalquellen wurden tatsächlich geprüft, nicht nur eine.
- Die Entscheidung (sperren/einschränken) ist konsistent mit der Risikoeinschätzung aus Aufgabe 1.
- Die Zeitersparnis in Aufgabe 4 ist konkret benannt, nicht nur pauschal behauptet.

## Abschlusskriterien

- Eine dokumentierte, begründete Geräteentscheidung liegt vor.

## Erweiterung

Denselben Fall mit nur zwei statt drei Signalquellen (z. B. ohne Purview-Information) durchspielen und prüfen, ob sich die Entscheidung ändern würde.

## Fallback

Ohne echtes Testgerät: die Bewertung anhand der vorbereiteten Screenshots des simulierten Szenarios vornehmen.
