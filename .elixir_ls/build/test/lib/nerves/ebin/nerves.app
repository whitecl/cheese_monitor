{application,nerves,
             [{applications,[kernel,stdlib,elixir,ssl,inets]},
              {description,"Nerves - Create firmware for embedded devices like Raspberry Pi, BeagleBone Black, and more\n"},
              {modules,['Elixir.Mix.Nerves.Shell','Elixir.Mix.Nerves.Utils',
                        'Elixir.Mix.Tasks.Burn',
                        'Elixir.Mix.Tasks.Compile.NervesPackage',
                        'Elixir.Mix.Tasks.Firmware',
                        'Elixir.Mix.Tasks.Firmware.Burn',
                        'Elixir.Mix.Tasks.Firmware.Image',
                        'Elixir.Mix.Tasks.Nerves.Artifact',
                        'Elixir.Mix.Tasks.Nerves.Artifact.Get',
                        'Elixir.Mix.Tasks.Nerves.Info',
                        'Elixir.Mix.Tasks.Nerves.Release.Init',
                        'Elixir.Nerves','Elixir.Nerves.Artifact',
                        'Elixir.Nerves.Artifact.BuildRunner',
                        'Elixir.Nerves.Artifact.BuildRunners.Docker',
                        'Elixir.Nerves.Artifact.BuildRunners.Docker.Image',
                        'Elixir.Nerves.Artifact.BuildRunners.Docker.Utils',
                        'Elixir.Nerves.Artifact.BuildRunners.Docker.Volume',
                        'Elixir.Nerves.Artifact.BuildRunners.Local',
                        'Elixir.Nerves.Artifact.Cache',
                        'Elixir.Nerves.Artifact.Resolver',
                        'Elixir.Nerves.Artifact.Resolvers.GithubAPI',
                        'Elixir.Nerves.Artifact.Resolvers.URI',
                        'Elixir.Nerves.Env','Elixir.Nerves.Package',
                        'Elixir.Nerves.Package.Platform',
                        'Elixir.Nerves.Package.Utils.Squashfs',
                        'Elixir.Nerves.System.BR','Elixir.Nerves.Utils',
                        'Elixir.Nerves.Utils.File',
                        'Elixir.Nerves.Utils.HTTPClient',
                        'Elixir.Nerves.Utils.Proxy',
                        'Elixir.Nerves.Utils.Shell',
                        'Elixir.Nerves.Utils.Stream',
                        'Elixir.Nerves.Utils.WSL']},
              {registered,[]},
              {vsn,"1.4.1"}]}.