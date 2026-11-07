.PHONY: install run debug clean lint

install:
	uv sync

run:
	uv run python -m src/

debug:
	uv run python -m pdb -m src/


clean:
	rm -rf __pycache__

lint:
	uv run flake8 src/
	uv run mypy src/ --warn-return-any \
		--warn-unused-ignores \
		--ignore-missing-imports \
		--disallow-untyped-defs \
		--check-untyped-defs
