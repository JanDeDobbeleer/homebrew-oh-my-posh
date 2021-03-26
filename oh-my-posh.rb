class OhMyPosh < Formula
  desc "Prompt theme engine for any shell"
  homepage "https://ohmyposh.dev"
  url "https://github.com/JanDeDobbeleer/oh-my-posh/archive/v3.123.0.tar.gz"
  sha256 "dbd2e0573bea489028749ac163dbe04b0d4806474f67776b2fe3295463176943"
  license "GPL-3.0-only"
  version "3.123.0"

  depends_on "go" => :build

  def install
    Dir.chdir("src") do
      system("go build -o=oh-my-posh -ldflags=\"-X \'main.Version=3.123.0\'\"")
      bin.install "oh-my-posh"
    end
    mv "themes", prefix
  end

  def caveats
    <<~EOS
      Thanks for installing Oh my Posh.
      Have a look at https://ohmyposh.dev/docs/installation for detailed instructions for your shell.
      Sample themes can be found at $(brew --prefix oh-my-posh)/themes.
    EOS
  end

  test do
    system "#{bin}/oh-my-posh", "--help"
  end
end

