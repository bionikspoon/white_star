defmodule WhiteStarWeb.Router do
  use WhiteStarWeb, :router
  use Plug.ErrorHandler
  use Sentry.Plug

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/api", WhiteStarWeb do
    pipe_through(:api)
  end
end
