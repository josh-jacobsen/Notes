# Elixir 

### Testing

The mix test command has to be run from a directory with a `mix.exs` file.

From there you can specify the path to a test file to run only those tests. 

`mix test test/bebop_pcm_budgets/adaptor/adaptor_legacy_test.exs`

Or the tests in only a specific describe block can be run: 

`mix test --only describe:"total_footprint/1"`

Or the two can be combined:

`mix test test/bebop_pcm_budgets/adaptor/adaptor_legacy_test.exs --only describe:"total_footprint/1"`

