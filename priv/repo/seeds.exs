# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs

1..1000 |> Enum.each(fn (i)->
  TenThousandUsers.Repo.insert!(%TenThousandUsers.User{
    email: "useremail#{i}@example.com",
    username: "username#{i}"
  })
end)
