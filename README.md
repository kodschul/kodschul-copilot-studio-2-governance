# Copilot Studio: Governance & Agenten bauen (2 Tage)

Kursordner für Trainer:innen. Er enthält die fertigen **Slidev-Quellen** (`slides-dev/`) und die **Handouts** als Markdown (`handouts/`). Alle Inhalte sind aus bestehenden Kursen zusammengestellt, nichts wurde neu generiert; die Quellen stehen in [`slides_overview.md`](slides_overview.md) und [`handouts/m00-overview/topics.md`](handouts/m00-overview/topics.md).

| Tag | Thema | Quelle |
| --- | --- | --- |
| Tag 1 | Governance: Lizenzierung, Oversharing, Security & Compliance, Monitoring, Agent-Governance, Betriebsmodell | `copilot-week-5-com`, `copilot-agents-studio-2-com` |
| Tag 2 | Agenten bauen: Chat-Agent, Nextise Agentic Way, Studio-Agent mit Skills, Tools & MCP, Teams | `copilot-studio-2-com` |

Durchgehendes Szenario ist „Nordwind Consulting". Sprache: Deutsch, Du-Form in den Übungen.

## Ordnerstruktur

```text
copilot-studio-2-governance/
├── README.md              # diese Datei
├── spec.md                # ursprüngliche Vorgabe
├── slides_overview.md     # Deck → Module → Zeiten, Herkunft, Lab-Nummern
├── handouts/              # Handouts (Markdown)
│   ├── m00-overview/      # Kursüberblick mit Agenda, Themenliste
│   ├── m01 … m05          # Tag 1: Governance
│   ├── m06 … m09          # Tag 2: Agenten bauen
│   └── project/           # Nordwind-Übungsdateien (md, xlsx)
└── slides-dev/            # Slidev-Quellen
    ├── s00 … s06          # je ein Deck: sNN/sNN.md
    ├── scripts/           # Frontmatter-Fix, PPTX-Export
    └── package.json
```

Jedes Lab hat drei Dateien: `-thx.md` (Theorie und Leitfragen), `-exc.md` (Übung), `-sol.md` (Musterlösung für Trainer:innen).

## Schnellstart: Folien (PPTX)

Voraussetzung: Node.js (getestet mit Node 25) und npm. Der Slidev-Theme-Addon liegt im Repo unter `system/templates`, das Repo muss deshalb komplett ausgecheckt sein.

```bash
cd courses/copilot-studio-2-governance/slides-dev
npm install                 # einmalig, lädt auch Chromium für den Export
npm run dev:s01             # Deck live im Browser (dev:s00 … dev:s06)
npm run build               # alle Decks als Webseite nach .slides-build/ (git-ignoriert)
npm run export:pptx         # alle Decks als PPTX nach pptx/ (git-ignoriert)
bash scripts/export-pptx.sh s01 s04    # nur einzelne Decks exportieren
```

Hinweise:

- Der PPTX-Export rendert jede Folie als Bild. Die PPTX ist also **nicht editierbar**. Änderungen immer in `sNN/sNN.md` machen und neu exportieren.
- Die Dateinamen entstehen aus dem Deck-Titel, z. B. `S01_Copilot-Studio-Governance-Lizenzierung, Oversharing & Security.pptx`.
- `scripts/fix-frontmatter.sh` läuft vor jedem `dev`/`build`/`export` und repariert eine bekannte Slidev-Eigenheit (Leerzeile zwischen `---` und `layout:`). Nichts manuell auszuführen.
- Screenshots sind Remote-Links auf Microsoft Learn. Für den Export ist eine Internetverbindung nötig, die Bilder vorher kurz auf Aktualität prüfen.

## Decks und Zeiten

| Deck | Zeit | Inhalt | Folien |
| --- | --- | --- | --- |
| `s00` | Tag 1, 09:00–09:30 | Auftakt: Kursangebot, Technik-Check, Vorstellung, Szenario, Kursüberblick, Tagesablauf, Commitment | 11 |
| `s01` | Tag 1, 09:30–12:15 | Modul 1 Lizenzierung & Oversharing, Modul 2 Security & Compliance | 46 |
| `s02` | Tag 1, 13:15–14:45 | Modul 3 Security-Monitoring | 37 |
| `s03` | Tag 1, 15:00–16:30 | Modul 4 Agent-Governance, Modul 5 Betriebsmodell, Brücke zu Tag 2 | 24 |
| `s04` | Tag 2, 09:00–12:15 | Recap Tag 1, Modul 6 Chat-Agent, Modul 7 Nextise Agentic Way | 48 |
| `s05` | Tag 2, 13:15–14:45 | Modul 8 Optimieren & Studio-Agent mit Skills | 30 |
| `s06` | Tag 2, 15:00–16:30 | Modul 9 Tools, Evaluation & Veröffentlichen, Recap, Abschluss | 36 |

