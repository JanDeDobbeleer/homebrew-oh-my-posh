class OhMyPosh < Formula
  desc "Prompt theme engine for any shell"
  homepage "https://ohmyposh.dev"
  url "https://github.com/JanDeDobbeleer/oh-my-posh/archive/v3.140.1.tar.gz"
  sha256 "b9b6db2e01eabc9a182b6e521a8a3355de899bacc697defd982c3653c8c0523b"
  license "GPL-3.0-only"
  version "3.140.1"

  depends_on "go" => :build

  def install
    Dir.chdir("src") do
      system("go build -o=oh-my-posh -ldflags=\"-X \'main.Version=3.140.1\'\"")
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

