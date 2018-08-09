class BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.not_archived.order(:title)
    @bookmark = Bookmark.new
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params) # mass assingment
    @bookmark.title = MetaInspector.new(@bookmark.url).best_title
    if @bookmark.save
      redirect_to '/bookmarks'
    else
      render :new
    end
  end

  def show
    # atomic operation
    Bookmark.increment_counter(:click_count, params[:id])

    # gives integrity problems because of concurrency

    # @bookmark = Bookmark.find(params[:id])
    # @bookmark.click_count += 1
    # @bookmark.save
    # redirect_to @bookmark.url
    redirect_to Bookmark.find(params[:id]).url
  end

  def destroy
    @bookmark = Bookmark.find( params[:id])
    if @bookmark.destroy
      redirect_to '/bookmarks'
    else
      render :show
    end
  end

  def edit
    @bookmark = Bookmark.find(params[:id])
    render :edit
  end

  def update
    @bookmark = Bookmark.find(params[:id])
    @bookmark.url = params[:url]
    if @bookmark.save
      redirect_to "/bookmarks/#{params[:id]}"  
    else
      render :edit
    end
  end

  def bookmark_params
    params.require(:bookmark).permit(:url)
  end

  def recent
    @bookmarks = Bookmark.recently_added
    @bookmark = Bookmark.new
    render :index
  end

  def neglected
    @bookmarks = Bookmark.neglected
    @bookmark = Bookmark.new
    render :index
  end

  def archive_record
    @bookmark = Bookmark.find(params[:id])
    if @bookmark.archived == true
      @bookmark.archived = false
    else
      @bookmark.archived = true
    end
    if @bookmark.save
      redirect_to '/bookmarks'
    else
      render :index
    end
  end

  def archived
    @bookmarks = Bookmark.archived
    @bookmark = Bookmark.new
    render :index
  end

end
