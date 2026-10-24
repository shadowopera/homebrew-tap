class Archmage < Formula
  desc "Polished config data solution for game development"
  homepage "https://shadop.dev"
  version "1.1.0"

  on_macos do
    on_arm do
      url "https://github.com/shadowopera/archmage/releases/download/v1.1.0/archmage_1.1.0_macos_arm64.tar.gz"
      sha256 "726c3562ae7157f6830812512dba8feab91d681d699a0b9675a924e103472af2"
    end
    on_intel do
      url "https://github.com/shadowopera/archmage/releases/download/v1.1.0/archmage_1.1.0_macos_x86_64.tar.gz"
      sha256 "086f905f58eac07cbd90f41860cb2129c4e4bb6e41828dce4c0867119f86f2df"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shadowopera/archmage/releases/download/v1.1.0/archmage_1.1.0_linux_arm64.tar.gz"
      sha256 "37624468a7011b3a359a3fe8408ea2101bdd925450e86762e377881749eff2bd"
    end
    on_intel do
      url "https://github.com/shadowopera/archmage/releases/download/v1.1.0/archmage_1.1.0_linux_x86_64.tar.gz"
      sha256 "2385e31134139852dc53cb60fd592a0522a602d7dc891e7b9686b0a857ed6330"
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
