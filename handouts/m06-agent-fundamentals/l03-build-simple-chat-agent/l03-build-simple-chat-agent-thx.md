# Lab 6.3 – Ersten Chat-Agenten bauen

Der erste Nordwind IT-Helfer entsteht im Copilot-Chat-Agent-Builder ohne Wissensquelle. Dieses Lab erzeugt eine Baseline und macht die Grenzen fehlenden Firmenwissens sichtbar.

**Leitfragen:**

<details><summary>Welche drei Angaben braucht ein Agent mindestens?</summary>
Name, Beschreibung und Instruktionen reichen für einen ersten Test. Für belastbare Fachantworten kommt später Wissen hinzu.
</details>

<details><summary>Woran erkennt man fehlendes Firmenwissen?</summary>
Antworten bleiben allgemein, raten Details oder eskalieren nicht sauber. Ein Testlog macht diese Schwächen sichtbar.
</details>

<details><summary>Was unterscheidet Beschreiben und Konfigurieren?</summary>
Beschreiben startet natürlichsprachlich; Konfigurieren macht Felder, Regeln und Starter-Prompts explizit sichtbar.
</details>

## Bausteine im Agent Builder

| Feld | Zweck für den Nordwind IT-Helfer |
| --- | --- |
| Name | sichtbarer Agentenname, z. B. „Nordwind IT-Helfer“ |
| Beschreibung | kurze Erwartung für Nutzende und Agentenauswahl |
| Instruktionen | Rolle, Umfang, Stil, Grenzen, Eskalation |
| Starter-Prompts | typische Einstiegsfragen für den Test |
| Wissen | in diesem Lab bewusst leer |

## Beschreiben vs. Konfigurieren

| Arbeitsweise | Vorteil | Risiko |
| --- | --- | --- |
| Beschreiben | schneller Start aus einer natürlichsprachlichen Idee | wichtige Grenzen bleiben implizit |
| Konfigurieren | klare Felder und prüfbare Regeln | etwas mehr Sorgfalt beim Ausfüllen |
| Kombination | Idee grob beschreiben, dann Felder prüfen | nur tragfähig, wenn Tests folgen |

## Instruktionsskelett

Ein knappes Skelett liefert Rolle, Ziel, Quellenregel, Eskalation und Antwortstil. Die Assistenten-Kette (Lab 7.1–7.3) ersetzt es später durch einen ausgearbeiteten System-Prompt.

## Testlog als Baseline

| Testfrage | Erwartung ohne Wissen | Beobachtung | Schwäche | Nacharbeit |
| --- | --- | --- | --- | --- |
| VPN-Frage | keine belegte Nordwind-Antwort | offen | mögliches Raten | Wissen ergänzen |
| Erster Arbeitstag | keine belegte Nordwind-Antwort | offen | allgemeines Onboarding | Wissen ergänzen |
| Gehaltsfrage | Eskalation an HR | offen | Grenzfallprüfung | Instruktion schärfen |

> **Merksatz:** Ein Agent ohne Wissensquelle ist ein Verhaltenstest, kein verlässlicher Fachagent.

## Typische Schwächen

- Firmennamen, Tools oder Fristen können erfunden wirken.
- Allgemeinwissen ersetzt keine Nordwind-Quelle.
- Grenzfälle werden nur sauber behandelt, wenn die Instruktion explizit ist.

## Beispiel: Agent-Builder-Felder mit typischer Ausgabe

Die Ausgabe zeigt ein typisches Muster ohne Wissensquelle; der Wortlaut variiert zwischen Läufen.

| Feld | Beispiel für einen anderen kleinen Agenten |
| --- | --- |
| Name | Nordwind Headset-Helfer |
| Beschreibung | Beantwortet erste Fragen zu Standard-Headsets und verweist bei Beschaffung an den IT-Support. |
| Instruktionen | Antworte kurz. Behaupte keine Gerätemodelle ohne Quelle. Bei fehlender Quelle Unsicherheit nennen und an IT-Support verweisen. |
| Starter-Prompt 1 | „Welches Headset ist für Teams-Besprechungen vorgesehen?“ |
| Starter-Prompt 2 | „Wie formuliere ich eine Anfrage an den IT-Support?“ |
| Starter-Prompt 3 | „Welche Angaben braucht eine Headset-Anfrage?“ |

```text
Testfrage ohne Wissensquelle:
Welches Headset nutzt Nordwind standardmäßig?
```

```text
Typische Ausgabe:
Mir liegt keine verbundene Nordwind-Geräteliste vor. Häufig stellt die IT
Standard-Headsets bereit; bitte im internen IT-Support oder in der Geräteliste
prüfen, welches Modell aktuell gilt.
```

Risiko: Ohne Wissensquelle bleibt die Antwort vorsichtig oder generisch; ein Modellname wäre erfunden.

## Fazit

- Der erste Chat-Agent prüft Rolle, Stil und Grenzen.
- Fehlendes Wissen wird absichtlich sichtbar und im Testlog dokumentiert.
- Die Baseline aus Agent und Testlog wird in späteren Labs verbessert.

Die Übung baut den Nordwind IT-Helfer ohne Wissensquelle und dokumentiert drei Testläufe.
