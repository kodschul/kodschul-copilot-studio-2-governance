# Lab 6.2 – Copilot Chat & Agent Builder

Copilot Chat ist der schnelle Einstieg in Chat, Arbeitskontext und einfache Agenten. Dieses Lab beobachtet die Oberfläche und markiert den Einstieg in den Agent Builder.

**Leitfragen:**

<details><summary>Welche UI-Elemente sind für Agenten relevant?</summary>
Relevant sind Chat-Modus Arbeit/Web, Agentenbereich, Agent erstellen, Verlauf und Eingabefeld mit Anhängen.
</details>

<details><summary>Worin unterscheiden sich Copilot Chat und Microsoft 365 Copilot?</summary>
Copilot Chat ist der Chat-Einstieg; Microsoft 365 Copilot beschreibt den lizenzierten Arbeitskontext in M365-Apps und Arbeitsdaten.
</details>

## Beobachtungsbegriffe

| Begriff | Beobachtung im Demo-Tenant |
| --- | --- |
| Arbeit/Web | Umschalter oder Modus für Arbeits- bzw. Webkontext; Bezeichnung vor Kurs im Tenant prüfen |
| Agentenleiste | Bereich mit verfügbaren oder angehefteten Agenten |
| Agent erstellen | Einstieg in den No-Code-Agent-Builder; Klickpfad vor Kurs im Tenant prüfen |
| Verlauf | Ort, an dem mehrstufige Chat-Aufgaben Kontext behalten |

## Trainer-Demo: Live-Elemente

| Element | Zweck der Beobachtung | Erwartete Notiz |
| --- | --- | --- |
| Neuer Chat | startet einen frischen Verlauf | Kontext beginnt leer |
| Arbeit/Web | zeigt Datenreichweite | Arbeitsdaten nur mit passender Lizenz und Berechtigung |
| Agents/Agenten | zeigt vorhandene Agenten | Agenten werden als eigener Einstieg sichtbar |
| Agent erstellen | öffnet den Builder | genaue Position tenantabhängig |

## Copilot Chat vs. Microsoft 365 Copilot

| Kriterium | Copilot Chat | Microsoft 365 Copilot |
| --- | --- | --- |
| Einstieg | eigenständiger Chat in Web, App oder Teams-Kontext | Copilot-Funktionen in M365-Apps und im Arbeitskontext |
| Datenbasis | Web, Anhänge und je nach Modus Arbeitsdaten | M365-Arbeitsdaten nach Berechtigung, App-Kontext, Dateien, Mails, Chats, Kalender |
| Typische Nutzung | offene Frage, Recherche, Entwurf, Agentenstart | Arbeit an Dokument, Mail, Meeting, Tabelle oder Präsentation |
| Risiko | falscher Modus oder ungeeignete Datenanhänge | scheinbar vollständiger Kontext trotz fehlender Berechtigung |
| Kursbezug | Lab 6.3 baut den ersten Chat-Agenten | spätere Labs nutzen M365-Kontext als Arbeitsumgebung |

## Sicherheits- und Verifikationspunkte

- Anmeldung mit Firmenkonto ist Voraussetzung für Unternehmensschutz und Arbeitskontext.
- Keine echten Kundendaten oder vertraulichen Daten in Kursübungen einfügen.
- UI-Bezeichnungen und Rollout-Status vor Kursbeginn im Tenant prüfen.

> **Merksatz:** Für Agentenbau zählt nicht nur der Chat, sondern der sichtbare Ort, an dem Agenten gefunden, erstellt und getestet werden.

## Beispiel: Arbeitsmodus und Webmodus mit typischer Ausgabe

Die Ausgaben sind generisch und tenantabhängig; Bezeichnung, Datenreichweite und Quellenanzeige im Tenant prüfen.

```text
Frage: Welches Headset ist bei Nordwind für Teams-Besprechungen vorgesehen?
```

| Modus | Typische Ausgabe |
| --- | --- |
| Arbeit | „Wenn die Datei `IT-Geräte` berechtigt und im Arbeitskontext verfügbar ist: `NW-HEADSET-USB` ist als Headset für alle Rollen verfügbar; verantwortliches Team ist IT-Support.“ |
| Web | „Dazu liegen keine öffentlichen Nordwind-Informationen vor. Allgemein sollte der interne IT-Support oder die interne Geräteliste geprüft werden.“ |

Passt, weil der Arbeitsmodus berechtigte Unternehmensquellen nutzen kann, während Web ohne Quelle nur allgemein bleibt.

## Fazit

- Copilot Chat ist der Startpunkt für die schnelle Agentenbeobachtung.
- Arbeit/Web, Agentenleiste und Agent-erstellen-Einstieg sind die drei zentralen UI-Marker.
- Copilot Chat und Microsoft 365 Copilot unterscheiden sich vor allem nach Datenbasis und Arbeitskontext.

Die Übung füllt ein kurzes Beobachtungsblatt zur Demo aus.
