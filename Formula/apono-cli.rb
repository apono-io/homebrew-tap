# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AponoCli < Formula
  desc "View, request and receive permissions to services, DBs and applications."
  homepage "https://www.apono.io"
  version "0.3.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/apono-io/apono-cli/releases/download/v0.3.5/apono-cli_0.3.5_darwin_arm64.tar.gz"
      sha256 "4360ea33f51d3666d2b92ec28896f65c3d2122ba6682541b30b37ee3f8901fde"

      def install
        bin.install "apono" => "apono"
        man1.install Dir["contrib/manpage/apono*.1"]
        bash_completion.install "contrib/completion/bash/apono"
        zsh_completion.install "contrib/completion/zsh/_apono"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/apono-io/apono-cli/releases/download/v0.3.5/apono-cli_0.3.5_darwin_amd64.tar.gz"
      sha256 "01465c8ac2f5c19e4f58360de0026201036e508ff1d5049372948de06baaaa09"

      def install
        bin.install "apono" => "apono"
        man1.install Dir["contrib/manpage/apono*.1"]
        bash_completion.install "contrib/completion/bash/apono"
        zsh_completion.install "contrib/completion/zsh/_apono"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/apono-io/apono-cli/releases/download/v0.3.5/apono-cli_0.3.5_linux_arm64.tar.gz"
      sha256 "3f6f01e9da689142eff99086ec229837e38224168090563cda07565d95c6f441"

      def install
        bin.install "apono" => "apono"
        man1.install Dir["contrib/manpage/apono*.1"]
        bash_completion.install "contrib/completion/bash/apono"
        zsh_completion.install "contrib/completion/zsh/_apono"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/apono-io/apono-cli/releases/download/v0.3.5/apono-cli_0.3.5_linux_amd64.tar.gz"
      sha256 "cb6c65bc166c4ef1af337e18b108cebfa85e05e6a4163cff8e46ef308d6f92c0"

      def install
        bin.install "apono" => "apono"
        man1.install Dir["contrib/manpage/apono*.1"]
        bash_completion.install "contrib/completion/bash/apono"
        zsh_completion.install "contrib/completion/zsh/_apono"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/apono-io/apono-cli/releases/download/v0.3.5/apono-cli_0.3.5_linux_armv6.tar.gz"
      sha256 "bd2bc58a79499975e51459f359a87ccc4d56314b07e2380ae5fb2eb86cfc582a"

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
