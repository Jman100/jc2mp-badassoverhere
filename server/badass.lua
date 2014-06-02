admins = { -- Comma separated list of admin steam ids
	"STEAM_0:0:29344613"
}

function dochat(args)
	if args.text == "/badass" then
		for x, y in ipairs(admins) do
			if y == args.player:GetSteamId().string then
				Network:Broadcast("FireBadass")
			end
		end
	end
end

Events:Subscribe("PlayerChat", dochat)