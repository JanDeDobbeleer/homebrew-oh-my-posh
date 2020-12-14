class OhMyPosh < Formula
  desc "Prompt theme engine for any shell"
  homepage "https://ohmyposh.dev"
  url "https://github.com/JanDeDobbeleer/oh-my-posh3/archive/v3.53.1.tar.gz"
  sha256 "4289fdc3b3e4c88970269c5b07b8b110568c6255875c58d6032b3595e84cd4e9"
  license "GPL-3.0-only"
  version "3.53.1"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "oh-my-posh"
    bin.install "oh-my-posh"
    mv "themes", prefix
    ohai "Thanks for installing Oh my Posh."
    ohai "Have a look at https://ohmyposh.dev/docs/installation for detailed instructions for your shell."
    ohai "Sample themes can be found at $(brew --prefix oh-my-posh)/themes."
  end

  test do
    system "#{bin}/oh-my-posh", "--help"
  end
end

