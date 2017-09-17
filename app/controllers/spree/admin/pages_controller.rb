module Spree
  module Admin
    class PagesController < ResourceController
      create.after :add_page_to_current_store

      private

      def add_page_to_current_store
        @object.stores << current_store
      end
    end
  end
end
