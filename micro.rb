class Micro < Formula
    desc "A modern and intuitive terminal-based text editor"
    homepage "https://github.com/zyedidia/micro"
    url "https://github.com/zyedidia/micro/releases/download/v1.0/micro-1.0-osx.tar.gz"
    sha256 "3acccfa2f8bea3656af0c5b4fe0d364de2865587d2fb2458612697fd7540c294"

    devel do
        def self.sha256_checksum
            `curl --silent 'http://zbyedidia.webfactional.com/micro/binaries/micro-osx.tar.gz.sha256'`.split.first
        end

        url "http://zbyedidia.webfactional.com/micro/binaries/micro-osx.tar.gz"
        sha256 sha256_checksum
    end

    def install
        bin.install Dir["micro"]
    end
end

