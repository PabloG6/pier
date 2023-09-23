import Config
config :logger, :console,
    level: :debug,
    format: "$time $message $metadata[$level] \n",
    metadata: [:module_name]
