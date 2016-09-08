require "language/go"

class Micro < Formula
  desc "Modern and intuitive terminal-based text editor"
  homepage "https://github.com/zyedidia/micro"
  url "https://github.com/zyedidia/micro/archive/v1.0.3.tar.gz"
  sha256 "dc9a693d9eedbbf5a0048a092172a56de6b2b608f7d1419274c12416a840876d"
  head "https://github.com/zyedidia/micro.git"

  depends_on "go" => :build

  go_resource "github.com/gdamore/encoding" do
    url "https://github.com/gdamore/encoding.git",
    :revision => "b23993cbb6353f0e6aa98d0ee318a34728f628b9"
  end

  go_resource "github.com/go-errors/errors" do
    url "https://github.com/go-errors/errors.git",
    :revision => "a41850380601eeb43f4350f7d17c6bbd8944aaf8"
  end

  go_resource "github.com/layeh/gopher-luar" do
    url "https://github.com/layeh/gopher-luar.git",
    :revision => "921d03e21a7844141b02d4c729269b6709762f28"
  end

  go_resource "github.com/lucasb-eyer/go-colorful" do
    url "https://github.com/lucasb-eyer/go-colorful.git",
    :revision => "9c2852a141bf4711e4276f8f119c90d0f20a556c"
  end

  go_resource "github.com/mattn/go-isatty" do
    url "https://github.com/mattn/go-isatty.git",
    :revision => "66b8e73f3f5cda9f96b69efd03dd3d7fc4a5cdb8"
  end

  go_resource "github.com/mattn/go-runewidth" do
    url "https://github.com/mattn/go-runewidth.git",
    :revision => "d6bea18f789704b5f83375793155289da36a3c7f"
  end

  go_resource "github.com/mitchellh/go-homedir" do
    url "https://github.com/mitchellh/go-homedir.git",
    :revision => "756f7b183b7ab78acdbbee5c7f392838ed459dda"
  end

  go_resource "github.com/sergi/go-diff" do
    url "https://github.com/sergi/go-diff.git",
    :revision => "ec7fdbb58eb3e300c8595ad5ac74a5aa50019cc7"
  end

  go_resource "github.com/yosuke-furukawa/json5" do
    url "https://github.com/yosuke-furukawa/json5.git",
    :revision => "07fdad7a3c55f2098b172ea58890470c07f7d392"
  end

  go_resource "github.com/yuin/gopher-lua" do
    url "https://github.com/yuin/gopher-lua.git",
    :revision => "6a1397dfb6f8e7af08496129dd96f5f62c148f47"
  end

  go_resource "github.com/zyedidia/clipboard" do
    url "https://github.com/zyedidia/clipboard.git",
    :revision => "72497670a7bd47eb648153f55bea83852546abe0"
  end

  go_resource "github.com/zyedidia/glob" do
    url "https://github.com/zyedidia/glob.git",
    :revision => "7cf5a078d22fc41b27fbda73685c88a3f2c6fe28"
  end

  go_resource "github.com/zyedidia/tcell" do
    url "https://github.com/zyedidia/tcell.git",
    :revision => "66ed19afb88b4adad8e1374b5718a76497a994d3"
  end

  go_resource "golang.org/x/text" do
    url "https://go.googlesource.com/text.git",
    :revision => "ceefd2213ed29504fff30155163c8f59827734f3"
  end

  def install
    ENV["GOPATH"] = buildpath
    mkdir_p buildpath/"src/github.com/zyedidia"
    ln_s buildpath, buildpath/"src/github.com/zyedidia/micro"
    Language::Go.stage_deps resources, buildpath/"src"

    date = `go run tools/build-date.go`.strip!

    system("go build -ldflags \"-X main.Version=#{version} -X main.CommitHash=#{version} -X 'main.CompileDate=#{date}'\" ./cmd/micro")
    bin.install "micro"
  end

  test do
    system "#{bin}/micro", "-version"
  end
end
