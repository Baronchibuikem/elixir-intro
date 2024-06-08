update_doc:
	mix docs

view_doc:
	cd doc && open index.html

run_tests:
	mix test

terminal:
	iex -S mix