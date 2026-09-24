class Archmage < Formula
  desc "Polished configuration solution for game development"
  homepage "https://shadop.dev"
  version "0.16.0"

  on_macos do
    on_arm do
      url "https://github.com/shadowopera/archmage/releases/download/v0.16.0/archmage_0.16.0_macos_arm64.tar.gz"
      sha256 "36be1368bfb92972680bae93f03e59ac08f1c41cd6060689054ad3de34936b9a"
    end
    on_intel do
      url "https://github.com/shadowopera/archmage/releases/download/v0.16.0/archmage_0.16.0_macos_x86_64.tar.gz"
      sha256 "22f0209c151dd249c665a32da8344b02c9d8a7f16d0de9e3b71d4260b12ae475"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shadowopera/archmage/releases/download/v0.16.0/archmage_0.16.0_linux_arm64.tar.gz"
      sha256 "298ea0e5eca0a679ae99ecc922faea535e7710a9387ceb62508967d0f4daa268"
    end
    on_intel do
      url "https://github.com/shadowopera/archmage/releases/download/v0.16.0/archmage_0.16.0_linux_x86_64.tar.gz"
      sha256 "860c2ae3055713d8c163f5afb0e5a213399bdadb94877db7cbf271f2d5e467ee"
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
