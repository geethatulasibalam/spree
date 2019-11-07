module Spree
  module Adjustable
    module Adjuster
      class MyAdjuster < Spree::Adjustable::Adjuster::Base
        def update
          ...
          #your ruby magic
          ...
          update_totals(some_total, my_other_total)
        end

        private

        # Note to persist your totals you need to update @totals
        # This is shown in a separate method for readability
        def update_totals(some_total, my_other_total)
          # if you want to keep track of your total,
          # you will need the column defined
          @totals[:total_you_want_to_track] += some_total
          @totals[:taxable_adjustment_total] += some_total
          @totals[:non_taxable_adjustment_total] += my_other_total
        end
      end
    end
  end
end