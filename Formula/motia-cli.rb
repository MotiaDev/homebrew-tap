class MotiaCli < Formula
  desc "CLI for scaffolding Motia projects"
  homepage "https://github.com/MotiaDev/motia-cli"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/MotiaDev/motia-cli/releases/download/v0.1.0/motia-cli-aarch64-apple-darwin.tar.gz"
      sha256 "c4016c254812ac278b3a3e813761f319d1b57ab334a8b84633f625f525c43949"
    end
    on_intel do
      url "https://github.com/MotiaDev/motia-cli/releases/download/v0.1.0/motia-cli-x86_64-apple-darwin.tar.gz"
      sha256 "024c2ce8e85c29259bee03e2fe9492329b40fcc3135584577f6182f7cf00f901"
    end
  end

  def install
    bin.install "motia-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/motia-cli --version")
  end
end
