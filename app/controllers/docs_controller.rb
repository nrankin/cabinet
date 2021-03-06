class DocsController < ApplicationController
	before_action :find_doc, only: [:show, :edit, :update, :destroy]
	def index
		@docs = Doc.where(user: current_user).order("created_at DESC")
	end

	def show
	end

	def create
		@doc = current_user.docs.build(doc_params)

		@doc.save ? redirect_to(@doc) : render(new)
	end

	def new
		@doc = current_user.docs.build
	end

	def edit
	end

	def update
		@doc.update(doc_params) ? redirect_to(@doc) : render(edit)
	end

	def destroy
		@doc.destroy
		redirect_to docs_path
	end

	private

		def find_doc
			@doc = Doc.find(params[:id])
		end

		def doc_params
			params.require(:doc).permit(:title, :content)
		end




end
