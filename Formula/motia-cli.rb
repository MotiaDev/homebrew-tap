class MotiaCli < Formula
  desc "CLI for scaffolding Motia projects"
  homepage "https://github.com/MotiaDev/motia-cli"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MotiaDev/motia-cli/releases/download/v0.1.0/motia-cli-aarch64-apple-darwin.tar.gz"
      sha256 "placeholder"
    else
      url "https://github.com/MotiaDev/motia-cli/releases/download/v0.1.0/motia-cli-x86_64-apple-darwin.tar.gz"
      sha256 "placeholder"
    end
  end

  def install
    bin.install "motia-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/motia-cli --version")
  end
end
