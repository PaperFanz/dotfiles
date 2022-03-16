if status is-interactive
    # Commands to run in interactive sessions can go here
  eval (/opt/homebrew/bin/brew shellenv)

  alias ssh_scv='ssh -y -A pfan@scv-pfan01.csg.apple.com'
  alias ssh_msc='ssh -y -A pfan@msc-pfan01.csg.apple.com'
end
