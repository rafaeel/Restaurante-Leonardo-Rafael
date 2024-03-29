#encoding:utf-8
class ComentariosController < ApplicationController
  before_filter :authenticate_user!, :except => [:index,:show]
  # GET /comentarios
  # GET /comentarios.json
  def index
    @comentarios = Comentario.page(params['page'])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @comentarios }
    end
  end

  # GET /comentarios/1
  # GET /comentarios/1.json
  def show
    @comentario = Comentario.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @comentario }
    end
  end

  # GET /comentarios/new
  # GET /comentarios/new.json
  def new
    @comentario = Comentario.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comentario }
    end
  end

  # GET /comentarios/1/edit
  def edit
    @comentario = Comentario.find(params[:id])
  end

  # POST /comentarios
  # POST /comentarios.json
  def create
    @comentario = Comentario.new(params[:comentario])

    respond_to do |format|
        @comentario.save
        format.html { redirect_to @comentario, notice: 'Comentário postado com sucesso.' }
        format.xml { render :xml => @comentario, :status => :created, :location => @comentario }
        format.js
      end

    end

  # PUT /comentarios/1
  # PUT /comentarios/1.json
  def update
    @comentario = Comentario.find(params[:id])

    respond_to do |format|
      if @comentario.update_attributes(params[:comentario])
        format.html { redirect_to @comentario, notice: 'Comentário atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @comentario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comentarios/1
  # DELETE /comentarios/1.json
  def destroy
    @comentario = Comentario.find(params[:id])
    @comentario.destroy
    respond_to do |format|
      format.html { redirect_to @comentario, notice: 'Comentario deletado com sucesso.' }
      format.xml { head :ok }
      format.js { head :ok }
    end
  end
end