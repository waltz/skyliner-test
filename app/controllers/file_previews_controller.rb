class FilePreviewsController < ApplicationController
  def allowed
    {
      show: :guest
    }
  end

  def show
    render text: IO.read(params[:file])
  end
end
