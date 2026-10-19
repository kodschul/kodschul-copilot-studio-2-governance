# Lab 6.3 – Lösung: Nordwind IT-Helfer bauen

## Ausgangslage

Nordwind Consulting benötigt einen ersten internen Chat-Agenten für IT- und Onboarding-Fragen. Die Musterlösung hält die Wissensquelle bewusst leer.

## Zielartefakt

Ein lauffähiger oder vollständig dokumentierter Chat-Agent „Nordwind IT-Helfer“ liegt zusammen mit einem Testlog vor.

## Voraussetzungen und Starter

- Der Agent Builder ist tenantabhängig; UI-Bezeichnungen bleiben vor Kurs zu prüfen.
- Als Grundlage dient die Kurzfassung des Instruktionsskeletts unten.

## Aufgaben

### 1. Agent Builder öffnen und neuen Agenten anlegen

Der Builder wird über den Agentenbereich von Copilot Chat geöffnet. Der genaue Einstieg ist tenantabhängig und wird nicht als dauerhaft stabiler Klickpfad notiert.

### 2. Arbeitsweise wählen

Geeignete Musterentscheidung: zunächst natürlichsprachlich beschreiben, anschließend die Konfigurationsfelder prüfen. So bleibt der Start schnell, aber die Regeln werden sichtbar.

### 3. Felder ausfüllen

| Feld | Musterwert |
| --- | --- |
| Name | Nordwind IT-Helfer |
| Beschreibung | Unterstützt interne Fragen zu IT, Onboarding und Zuständigkeiten bei Nordwind; beantwortet nur belegbare Standardfragen. |
| Starter-Prompt 1 | „Welche Informationen braucht eine gute IT-Supportfrage?“ |
| Starter-Prompt 2 | „Was ist beim Onboarding am ersten Arbeitstag zu beachten?“ |

Musterinstruktionen:

```text
Rolle: interner IT- und Onboarding-Helfer für Nordwind Consulting.
Ziel: Standardfragen knapp, sachlich und nachvollziehbar beantworten.
Quellenregel: Ohne verbundene Nordwind-Wissensquelle keine firmenspezifischen Details behaupten.
Eskalation: Gehalt, Vertrag, personenbezogene Sonderfälle und nicht belegte Ausnahmen an HR oder IT-Support verweisen.
Stil: kurze Antwort, klare Unsicherheiten, keine erfundenen Richtlinien.
```

### 4. Keine Wissensquelle einbinden

Die Wissenssektion bleibt leer. Diese Leerstelle ist Absicht, damit die Baseline in Lab 8.1 messbar verbessert werden kann.

### 5. Drei Testfragen stellen

| Frage | Musterbeobachtung | Bewertung |
| --- | --- | --- |
| „Welches VPN nutzt Nordwind?“ | Antwort bleibt allgemein oder nennt kein belegtes Nordwind-Detail. | Schwäche: Firmenwissen fehlt. |
| „Was passiert am ersten Arbeitstag?“ | Antwort beschreibt generische Onboarding-Schritte. | Schwäche: Leitfaden fehlt. |
| „Wie hoch ist die Gehaltsbandbreite meiner Position?“ | Antwort verweist idealerweise an HR; falls Zahlen erfunden werden, ist die Eskalationsregel zu schwach. | Grenzfallprüfung. |

### 6. Testlog ausfüllen

| Frage | Antwortauszug | Bewertung | Vermutete Schwäche | Nacharbeit |
| --- | --- | --- | --- | --- |
| VPN | „Nordwind-Details liegen nicht vor.“ | akzeptabel | Wissen fehlt, aber kein Raten | IT-Richtlinie später ergänzen |
| Erster Arbeitstag | „Typische Schritte sind Konto, Gerät, MFA.“ | teilweise | allgemeines statt belegtes Wissen | Onboarding-Leitfaden ergänzen |
| Gehalt | „Bitte HR kontaktieren.“ | gut | keine Fachantwort erlaubt | Eskalation beibehalten |

### 7. Agentenname und Testlog speichern

Empfohlene Ablage im eigenen Kursnotizdokument: Abschnitt „Lab 6.3 Baseline – Nordwind IT-Helfer“. Enthalten sind Agentenname, Instruktionsfassung und Testlog.

## Checkpoint

- Der Agent ist als „Nordwind IT-Helfer“ erkennbar.
- Keine Wissensquelle ist verbunden.
- Drei Testantworten sind dokumentiert.
- Fehlendes Firmenwissen ist als wichtigste Schwäche sichtbar.

## Abschlusskriterien

- Die Baseline ist für Lab 8.1 nutzbar.
- Das Testlog trennt Wissen, Instruktion und Eskalation als Nacharbeitsarten.
- Der Grenzfall Gehalt ist nicht fachlich beantwortet.

## Erweiterung

Bei der kombinierten Frage „Wie melde ich mich am ersten Arbeitstag per VPN an?“ ist eine sichere Antwort ohne Quellen nur eingeschränkt möglich. Tragfähig ist ein Hinweis auf fehlende Nordwind-Quellen plus Nachfrage oder Eskalation.

## Fallback

Die Tabellenkonfiguration ersetzt den echten Builder nicht vollständig. Die Dokumentation reicht aus, um Instruktionen, Testfragen und Schwächen für die spätere Verbesserung vorzubereiten.
