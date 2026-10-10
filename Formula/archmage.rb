class Archmage < Formula
  desc "Polished configuration solution for game development"
  homepage "https://shadop.dev"
  version "0.20.0"

  on_macos do
    on_arm do
      url "https://github.com/shadowopera/archmage/releases/download/v0.20.0/archmage_0.20.0_macos_arm64.tar.gz"
      sha256 "396f98296ca53e20b0b1859597c04a3bb3051dbd76aafdd988b937a18f17d534"
    end
    on_intel do
      url "https://github.com/shadowopera/archmage/releases/download/v0.20.0/archmage_0.20.0_macos_x86_64.tar.gz"
      sha256 "b813c75fe60ead1a85c6b05933e96e3689f53f4df5d28f768e73121053d72139"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shadowopera/archmage/releases/download/v0.20.0/archmage_0.20.0_linux_arm64.tar.gz"
      sha256 "af403edcb26d6f4d3f7dfdcc18e63fa94fef94eb8609daff6e2364ad263ccbc1"
    end
    on_intel do
      url "https://github.com/shadowopera/archmage/releases/download/v0.20.0/archmage_0.20.0_linux_x86_64.tar.gz"
      sha256 "5fba4f736abb44a6f9986ba24a510813cd9e291c3b4d95f8c743332b43e82f8c"
    end
  end

  def install
    bin.install "bin/archmage"
    prefix.install "THIRD_PARTY_NOTICES.md"
  end

  def caveats
    <<~EOS
      By downloading, installing, or using archmage, you agree to the Privacy
      Policy and Terms and Conditions:
        https://shadop.dev/privacy-policy
        https://shadop.dev/terms-and-conditions

      If you have a license key, activate it on this machine:
        archmage auth
    EOS
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/archmage version")
  end
end
