class JusungController < ApplicationController
     require 'telegram/bot'
    def telegramcall
        token = '212232596:AAE7B9INzr9htlgtRPKyyCSxswg02XcC3v8'
        @building_name = params[:building_name]
        @chat_id = params[:chat_id]
        #@chat_id = 192787372
        @messages = "테스트메세지의 시작입니다>>"
        @messages = @messages.to_s + " \n" + @building_name.to_s
        
        # 이곳 윗 부분은 건들지 말것. 
        # [변수]@building_name: 강의실 이름
        # [변수]@chat_id: 메세지 보낸(받을) 사람의 chatid
        # [변수]@messages: 텔레그램으로 보낼 메세지
        # 위 설명된 변수와 필요한 변수를 추가로 생성하여 기능 구현할 것
        # 1. 현재시간 받아오기
        # 2. 현재시간에 따른 현재 비어있는 강의실 찾기
        # 3. 2에서 찾은 강의실이 언제까지 비어있는지 알아내기

        
        # 1.현재시간 받아오고
        # 1-1.현재시간에 9시간을 더해야함(why? 우리나라는 표준시 +9)
        # 1-2.현재시간에서 오늘의 요일에 따라 1,2,3,4,5값을 받아와야 함
        # 1-3.현재시간에서 시간, 분에 따라서 900(9시~9시 29분), 1500(15시~15시29분), 1550(15시30분~15시59분)등의 값을 만들어야 함
        
        # 2. @emptyroominfo = Roominfo.where(빌딩이름이: , 요일: , 시간: 현재시간, isempty: 1)
        #DB구조(예시): Roominfo.create(roomnumber: r.roomnumber, bulidingname: bd, weekday: weekvalue, timevalue: timevalue, isempty: 1)
        #http://api.rubyonrails.org/classes/ActiveRecord/QueryMethods.html#method-i-where
        #http://guides.rubyonrails.org/active_record_querying.html
        #table.html이나 onerecord.html 구현도 참고할 것

        # 3. 3번은 솔직히 좀 어렵긴 하다.
        
        
        
        
        
        
        
        
        
        
        #아래 두줄은 건들지 말 것, 텔레그램으로 메세지 보내는 부분임
        Telegram::Bot::Client.run(token) do |bot|
            bot.api
    
end
