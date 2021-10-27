if Gem.loaded_specs['spree_core'].version >= Gem::Version.create('3.5.0.alpha')
  Deface::Override.new(
    virtual_path: 'spree/layouts/spree_application',
    name: 'add_google_tag_to_spree_application',
    insert_top: "[data-hook='inside_head']",
    partial: 'spree/shared/google_tag'
  )
  Deface::Override.new(
    virtual_path: 'spree/layouts/spree_application',
    name: 'add_google_analytics_to_spree_application',
    insert_top: "[data-hook='body']",
    partial: 'spree/shared/google_tag_body'
  )
end
