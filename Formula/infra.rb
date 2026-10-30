# Automatically maintained by the Infra release workflow.
class Infra < Formula
  desc "Secure infrastructure access CLI"
  homepage "https://github.com/ktsstudio/infra"
  license "Elastic-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ktsstudio/infra/releases/download/v0.22.0/infra-darwin-arm64"
      sha256 "e31ae071a493fc3a649660dad52dee86cf817490a921c62330c80fc247d0c3bd"
    end
    on_intel do
      url "https://github.com/ktsstudio/infra/releases/download/v0.22.0/infra-darwin-amd64"
      sha256 "605f908e238f35a19f55f72cb5a7e019dbf205e2c55140fcc77863a1ff41366c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/ktsstudio/infra/releases/download/v0.22.0/infra-linux-arm64"
      sha256 "ba4f14057065d5226f39e8c0f9c75e33ff800c58c6d35001a6ef89d831dbb585"
    end
    on_intel do
      url "https://github.com/ktsstudio/infra/releases/download/v0.22.0/infra-linux-amd64"
      sha256 "4521265ff47bdaf487265ec3448bd7e5bf1527aae129f87a0628298fb1433667"
    end
  end

  def install
    bin.install Dir["infra-*"].first => "infra"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/infra version")
  end
end
