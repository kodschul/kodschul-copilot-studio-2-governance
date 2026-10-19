# Lab 3.2 – Lösung: App Protection Policies

## Aufgaben

### 1.–3. Policy und Tests

Policy "Nordwind Outlook-Schutz": Kopiersperre und Speichersperre außerhalb der App aktiviert. Kopierversuch in eine nicht verwaltete Notiz-App wurde korrekt blockiert. Speicherversuch außerhalb der App ebenfalls blockiert.

### 4. Selective Wipe

Auf einem Testgerät ausgelöst: Unternehmens-E-Mails und -Anhänge innerhalb der App wurden gelöscht, private Fotos und Apps außerhalb der geschützten App blieben unberührt.

### 5. Relevante Zielgruppe

Relevant nur für die 5 Nordwind-Mitarbeitenden mit privaten, nicht durch Intune verwalteten Mobilgeräten — für vollständig verwaltete Firmengeräte greift stattdessen die Gerätekonformität aus Lab 3.1.

## Checkpoint

- Beide Sperren (Kopieren, Speichern) wurden tatsächlich getestet und griffen wie erwartet.
- Der Selective-Wipe-Test bestätigt konkret, dass private Daten unberührt blieben.
