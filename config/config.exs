import Config
config :logger, :console,
    level: :info,
    format: "$time $message $metadata[$level] \n",
    metadata: :all

import_config "#{config_env()}.exs"
