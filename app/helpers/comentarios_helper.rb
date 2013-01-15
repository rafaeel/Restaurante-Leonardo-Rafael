module ComentariosHelper
   def comentarios(comentavel)
      comentarios = "<div id='comentarios'>"
      comentarios << "<h3>Comentarios</h3>"
      comentarios << render(comentavel.comentarios) unless comentavel.comentarios.empty?
      comentarios << "</div>"
      raw comentarios
   end

end
