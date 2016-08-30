InchTest
===

To start the csv import process

```shell
?> rake csv_importer:all
```

###How it works

A `csv_importer.rb` initializer is provided in the project.

In this initializer, you can manage the whitelisted fields for each tables.

The rake task `csv_importer:all` go through each file in `public/csv_import/TABLE_NAME/*.csv` and insert their content according to the whitelisting provided for each model.

`TABLE_NAME` has to be the name of the table (e.g building, people, etc..).

Few CSV files are provided within the projects. to generate another one you can launch one the following rake tasks:

`?> rake csv_people`<br/>
`?> rake csv_buildings`

Please look at the readme of the project for further information
