class GraphsController < ApplicationController

  def graph
    # user choice
    # has the intro-to-category theory (displayed)
    # heading for folders (liquids, etc)
    # NOTE this is right before progression logic takes over for users
    # re-create context with category, context folder names
    all = Graph.where(category: params[:category])
    @context_list = []
    all.each do |tuple|
      if (@context_list.last != tuple.context) ? (@context_list << tuple.context) : nil
      end
    end

    render '/graphs/graph'
  end

  def batch
    all = Graph.where(context: params[:context])
    @typ = []
    @ids = []
    @batches = []
    @makeup = []
    all.each do |file|
      @typ << file.typ
      @ids << file.file_id
      @batches << file.batch
      @makeup << file.makeup
    end

    # admin page for displaying progression information at localgraph level
    # doing this before hiding it behind progression logic, for debugging
    render '/graphs/batch'
  end


  # NOTE beginning of real controller pusedocode
  # so the graphs controller will be in charge of determining "next problem"
  # and confirming viewer has access to the problem they are fetching

end