Die Detailagenda mit Minuten pro Lab steht in [`handouts/m00-overview/overview.md`](handouts/m00-overview/overview.md).

## Schnellstart: Handouts

Die Handouts sind reines Markdown und können direkt in VS Code, GitHub oder einem Markdown-Viewer gelesen werden. Einstieg: [`handouts/m00-overview/overview.md`](handouts/m00-overview/overview.md).

- **Vor dem Kurs:** Lösungsdateien (`-sol.md`) nicht an Teilnehmende geben, Übungsdateien (`-exc.md`) und `handouts/project/` bereitstellen.
- **Nach der Übung:** Lösungen auf Wunsch freigeben.
- **Tenant-Abhängigkeit:** Klickpfade und Bezeichnungen in Entra, Purview, Intune, Agent Builder und Copilot Studio ändern sich oft. Quellen mit Stand „prüfpflichtig vor Kursbeginn" vor dem Kurs im eigenen Tenant gegenprüfen.

## Kursvorbereitung (Checkliste)

- [ ] Tag 1: Sandbox-Zugriff auf Admin Center, Entra, Purview, Intune oder Demo-Tenant. Lab 2.6 ist eine Trainer-Demo.
- [ ] Tag 2: Copilot Chat mit Agent Builder, Copilot Studio mit GitHub-Copilot-Harness, Credits, Sandbox-Umgebung, SharePoint-Liste `IT-Geräte` (Inhalt in `handouts/project/nordwind-it-geraete.md`), Teams-Kanal, Publish-Rechte.
- [ ] Screenshot-Links (Microsoft Learn) prüfen, Decks einmal durchklicken.
- [ ] Parkplatz-Nachlieferung (Tag 1) einplanen: Antworten schriftlich innerhalb von 3 Werktagen.

## Wichtige Entscheidungen und Grenzen

- **Verdichtet:** Tag 1 hat 21 Labs, Tag 2 hat 16 Labs; Folienbudget: Tag 1 = 118, Tag 2 = 114 Folien (Limit 120 pro Tag, 240 gesamt). Vertiefende Folien stehen nur in den Quelldecks und den Handouts. Die Minuten pro Lab sind knapp. Fallback: Labs als Demo fahren, Lösungsdatei zeigen. Kürzungskandidaten Tag 1: Lab 3.4, 3.6, 3.7. Tag 2: Lab 6.2 als Demo, Lab 9.2 als Demo.
- **Tag 1 = Governance-Einstieg, Tag 2 = Praxis:** Tag 1 vermittelt Konzepte und Leitplanken, gebaut wird erst an Tag 2. Lab 4.1 legt deshalb ein Governance-Blatt für den *geplanten* Agenten fest (Soll-Entwurf); Lab 9.5 prüft den fertigen Agenten dagegen.
- **Reihenfolge Tag 2:** Modul 6 (erster Chat-Agent) läuft vor Modul 7 (Nextise Agentic Way), weil Lab 7.4 den direkt gebauten Agenten aus Lab 6.3 mit der Assistenten-Kette vergleicht.
- **Nicht übernommen:** Prompting-/KI-Grundlagen-Module und der Workflow-Lab (Quellkurs `copilot-studio-2-com`), die Cross-App-Labs 9.1–9.4 und die Adoption-Module der Copilot-Woche (`copilot-week-5-com`), da sie keine Governance- bzw. Agentenbau-Inhalte sind.
- **Anpassungen an Querverweisen:** Verweise auf nicht übernommene Labs wurden in Handouts und Folien umformuliert oder entfernt. Lab-Nummern sind neu vergeben (Mapping in [`slides_overview.md`](slides_overview.md)).
- **Quellkurse bleiben unverändert.** Inhaltliche Korrekturen am besten hier vornehmen; sollen sie auch zurückfließen, im jeweiligen Quellkurs nachziehen.
