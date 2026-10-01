class Archmage < Formula
  desc "Polished configuration solution for game development"
  homepage "https://shadop.dev"
  version "0.17.0"

  on_macos do
    on_arm do
      url "https://github.com/shadowopera/archmage/releases/download/v0.17.0/archmage_0.17.0_macos_arm64.tar.gz"
      sha256 "cd2b6d39ed080c890834b99cf2981e521a642dca3372a8ee80d724808894e02e"
    end
    on_intel do
      url "https://github.com/shadowopera/archmage/releases/download/v0.17.0/archmage_0.17.0_macos_x86_64.tar.gz"
      sha256 "0e81aeb953b45386f2b3d62901f12bfcc09250e8e0f3630c354ff447a6a61eb4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shadowopera/archmage/releases/download/v0.17.0/archmage_0.17.0_linux_arm64.tar.gz"
      sha256 "59cc571525197e70bd732254d355c5f94925640c1c500cf916069d67c7204ff4"
    end
    on_intel do
      url "https://github.com/shadowopera/archmage/releases/download/v0.17.0/archmage_0.17.0_linux_x86_64.tar.gz"
      sha256 "730dcc7729e5f43849db0d5616c0511ba6336e4562b5916872311f81dc807350"
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
