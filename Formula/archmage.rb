class Archmage < Formula
  desc "Polished configuration solution for game development"
  homepage "https://shadop.dev"
  version "0.19.0"

  on_macos do
    on_arm do
      url "https://github.com/shadowopera/archmage/releases/download/v0.19.0/archmage_0.19.0_macos_arm64.tar.gz"
      sha256 "24d84c07422a2421b6d1879f91ba0f4be4fcdc75a8b0b91d23f6a12043590803"
    end
    on_intel do
      url "https://github.com/shadowopera/archmage/releases/download/v0.19.0/archmage_0.19.0_macos_x86_64.tar.gz"
      sha256 "695afc5dc78e050dd7b39a47867bcf46805935ceaf00d67ce4eab088c9964211"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shadowopera/archmage/releases/download/v0.19.0/archmage_0.19.0_linux_arm64.tar.gz"
      sha256 "7731d0c424fc72bdb06abedee32f50d87f13cff9274a95a1be3f97f25f71949c"
    end
    on_intel do
      url "https://github.com/shadowopera/archmage/releases/download/v0.19.0/archmage_0.19.0_linux_x86_64.tar.gz"
      sha256 "45224f53caab6e4db7d4133c28f5d53d125e6b8c025055f465cfd644722d3a82"
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
