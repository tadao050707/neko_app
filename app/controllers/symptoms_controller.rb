class SymptomsController < ApplicationController
  def index
    @symptoms = Symptom.all
  end

  # なぜかshowに飛んできてしまうからこうしている
  def show
    # 送られてきたカテゴリidに合致するdetailを配列で抽出
    @details = Symptom.where(category: params[:category_id]).pluck(:detail)
    # JSONで返却
    render json: @details
  end
end
