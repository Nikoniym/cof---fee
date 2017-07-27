class FestivalsController < ApplicationController
	def timetable_tab
		tab = params[:id]
		@sevents =  Firsttab.find(tab).events.order(:position)
	end
	def index

		@fest = FestPage.find_by_id(1)

		# @s = Firsttab.find_by_id(1)
		# @e = Firsttab.find_by_id(2)
		@events_tab = Firsttab.order(position: :asc)
		@sevents =  @events_tab.first.events
		# @sevents = @s.events
		# @eevents = @e.events

		@cofs = Coffeehouse.order(num: :asc).all
		@mem = Member.order(num: :asc).all
		@map = Map.all

		@faq = Faq.all


			@map_sq_1 = Map.find_by_id(1)
			@map_sq_2 = Map.find_by_id(2)
			@map_sq_3 = Map.find_by_id(3)
			@map_sq_4 = Map.find_by_id(4)
			@map_sq_5 = Map.find_by_id(5)

			@map_sq_short_1 = Map.find_by_id(6)
			@map_sq_short_2 = Map.find_by_id(7)
			@map_sq_short_3 = Map.find_by_id(8)
			@map_sq_short_4 = Map.find_by_id(9)
			@map_sq_short_5 = Map.find_by_id(10)
			@map_sq_short_6 = Map.find_by_id(11)
			@map_sq_short_7 = Map.find_by_id(12)
			@map_sq_short_8 = Map.find_by_id(13)
			@map_sq_short_9 = Map.find_by_id(14)
			@map_sq_short_10 = Map.find_by_id(15)
			@map_sq_short_11 = Map.find_by_id(16)
			@map_sq_short_12 = Map.find_by_id(17)
			@map_sq_short_13 = Map.find_by_id(18)
			@map_sq_short_14 = Map.find_by_id(19)
			@map_sq_short_15 = Map.find_by_id(20)
			@map_sq_short_16 = Map.find_by_id(21)
			@map_sq_short_17 = Map.find_by_id(22)
			@map_sq_short_18 = Map.find_by_id(23)


			@map_big_sq_1 = Map.find_by_id(24)
			@map_big_sq_2 = Map.find_by_id(25)
			@map_big_sq_3 = Map.find_by_id(26)
			@map_big_sq_4 = Map.find_by_id(27)
			@map_big_sq_5 = Map.find_by_id(28)


			@map_sq_6 = Map.find_by_id(29)
			@map_sq_7 = Map.find_by_id(30)
			@map_sq_8 = Map.find_by_id(31)
			@map_sq_9 = Map.find_by_id(32)
			@map_sq_10 = Map.find_by_id(33)
			@map_sq_11 = Map.find_by_id(34)
			@map_sq_12 = Map.find_by_id(35)
			@map_sq_13 = Map.find_by_id(36)
			@map_sq_14 = Map.find_by_id(37)
			@map_sq_15 = Map.find_by_id(38)
			@map_sq_16 = Map.find_by_id(39)

			@map_sq_short_19 = Map.find_by_id(40)
			@map_sq_short_20 = Map.find_by_id(41)
			@map_sq_short_21 = Map.find_by_id(42)
			@map_sq_short_22 = Map.find_by_id(43)
			@map_sq_short_23 = Map.find_by_id(44)
			@map_sq_short_24 = Map.find_by_id(45)
			@map_sq_short_25 = Map.find_by_id(46)
			@map_sq_short_26 = Map.find_by_id(47)
			@map_sq_short_27 = Map.find_by_id(48)
			@map_sq_short_28 = Map.find_by_id(49)
			@map_sq_short_29 = Map.find_by_id(50)
			@map_sq_short_30 = Map.find_by_id(51)
			@map_sq_short_31 = Map.find_by_id(52)
			@map_sq_short_32 = Map.find_by_id(53)
			@map_sq_short_33 = Map.find_by_id(54)
			@map_sq_short_34 = Map.find_by_id(55)
			@map_sq_short_35 = Map.find_by_id(56)
			@map_sq_short_36 = Map.find_by_id(57)
			@map_sq_short_37 = Map.find_by_id(58)
			@map_sq_short_38 = Map.find_by_id(59)
			@map_sq_short_39 = Map.find_by_id(60)

			@map_big_sq_6 = Map.find_by_id(61)
			@map_big_sq_7 = Map.find_by_id(62)
			@map_big_sq_8 = Map.find_by_id(63)
			@map_big_sq_9 = Map.find_by_id(64)
			@map_big_sq_10 = Map.find_by_id(65)


			@map_sq_17 = Map.find_by_id(66)
			@map_sq_18 = Map.find_by_id(67)
			@map_sq_19 = Map.find_by_id(68)
			@map_sq_20 = Map.find_by_id(69)
			@map_sq_21 = Map.find_by_id(70)
			@map_sq_22 = Map.find_by_id(71)
			@map_sq_short_new_1 = Map.find_by_id(72)
			@map_sq_short_new_2 = Map.find_by_id(73)





	end







end
