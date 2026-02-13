
```bash
/c/Entwicklung/work/_git/dailyUtils/private/gpx/interactiveMap/gpx-poi-tools/scripts/batch_process.sh \
	/c/Entwicklung/work/_git/berczisandor.github.io/private/e/26-DrauRadweg/gpx

```

```bash
source /c/Entwicklung/work/_git/dailyUtils/development/rename_files.sh
rename_files Camping-Alla-Baita Misurina *.gpx
rename_files Campingplatz-Dellach-Drau Dellach *.gpx
rename_files Camping-Seehof Villach *.gpx
rename_files Camping-Rosental-Roz Dullach *.gpx
rename_files Campingplatz-Lavamund Lavamünd *.gpx
rename_files Maribor-Studenci Maribor *.gpx
```

```bash
python3 /c/Entwicklung/work/_git/dailyUtils/private/gpx/joinGpx/join_gpx.py \
    ../1-Misurina-Lienz.gpx \
    ../2-Lienz-Spittal-an-der-Drau.gpx \
    ../3-Spittal-an-der-Drau-Ferlach.gpx \
    ../4-Ferlach-Lavamund.gpx \
    ../5-Lavamund-Maribor.gpx \
    >0-Misurina-Maribor.gpx
```

https://overpass-turbo.eu/

https://overpass-turbo.eu/s/2gZN

```
[out:json][timeout:25];
nwr["tourism"="camp_site"]({{bbox}});
out geom;
```



```
Hallo,

wir planen eine Radtour entlang der Drau mit unserem Verein und sind auf eure Unterkunft gestoßen.

Kurz zu uns:
 - 30-40 Personen (ca. 20-30 Zelte) + 1 Kleinbus
 - Übernachtung für eine Nacht um den 20.08.2025 (Datum noch flexibel)

Wir hätten ein paar Fragen:
 - Können einige lieber in einem Zimmer übernachten, damit die Gruppe zusammenbleiben kann?
 - Könnt ihr uns unter diesen Bedingungen aufnehmen?
 - Beziehen sich die Preise auf eurer Website auf 2026 oder welche Preise gelten ungefähr für 2026?

Vielen Dank schon mal!
Wir freuen uns auf eure Antwort.

Liebe Grüße
Sándor Berczi
```
