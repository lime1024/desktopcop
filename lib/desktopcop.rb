# frozen_string_literal: true

require "desktopcop/version"
require "fileutils"

class Desktopcop
  def trash
    Dir.chdir("/Users/#{user}/Desktop")
    puts("以下のファイルを削除しました")
    puts Dir.glob("*")
    move
  end

  private

    def user
      ENV["USER"]
     end

    def desktopfiles
      Dir.chdir("/Users/#{user}/Desktop")
      Dir.glob("*")
    end

    def move
      FileUtils.mv(desktopfiles, "/Users/#{user}/.Trash")
    end
end
