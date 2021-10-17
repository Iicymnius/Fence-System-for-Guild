#add;

import time

#find;

class GameWindow(ui.ScriptWindow):

#find in function;

		self.itemDropQuestionDialog = None

#add below;

		self.endTime = 0

#find again;

		if self.enableXMasBoom:
			self.__XMasBoom_Update()

#add below;

		if constInfo.citsystem== 1:
			lastTime = max(0, self.endTime - time.clock())
			if 0 == lastTime:
				self.citsystem2()
				curTime = time.clock()
				self.endTime = curTime + 1

#find again;

			"MyShopPriceList"		: self.__PrivateShop_PriceList,

#add above;

			"citsystem"				: self.citsystem,

#add to bottom;

	def citsystem(self):
		if constInfo.citsystem== 0:
			constInfo.citsystem=1

	def citsystem2(self):
		sayac = constInfo.citsystem2
		if sayac != 10:
			net.SendChatPacket("/notice_map Çitlerin kalkmasına "+ str(10-sayac) + " saniye kaldı. ")
			sayac=sayac+1
			constInfo.citsystem2=sayac
		else:
			net.SendChatPacket("/notice_map Savaş başladı. ")
			net.SendChatPacket("/purge all")
			constInfo.citsystem=0
			constInfo.citsystem2=0
