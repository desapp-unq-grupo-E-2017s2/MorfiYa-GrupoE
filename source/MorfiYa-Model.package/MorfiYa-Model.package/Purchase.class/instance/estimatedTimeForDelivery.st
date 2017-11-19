actions
estimatedTimeForDelivery

	^ (menus keys collect: [ :menu | menu deliveryTimeAverage ]) max + 10