class OhMyPosh < Formula
  desc "Prompt theme engine for any shell"
  homepage "https://ohmyposh.dev"
  url "https://github.com/JanDeDobbeleer/oh-my-posh/archive/v7.37.2.tar.gz"
  head "https://github.com/JanDeDobbeleer/oh-my-posh.git", branch: "main"
  sha256 "0dd619c453c22f97bbd0b20ba2c6ca86198fbd28e8b7c9026f9823aff85d489e"
  license "GPL-3.0-only"
  version "7.37.2"

  depends_on "go@1.17" => :build

  def install
    Dir.chdir("src") do
      system("go build -o=oh-my-posh -ldflags=\"-s -w -X \'main.Version=7.37.2\'\"")
      bin.install "oh-my-posh"
    end
    mv "themes", prefix
  end

  def caveats
    <<~EOS
      Thanks for installing Oh my Posh.
      Have a look at https://ohmyposh.dev/docs/ for detailed instructions for your shell.
      Sample themes can be found at $(brew --prefix oh-my-posh)/themes.

      If you're enjoying Oh my Posh, feel free to donate or become a sponsor.
      https://github.com/sponsors/JanDeDobbeleer
    EOS
  end

  test do
    system "#{bin}/oh-my-posh", "--help"
  end
end

