class Micro < Formula
    desc "A modern and intuitive terminal-based text editor"
    homepage "https://github.com/zyedidia/micro"

    devel do
        url "http://zbyedidia.webfactional.com/micro/binaries/micro-osx.tar.gz"
        sha256 "00d1c8ce11d9992a138b59d2f8aa6c9f13c396d7db8244970997b5f89e3ff904"
    end

    def install
        system "./install.sh"
        bin.install Dir["bin/micro"]
    end
end
