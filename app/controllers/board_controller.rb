class BoardController < ApplicationController
    
    def new
    end
    
    def create
        @post_title = params[:title]
        @post_content = params[:content]
        @post_editor = params[:editor]
        
        new_post = Post.new
        new_post.title = @post_title
        new_post.content = @post_content
        new_post.editor = @post_editor
        
        new_post.save
        redirect_to '/index'
    end
    
    def index
        @view_post = Post.all
    end
    
    def show
        @show_post = Post.find(params[:post_id])
    end
    
    def edit
        @upd_post = Post.find(params[:post_id])
    end
    
    def update
        upd_post = Post.find(params[:post_id])  
        upd_post.title = params[:title]
        upd_post.content = params[:content]
        upd_post.editor = params[:editor]
        
        upd_post.save
        redirect_to '/index'
    end
    
    
    def delete
        del_post = Post.find(params[:post_id])
        del_post.destroy
        redirect_to '/index'
    end
    
end
