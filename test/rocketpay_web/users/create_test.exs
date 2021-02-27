defmodule Rocketpay.Users.CreateTest do
  use Rocketpay.DataCase, async: true

  alias Rocketpay.User
  alias Rocketpay.Users.Create

  describe "call/1" do
    test "when all params are valid, returns an user" do
      params = %{
        name: "Matheus",
        password: "123456",
        nickname: "matheusdb",
        email: "matheusdb_@outlook.com",
        age: 22
      }

      {:ok, %User{id: user_id}} = Create.call(params)
      user = Repo.get(User, user_id)

      assert %User{name: "Matheus", age: 22, id: ^user_id} = user
    end

    test "when there invalid params, returns an error" do
      params = %{
        name: "Matheus",
        nickname: "matheusdb",
        email: "matheusdb_@outlook.com",
        age: 15
      }

      {:error, changeset} = Create.call(params)

      expected_response = %{
        age: ["must be greater than or equal to 18"],
        password: ["can't be blank"]
      }

      assert expected_response == errors_on(changeset)
    end
  end
end
