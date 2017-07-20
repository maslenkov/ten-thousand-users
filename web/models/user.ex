defmodule TenThousandUsers.User do
  use TenThousandUsers.Web, :model

  schema "users" do
    field :email, :string
    field :username, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:email, :username])
    |> validate_required([:email, :username])
  end
end
