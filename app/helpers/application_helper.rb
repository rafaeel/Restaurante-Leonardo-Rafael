module ApplicationHelper
	
	
	def menu_principal
		menu = %w(Cliente Qualificacao Restaurante Comentario)
		menu_principal = "<ul>"
		
		menu.each do |item|
			menu_principal << "&nbsp;&nbsp;&nbsp;&nbsp;"
			if item == 'Restaurante'
				menu_principal << link_to(item,'restaurante')
			 else
				menu_principal << link_to(item, :controller => item.pluralize)
			end
		end
			menu_principal << "</ul>"
			raw menu_principal
	end

	def comentarios(comentavel)
		comentarios = "<div id='comentarios'>"
		comentarios << "<h3>Comentarios</h3>"
		comentarios << render(comentavel.comentarios) unless comentavel.comentarios.empty?
		comentarios << "</div>"
		raw comentarios
	end

	def novo_comentario(comentavel)
		form_novo_comentario = render partial: "comentarios/novo_comentario",
		locals: {comentavel: comentavel}
		raw form_novo_comentario
	end

end

	


