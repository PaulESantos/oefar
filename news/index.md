# Changelog

## oefar 0.1.0

- Initial release of the `oefar` package to access the Open Data API of
  the Environmental Evaluation and Enforcement Agency (OEFA) of Peru.
- Dedicated helper functions for 98 datasets (`oefa_get_*`).
- Automated column name cleaning with
  [`clean_column_names()`](https://paulesantos.github.io/oefar/reference/clean_column_names.md)
  based on `janitor` conventions.
- Authentication and API Key management functions (`oefa_set_api_key`,
  `oefa_get_api_key`, `oefa_has_api_key`).
- Detailed field documentation based on the Official OEFA Data
  Dictionary.
