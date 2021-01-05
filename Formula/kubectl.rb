class Kubectl < Formula
  desc "Kubectl 1.18"
  homepage "https://kubernetes.io/docs/tasks/tools/install-kubectl/"

  url "https://storage.googleapis.com/kubernetes-release/release/v1.18.9/bin/darwin/amd64/kubectl"
  version "v1.18.9"
  sha256 "56b78bba94905d12fddbd3c3ae34c01578e6b1c0cbce3b3a11294adea00d235c"
  bottle :unneeded

  conflicts_with "kubectl"

  def install
    bin.install "kubectl"
  end

  test do
    system "#{bin}/kubectl version --client"
  end
end
