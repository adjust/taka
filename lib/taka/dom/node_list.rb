module Taka
  module DOM
    class NodeList
      def initialize &block
        @block = block
      end

      def length
        @block.call.send( :length )
      end

      def []( k )
        item( k )
      end

      def item(index)
        @block.call[index]
      end

      def method_missing name, *args, &block
        @block.call.send(name, *args, &block)
      end
    end
  end
end
