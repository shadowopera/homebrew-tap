class Archmage < Formula
  desc "Export game configuration data and generate typed code"
  homepage "https://shadop.dev"
  version "0.13.0"

  on_macos do
    on_arm do
      url "https://github.com/shadowopera/archmage/releases/download/v0.13.0/archmage_0.13.0_macos_arm64.tar.gz"
      sha256 "a32d9ea5d35e192cfca4d156e21f9b3fca81dc10f0f531d3543eee1c85f5f14a"
    end
    on_intel do
      url "https://github.com/shadowopera/archmage/releases/download/v0.13.0/archmage_0.13.0_macos_x86_64.tar.gz"
      sha256 "9737513c90a09b9e42f2a80d2e2f9f550a7d4ca910697be472fe70ebdff527da"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shadowopera/archmage/releases/download/v0.13.0/archmage_0.13.0_linux_arm64.tar.gz"
      sha256 "4dc4b6db4d2193e61bff55493578f9d7e64f9614a73ebb844ed88b6fc671e054"
    end
    on_intel do
      url "https://github.com/shadowopera/archmage/releases/download/v0.13.0/archmage_0.13.0_linux_x86_64.tar.gz"
      sha256 "25a832a1f3bc1cc0db01d2791dc8b7fef6c5ce7a22adc5f3bbcd483618cc3036"
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
