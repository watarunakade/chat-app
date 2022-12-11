class MessagesController < ApplicationController
  def index
    @message = Message.new
    @room = Room.find(params[:room_id])#paramsに含まれているroom_idを代入する
  end

  def create
    @room = Room.find(params[:room_id])
    @message = @room.messages.new(message_params)
    if @message.save #メッセージを保存できた時
      redirect_to room_messages_path(@room)
    else #できなかった時
      render :index
    end
  end



  private

  def message_params
    params.require(:message).permit(:content).merge(user_id: current_user.id)
  end
end
