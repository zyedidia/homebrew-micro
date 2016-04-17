class Micro < Formula
    desc "A modern and intuitive terminal-based text editor"
    homepage "https://github.com/zyedidia/micro"

    devel do
        url "http://zbyedidia.webfactional.com/micro/binaries/micro-osx.tar.gz"
        sha256 "cc244307a0fb6fad9ee8839aebbb6c84aae5b468998a47086e979142a19d8cb8"
    end

    def install
        system "./install.sh"
        bin.install Dir["bin/micro"]
    end
end
