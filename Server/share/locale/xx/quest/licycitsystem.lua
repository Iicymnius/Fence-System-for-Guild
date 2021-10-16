quest licycit begin
	state start begin
		when login begin
			if pc . is_gm ( ) == true then
				send_letter("Çit Sistemi ")
			end
			end

			when button or info with pc.is_gm() begin
					if pc . is_gm ( ) == false then
					raw_script ( "[TEXT_HORIZONTAL_ALIGN_CENTER]" )	
					say("GM paneline giremezsiniz.")
					wait ()
					return
					end

					if pc.get_map_index() < 1100000 or pc.get_map_index() > 1100100 then 
					raw_script ( "[TEXT_HORIZONTAL_ALIGN_CENTER]" )	
					say ("Bu paneli sadece lonca haritasýnda kullanabilirsiniz.")
					wait ()
					send_letter("Gm Paneli ")
					return
					end

					if pc.get_map_index() >= 1100000 and pc.get_map_index() <= 1100100 then 
					raw_script ( "[TEXT_HORIZONTAL_ALIGN_CENTER]" )	
					say("Ne yapmak istiyorsunuz?")
					local ss = select ( " Çitleri Sabitle " , " Çitleri Kaldýr(Süreli) " , " Çitleri Kaldýr(Süresiz) " , " Panelden Çýk " ) 
					if ss == 1 then 
					regen_in_map(pc . get_map_index ( ), "locale/turkey/map/metin2_map_t3/cit.txt")
					send_letter("Gm Paneli ")
					elseif ss == 2 then 
						command("licycitsystem")
						send_letter("Gm Paneli ")

					-- elseif ss == 2 then 

					-- notice_all("10 saniye sonra çitler kalkacak ve savaþ baþlayacak. ")
					-- local i = 0
					-- local vv = 10
					-- local max = 10
					-- for i = 1, max do
						-- if vv == vv then
						-- say("[DELAY value;1500] [/DELAY]Çitlerin kalkmasýna ",vv ," saniye kaldý." )
						-- notice_all("Çitlerin kalkmasýna ",vv ," saniye kaldý." )
						-- vv = vv - 1
						-- wait()
						-- end
					-- end
					-- say("Çitler kaldýrýldý.")
					-- notice_all("Savaþ baþladý. ")
					-- command("purge all")
					-- wait()
					-- send_letter("Gm Paneli ")
					elseif ss == 3 then 
					notice_all("Savaþ baþladý. ")
					command("purge all")
					send_letter("Gm Paneli ")
					elseif ss == 4 then
					raw_script ( "[TEXT_HORIZONTAL_ALIGN_CENTER]" )	
					say("Siz bilirsiniz.")
					wait()
					send_letter("Gm Paneli ")
					end
					end
				end
				end
				end
