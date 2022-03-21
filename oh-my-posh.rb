class OhMyPosh < Formula
  desc "Prompt theme engine for any shell"
  homepage "https://ohmyposh.dev"
  url "https://github.com/JanDeDobbeleer/oh-my-posh/archive/v7.46.0.tar.gz"
  head "https://github.com/JanDeDobbeleer/oh-my-posh.git", branch: "main"
  sha256 "095ce9caf3c38244fe5bf518fc49d3b402367cf7106943644d2f8db17dc66f72"
  license "MIT"
  version "7.46.0"

  depends_on "go@1.18" => :build

  def install
    Dir.chdir("src") do
      system("go build -o=oh-my-posh -ldflags=\"-s -w -X \'main.Version=7.46.0\'\"")
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

