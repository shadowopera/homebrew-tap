class Archmage < Formula
  desc "Polished configuration solution for game development"
  homepage "https://shadop.dev"
  version "1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/shadowopera/archmage/releases/download/v1.0.0/archmage_1.0.0_macos_arm64.tar.gz"
      sha256 "7171bfcfac6e59fcf9873e37fd8e0eed08a5c06a158bf0d1c593e85fa5f5d156"
    end
    on_intel do
      url "https://github.com/shadowopera/archmage/releases/download/v1.0.0/archmage_1.0.0_macos_x86_64.tar.gz"
      sha256 "89b9c4e767c3bc0bff60b881971deb9b2c9f70b5eea700ed949767bfed300286"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shadowopera/archmage/releases/download/v1.0.0/archmage_1.0.0_linux_arm64.tar.gz"
      sha256 "1a331226ebd1058bec71ca22d29ff94ff5da754b51aa354acbcd16b631eae7bd"
    end
    on_intel do
      url "https://github.com/shadowopera/archmage/releases/download/v1.0.0/archmage_1.0.0_linux_x86_64.tar.gz"
      sha256 "01d1954f1f329ff31056938402d6fcf369ee085e0adbdbe085c3e82b54c93fb0"
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
