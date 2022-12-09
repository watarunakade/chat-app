class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  #deviseのコントローラーから呼び出された場合は、configure_permitted_parametersメソッドが呼ばれる。

  private
  def configure_permitted_parameters 
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    #特定のカラムを許容するメソッド。今回は「nameカラム」を追加したので、このメソッドを使用し、「name」キーの内容の保存をpermitメソッドで許可する。
  end
end
