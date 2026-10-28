.PHONY: all build en es watch clean

SHELL := /bin/sh
lang ?= en
DOC_VIEWER ?= papers

# Datos de contacto privados (EMAIL, PHONE). El archivo no se versiona.
-include .env

TYPST_INPUTS = --input email="$(EMAIL)" --input phone="$(PHONE)"

all: en es

en es:
	$(MAKE) build lang=$@

build:
	@case "$(lang)" in \
		en|es) ;; \
		*) echo "Error: invalid language '$(lang)'. Use en or es." >&2; exit 1 ;; \
	esac
	mkdir -p pdf
	typst compile --root . $(TYPST_INPUTS) --input lang="$(lang)" src/main.typ pdf/cv-$(lang).pdf

watch:
	@case "$(lang)" in \
		en|es) ;; \
		*) echo "Error: invalid language '$(lang)'. Use en or es." >&2; exit 1 ;; \
	esac
	mkdir -p pdf
	typst compile --root . $(TYPST_INPUTS) --input lang="$(lang)" src/main.typ pdf/cv-$(lang).pdf
	@command -v "$(DOC_VIEWER)" >/dev/null 2>&1 && $(DOC_VIEWER) "pdf/cv-$(lang).pdf" >/dev/null 2>&1 &
	typst watch --root . $(TYPST_INPUTS) --input lang="$(lang)" src/main.typ pdf/cv-$(lang).pdf

clean:
	rm -f pdf/*.pdf
