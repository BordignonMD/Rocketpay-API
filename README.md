# About Rockeypay API
Rocketpay is a payment API built on Elixir using the Phoenix web framework.
The API contains 4 functions available. User/Account Creation, Deposit, Withdraw and Transfer.

User/Account Creation
  * POST http://localhost:4000/api/users as a parameter use "name", "nickname", "email", "age", "password"

Deposit in account
  * POST http://localhost:4000/api/accounts/<strong>ID_VALUE</strong>/deposit where <strong>ID_VALUE</strong> is the id account value. As a parameter use "value"

Withdraw in account
  * POST http://localhost:4000/api/accounts/<strong>ID_VALUE</strong>/withdraw where <strong>ID_VALUE</strong> is the id account value. As a parameter use "value"

Transfers between accounts
  * POST http://localhost:4000/api/accounts/transaction as a parameter use "value", "to", "from"

# Rocketpay

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix 

## Starting the project

To create a new project MIX without using HTML and CSS: </h1>

  * mix phx.new rocketpay --no-webpack --no-html

## Credo

Creating project lint file

  * mix credo gen.config

## Database

Para este projeto utilizou o banco de dados PostgreSQL
  * Make sure you have installed PostgreSQL or use Docker
  * Access the file config/config.ex and the file config/test.ex and configure them according to your PostgreSQL installation data

Shortcut to create the bank and run migrates
  * mix ecto.setup

Creates the database
  * mix ecto.create

Delete the database
  * mix ecto.drop

Creates a migration
  * mix ecto.gen.migration create_example_table

Perform migrations
  * mix ecto.migrate



