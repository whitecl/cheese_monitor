# CheeseMonitor

**TODO: Add description**

## Targets

Nerves applications produce images for hardware targets based on the
`MIX_TARGET` environment variable. If `MIX_TARGET` is unset, `mix` builds an
image that runs on the host (e.g., your laptop). This is useful for executing
logic tests, running utilities, and debugging. Other targets are represented by
a short name like `rpi3` that maps to a Nerves system image for that platform.
All of this logic is in the generated `mix.exs` and may be customized. For more
information about targets see:

https://hexdocs.pm/nerves/targets.html#content

## Getting Started

To start your Nerves app:

- copy and customize .env.sh.example to .env.sh
- `source .env.sh` to load environment variables into your shell
- Install dependencies with `mix deps.get`
- Create firmware with `mix firmware`
- Burn to an SD card with `mix firmware.burn`
- or deploy via network: `./upload.sh DEVICE_IP_ADDRESS`
- connect via ssh: `ssh DEVICE_IP_ADDRESS`

## Learn more

- Official docs: https://hexdocs.pm/nerves/getting-started.html
- Official website: https://nerves-project.org/
- Forum: https://elixirforum.com/c/nerves-forum
- Discussion Slack elixir-lang #nerves ([Invite](https://elixir-slackin.herokuapp.com/))
- Source: https://github.com/nerves-project/nerves
- Network tutorial: https://github.com/nerves-project/nerves_examples/tree/master/hello_network
