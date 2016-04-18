class Micro < Formula
    desc "A modern and intuitive terminal-based text editor"
    homepage "https://github.com/zyedidia/micro"

    devel do
        url "http://zbyedidia.webfactional.com/micro/binaries/micro-osx.tar.gz"
        sha256 "616ea85d02abdda50cbfd198b20a9d2790984f10a52b11709f5fdf186822fc72"
    end

    def install
        bin.install Dir["micro"]
    end
end
