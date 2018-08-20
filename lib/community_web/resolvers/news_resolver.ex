defmodule CommunityWeb.NewsResolver do # for GraphQL
    alias Community.News

    def all_links(_root, _args, _info) do
        links = News.list_links()
        {:ok, links} # for :ok status it sends to schemas resolve func
    end

    def create_link(_root, args, _info) do
        # todo: error handling
        case News.create_link(args) do
            {:ok, link} ->
                {:ok, link}
            _error ->
                {:error, "cpuld not create link"}
        end

    end

end
