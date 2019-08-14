class DocsController < ApplicationController
	
	def index
	end

	def show
		@doc = Doc.find(params[:id])
	end

	def create
		@doc = Doc.new(doc_params)

		@doc.save ? redirect_to(@doc) : render(new)
	end

	def new
		@doc = Doc.new
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private

		def find_doc
		end

		def doc_params
			params.require(:doc).permit(:title, :content)
		end


end
