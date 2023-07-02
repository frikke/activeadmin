# frozen_string_literal: true
module ActiveAdmin
  module Views
    # = Columns Component
    #
    # The Columns component allows you draw content into scalable columns. All
    # you need to do is define the number of columns and the component will
    # take care of the rest using CSS Grid.
    #
    # To create a two column layout:
    #
    #     columns do
    #       column do
    #         span "Column # 1"
    #       end
    #       column do
    #         span "Column # 2"
    #       end
    #     end
    #
    # Apply any Tailwind utility to either the columns (or column) component to
    # set additional or override base styles.
    class Columns < ActiveAdmin::Component
      builder_method :columns

      def build(*args)
        super
        add_class default_class_name
      end

      def column(*args, &block)
        insert_tag Arbre::HTML::Div, *args, &block
      end
    end
  end
end
