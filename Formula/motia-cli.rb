class MotiaCli < Formula
  desc "CLI for scaffolding Motia projects"
  homepage "https://github.com/MotiaDev/motia-cli"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/MotiaDev/motia-cli/releases/download/v0.2.0/motia-cli-aarch64-apple-darwin.tar.gz"
      sha256 "086161534711217c36b65872b03b95d36143a7e4e6d4529311c97a541be1b700"
    end
    on_intel do
      url "https://github.com/MotiaDev/motia-cli/releases/download/v0.2.0/motia-cli-x86_64-apple-darwin.tar.gz"
      sha256 "a72662495e06911d66d3e20c3b905c020e703dce9d3dc29077a5adfd79b2562f"
    end
  end

  def install
    bin.install "motia-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/motia-cli --version")
  end
end
