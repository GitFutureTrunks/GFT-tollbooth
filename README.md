# GFT-tollbooth
### [Preview](https://streamable.com/ehju9q)
This is a simple toll booth resource for QBCore that is drag n drop

Gives players a booth fee for simply crossing a checkpoint that you set in the config!

# Instructions to get started
## Ensure that you have police and ambulance job as the following job names:
## As police and ambulance have free passage
```
police = {
		label = 'Law Enforcement',
		type = 'leo',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = { name = 'Recruit', payment = 50 },
			['1'] = { name = 'Officer', payment = 75 },
			['2'] = { name = 'Sergeant', payment = 100 },
			['3'] = { name = 'Lieutenant', payment = 125 },
			['4'] = { name = 'Chief', isboss = true, payment = 150 },
		},
	},
	ambulance = {
		label = 'EMS',
		type = 'ems',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = { name = 'Recruit', payment = 50 },
			['1'] = { name = 'Paramedic', payment = 75 },
			['2'] = { name = 'Doctor', payment = 100 },
			['3'] = { name = 'Surgeon', payment = 125 },
			['4'] = { name = 'Chief', isboss = true, payment = 150 },
		},
	},
```
### Enjoy!
# [Toll Booth For Los Santos](https://studio-leuhaim.tebex.io/category/others)
