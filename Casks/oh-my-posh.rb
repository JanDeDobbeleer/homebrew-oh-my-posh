cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "31.5.0"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
        sha256 arm:   "9854b20785f29aaee4b84b4f46c9ba93cadeca71d26a0ab6f1b6e09cf9200340",
               intel: "f5e002ee8233ed123ed1db31d28c4528b37854f1e73f11c52dd06fd8407cfd51"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

