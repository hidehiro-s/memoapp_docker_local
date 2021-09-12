class ApplicationController < ActionController::Base
    def index
        #トップページ呼び出し動作アクション
        @memos = Memo.all
    end

    def new
        #新規作成ページ呼び出し動作アクション
    end

    def create
        #新しいメモがフォームからPostされた動作アクション
        Memo.create(title:params["memos"]["title"],body:params["memos"]["body"])
        redirect_to "/"
    end

    def destroy
        memo = Memo.find(params["id"])
        memo.destroy
        redirect_to "/"
    end
end
