Deface::Override.new(:virtual_path  => "spree/products/show",
            :insert_bottom => "[data-hook='summary']",
            :partial      => "spree/products/downloadable_links",
            :name         => "downloadable_links")