module Spree
  module HomeControllerDecorator
    # HomeController.class_eval do
    #   alias_method :old_index, :index
    #   def index
    #     @searcher = build_searcher(params.merge(include_images: true))
    #     sorting_scope = params[:sorting].try(:to_sym) || :ascend_by_updated_at
    #     @products = @searcher.retrieve_products.send(sorting_scope)
    #     @taxonomies = Spree::Taxonomy.includes(root: :children)
    #   end
    # end
  end
end
::Spree::HomeController.prepend Spree::HomeControllerDecorator