## Resubmission - oefar 0.1.0

This is a resubmission addressing the feedback from the incoming pre-test:

* **Fixed test failures on CRAN machines (`test-auth.R`)**:
  Isolated authentication unit tests using `withr::with_envvar()` and `withr::with_options()` so they do not depend on external environment variables. Added `skip_on_cran()` and `skip_if_offline()` to integration tests and added `withr` to `Suggests`.
* **Updated `inst/CITATION`**:
  Replaced deprecated calls to `citEntry()`, `citHeader()`, and `personList()` with modern `bibentry()` and `c(person(...))` syntax.
* **Enclosed Spanish institution name in single quotes in `DESCRIPTION`**:
  Added single quotes around `'Organismo de Evaluacion y Fiscalizacion Ambiental'` to properly denote the foreign official agency name.

## Test environments
* Local Windows 11 Home (x86_64-w64-mingw32, R 4.6.1)
* GitHub Actions CI: Windows, macOS, Ubuntu (release, devel)

## R CMD check results
0 ERRORS | 0 WARNINGS | 1 NOTE

* checking CRAN incoming feasibility ... NOTE
  Maintainer: 'Paul E. Santos Andrade <paulefrens@gmail.com>'
  New submission

This is a new submission.

## Method References
There are no published academic books or papers describing the methods in this package. The package acts as a web client for the public REST API of the Organismo de Evaluación y Fiscalización Ambiental (OEFA) of Peru.
