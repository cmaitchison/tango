# coding: utf-8

module Tango
  module Contexts
    class Umask

      def initialize(umask)
        @umask = umask
      end

      def enter
        @old_umask = File.umask(@umask)
      end

      def leave
        File.umask(@old_umask)
      end

    end
  end
end
