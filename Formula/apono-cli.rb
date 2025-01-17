# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AponoCli < Formula
  desc "View, request and receive permissions to services, DBs and applications."
  homepage "https://www.apono.io"
  version "1.2.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/apono-io/apono-cli/releases/download/v1.2.1/apono-cli_1.2.1_darwin_amd64.tar.gz"
      sha256 "54382ffd4636f0248eed6f4548b04d757223b6e08ca69cf0c6c83926e846b90c"

      def install
        bin.install "apono" => "apono"
        man1.install Dir["contrib/manpage/apono*.1"]
        bash_completion.install "contrib/completion/bash/apono"
        zsh_completion.install "contrib/completion/zsh/_apono"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/apono-io/apono-cli/releases/download/v1.2.1/apono-cli_1.2.1_darwin_arm64.tar.gz"
      sha256 "f34c6de5ff1c2f1d21f8c7d95fc72e58c100082358a3033711a8efe2ff920846"

      def install
        bin.install "apono" => "apono"
        man1.install Dir["contrib/manpage/apono*.1"]
        bash_completion.install "contrib/completion/bash/apono"
        zsh_completion.install "contrib/completion/zsh/_apono"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/apono-io/apono-cli/releases/download/v1.2.1/apono-cli_1.2.1_linux_armv6.tar.gz"
      sha256 "c39a74f72bb901aa5e619c43614844873043337505a0c5b75ef7e177b055cadd"

      def install
        bin.install "apono" => "apono"
        man1.install Dir["contrib/manpage/apono*.1"]
        bash_completion.install "contrib/completion/bash/apono"
        zsh_completion.install "contrib/completion/zsh/_apono"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/apono-io/apono-cli/releases/download/v1.2.1/apono-cli_1.2.1_linux_arm64.tar.gz"
      sha256 "d55e37c2272447b9b7d83b59d2ba04a691552c8f2e21941ab46c61f58320d9ae"

      def install
        bin.install "apono" => "apono"
        man1.install Dir["contrib/manpage/apono*.1"]
        bash_completion.install "contrib/completion/bash/apono"
        zsh_completion.install "contrib/completion/zsh/_apono"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/apono-io/apono-cli/releases/download/v1.2.1/apono-cli_1.2.1_linux_amd64.tar.gz"
      sha256 "aa9bb94ec0952ca4113059c030bba1918ded3d1db0b5743ddc41a07c92b447b3"

      def install
        bin.install "apono" => "apono"
        man1.install Dir["contrib/manpage/apono*.1"]
        bash_completion.install "contrib/completion/bash/apono"
        zsh_completion.install "contrib/completion/zsh/_apono"
      end
    end
  end

  test do
    system "#{bin}/apono version"
  end
end
