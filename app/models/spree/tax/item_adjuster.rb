def adjust!
  return unless order_tax_zone(order)
  # Using .destroy_all to make sure callbacks fire
  item.adjustments.tax.destroy_all unless @skip_destroy_adjustments

  rates_for_item(item).map { |rate| rate.adjust(order_tax_zone(order), item) }
end