# Lab 8.4 – Übung: Skills hinzufügen

**Ändert die Nordwind-Projektbasis?** Ja — der Studio-Agent erhält Skills als Baseline für spätere Tool-, Workflow- und Evaluation-Labs.

## Ausgangslage

Der Nordwind Support-Agent aus Lab 8.3 nutzt Instructions und Knowledge. Aus Lab 7.3 liegt ein `SKILL.md`-Entwurf vor, und die Skill-Kandidaten aus dem Nordwind-Fall sind bekannt.

## Zielartefakt

Ein Studio-Agent mit mindestens zwei Skills, Preview-Testprotokoll und geschärften Skill-Beschreibungen.

## Voraussetzungen und Starterdateien

- Studio-Agent aus Lab 8.3 oder Fallback-Protokoll.
- `SKILL.md` aus Lab 7.3, ersatzweise der dort dokumentierte Skill-Entwurf.
- Wissensquellen aus Lab 8.1 bleiben im Agenten hinterlegt.

## Aufgaben

1. **Vorhandenen Skill hochladen**  
   Das `SKILL.md` aus Lab 7.3 über den Skills-Bereich hochladen. Falls nur ein dokumentierter Entwurf vorliegt, daraus lokal eine Datei `SKILL.md` mit Name, Beschreibung und Markdown-Anweisungen bilden.

2. **Beschreibung des Upload-Skills prüfen**  
   Prüfen, ob Anlass, Quelle, Grenze und Zielausgabe in der Beschreibung stehen. Bei Bedarf nachschärfen.

3. **Zweiten Skill mit Generate with AI erstellen**  
   Einen Skill für `onboarding-checkliste-erstellen` natürlichsprachlich beschreiben und Rückfragen vollständig beantworten.

4. **Optionalen dritten Skill von blank anlegen**  
   Bei ausreichender Zeit `ticket-eskalation-vorbereiten` manuell erstellen. Baseline bleibt bei zwei Skills.

5. **Preview-Trigger testen**  
   Pro Skill drei Prompts testen: Standardfall, anders formulierte Variante und Nicht-Auslöser.

6. **Beschreibungen nachschärfen**  
   Nach Fehltriggern die jeweilige Description ändern und denselben Prompt erneut testen.

7. **Finale Skill-Notiz dokumentieren**  
   Pro Skill finalen Namen, finale Beschreibung, einen erfolgreichen Trigger und einen Nicht-Auslöser notieren.

## Checkpoint

- Mindestens zwei Skills sind im Agenten vorhanden oder im Fallback vollständig spezifiziert.
- Jede Description nennt Anlass, Zweck, Grenze und Zielausgabe.
- Mindestens ein Trigger-Test wurde nach einer Beschreibungskorrektur wiederholt.

## Abschlusskriterien

- Der Upload-Skill aus Lab 7.3 ist integriert oder sauber als `SKILL.md` vorbereitet.
- Der Generate-with-AI-Skill ist geprüft und nicht ungeprüft übernommen.
- Das Preview-Protokoll zeigt Standardfall, Variante und Nicht-Auslöser pro Baseline-Skill.

## Erweiterung

Den dritten Skill `ticket-eskalation-vorbereiten` vollständig von blank erstellen und gegen Standardfragen abgrenzen.

## Fallback

Ohne Skills-Zugang: die drei Skill-Spezifikationen als Markdown dokumentieren und Trigger-Tests anhand erwarteter Prompts ausfüllen. Einschränkung: echte Auslösung und Fehltrigger bleiben bis zum Tenant-Test unvalidiert.
