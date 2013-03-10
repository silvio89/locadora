class EmprestimosController < ApplicationController
	
	def new
		@filme = Filme.find(params[:id])
		@usuario = Usuario.find(params[:ud])
		@emprestimo = @filme.emprestimos.build
		@emprestimo2 = @usuario.emprestimos.build	
	end
	
	def create
		@filme = Filme.find(params[:id])
		@usuario = Usuario.find(params[:ud])
		@emprestimo = @filme.emprestimos.build(params[:emprestimo])
		@emprestimo2 = @usuario.emprestimos.build( params[:emprestimo] )
		if @emprestimo.save && @emprestimo2.save			
			redirect_to usuarios_path
		end			
	end	
end
