cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "18.27.0"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "42aecda222d8e376622942e144800d5df665aeeb82c12592536f27e26e2a8c22",
           intel: "d55e40a316b83fede84319ff5938929ee59ae86ed053e547cb921a7d1c5d38f9"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

