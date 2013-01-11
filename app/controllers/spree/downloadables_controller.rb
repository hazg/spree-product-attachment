module Spree
  class DownloadablesController < ApplicationController

    def show
      @downloadable = Spree::Downloadable.find(params[:id])

      if @downloadable.secret_links_only?
        if @downloadable.secret_link_correct?(params[:secret])
          send_file(@downloadable.path, { :filename => @downloadable.filename, :type => @downloadable.mime })
        else
          raise 'Wrong secret link'
        end
      else
        send_file(@downloadable.path, { :filename => @downloadable.filename, :type => @downloadable.mime })
      end
    end

  end
end