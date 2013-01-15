module ApplicationHelper

   def novo_comentario(comentavel)
      form_novo_comentario = render partial: "comentarios/novo_comentario",
      locals: {comentavel: comentavel}
      raw form_novo_comentario
   end
end
