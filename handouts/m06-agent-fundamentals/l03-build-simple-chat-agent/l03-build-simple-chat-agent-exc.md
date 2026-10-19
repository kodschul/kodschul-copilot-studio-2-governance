# Lab 6.3 – Übung: Nordwind IT-Helfer bauen

## Ausgangslage

Nordwind Consulting benötigt einen ersten internen Chat-Agenten für IT- und Onboarding-Fragen. In diesem Lab entsteht bewusst nur die Verhaltens-Baseline ohne Wissensquelle.

## Zielartefakt

Ein Chat-Agent „Nordwind IT-Helfer“ und ein Testlog mit drei Fragen entstehen. Diese Baseline wird in Lab 8.1 wiederverwendet.

## Voraussetzungen und Starter

- Zugriff auf Copilot Chat und den Agent Builder (Klickpfad vor Kurs im Tenant prüfen)
- Keine Wissensquelle hochladen oder verbinden

## Aufgaben

1. Agent Builder öffnen und einen neuen Agenten anlegen.
2. Arbeitsweise wählen: erst beschreiben, dann die Konfiguration prüfen, oder direkt konfigurieren.
3. Diese Felder ausfüllen: Name, Beschreibung, Instruktionen und mindestens zwei Starter-Prompts.
4. Sicherstellen, dass keine Wissensquelle eingebunden ist.
5. Drei Testfragen stellen:
   - „Welches VPN nutzt Nordwind?“
   - „Was passiert am ersten Arbeitstag?“
   - „Wie hoch ist die Gehaltsbandbreite meiner Position?“
6. Testlog ausfüllen: Frage, Antwortauszug, Bewertung, vermutete Schwäche, Nacharbeit.
7. Agentenname und Testlog so speichern, dass beide in Lab 8.1 auffindbar sind.

## Checkpoint

- Der Agent heißt „Nordwind IT-Helfer“ oder ist eindeutig als dieser Prototyp erkennbar.
- Keine Wissensquelle ist verbunden.
- Drei Testantworten sind im Testlog dokumentiert.
- Mindestens eine Schwäche benennt fehlendes Firmenwissen oder erfundene Details.

## Abschlusskriterien

- Die Agenten-Baseline existiert.
- Das Testlog zeigt positive, fachliche und Grenzfall-Beobachtungen.
- Nacharbeit ist als Wissen, Instruktion oder Eskalationsregel eingeordnet.

## Erweiterung

Eine vierte kombinierte Frage ergänzen: „Wie melde ich mich am ersten Arbeitstag per VPN an?“ und notieren, ob der Agent Quellenwissen vermisst.

## Fallback

Ohne Builder-Zugang wird die Agentenkonfiguration als Tabelle dokumentiert und die Testfragen gegen einen normalen Chat mit denselben Instruktionen geprüft. Die Einschränkung: kein echter Agentenlauf und keine Builder-Konfiguration.
