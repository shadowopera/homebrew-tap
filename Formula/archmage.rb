class Archmage < Formula
  desc "Polished configuration solution for game development"
  homepage "https://shadop.dev"
  version "0.18.0"

  on_macos do
    on_arm do
      url "https://github.com/shadowopera/archmage/releases/download/v0.18.0/archmage_0.18.0_macos_arm64.tar.gz"
      sha256 "884c120268a7e8e37a4df2d52da867e6ba5b66fced7fb41ea515efbf87e31087"
    end
    on_intel do
      url "https://github.com/shadowopera/archmage/releases/download/v0.18.0/archmage_0.18.0_macos_x86_64.tar.gz"
      sha256 "6a774d7672f275fa74eda657929d4575ebfbe1f32890aa236d6c8437c27d8785"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shadowopera/archmage/releases/download/v0.18.0/archmage_0.18.0_linux_arm64.tar.gz"
      sha256 "5f52dd9557020c6c9db6e48e85936a28710c2380a6c710871fae4728754e2c1d"
    end
    on_intel do
      url "https://github.com/shadowopera/archmage/releases/download/v0.18.0/archmage_0.18.0_linux_x86_64.tar.gz"
      sha256 "ba2c5beb87456a6b13a534b8eda383bbb19868cdde10a88845caed3ffd3dee8f"
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
