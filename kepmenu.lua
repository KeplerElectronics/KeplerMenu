-- title:   game title
-- author:  game developer, email, etc.
-- desc:    short description
-- site:    website link
-- license: MIT License (change this to your license of choice)
-- version: 0.1
-- script:  lua

menuloc=0
shake=true

function TIC()
 cls()
 
 cpt("MENU SYSTEM :)",20,15,5,2)

 spr(288+math.floor((time()/100)%8),
           16,
           menuloc*10+89,
           -1,1,1,1,0) 

	bpt("Start Game",28,90,8,5,1)
	
	if shake == true then
	 bpt("Camera Shake On",28,100,8,5,1)
	else
	 bpt("Camera Shake Off",28,100,8,5,1)
	end

	vbank(0)

	
	if menuloc >0 
	and btnp(0) or btnp(8) then
	 menuloc=menuloc-1
	elseif menuloc<1 
	and btnp(1) or btnp(9) then
	 menuloc=menuloc+1
	end
	
	if btnp(4) or btnp(5) 
	or btnp(12) or btnp(13) then
	 if menuloc==1 then
		 if shake == true then
			 shake=false
			else
			 shake=true
			end
		elseif menuloc==0 then
		 gamestate = "worldmap"
  end
	end
end

--center print text 
function cpt(s,y,c,m,b)
 if not b then b=1 end
	local w=print(s,0,-6)*b
	local p=(240-w)//2
	local f=false
 bpt(s,p,y,c,m,b)
end

--background print text
function bpt(s,x,y,c,m,b)
 for i=0,8 do
	 print(s,x-1+i%3,y-1+i//3,c,false,b)
	end
 print(s,x,y,m,false,b)
end

-- <TILES>
-- 001:eccccccccc888888caaaaaaaca888888cacccccccacc0ccccacc0ccccacc0ccc
-- 002:ccccceee8888cceeaaaa0cee888a0ceeccca0ccc0cca0c0c0cca0c0c0cca0c0c
-- 003:eccccccccc888888caaaaaaaca888888cacccccccacccccccacc0ccccacc0ccc
-- 004:ccccceee8888cceeaaaa0cee888a0ceeccca0cccccca0c0c0cca0c0c0cca0c0c
-- 017:cacccccccaaaaaaacaaacaaacaaaaccccaaaaaaac8888888cc000cccecccccec
-- 018:ccca00ccaaaa0ccecaaa0ceeaaaa0ceeaaaa0cee8888ccee000cceeecccceeee
-- 019:cacccccccaaaaaaacaaacaaacaaaaccccaaaaaaac8888888cc000cccecccccec
-- 020:ccca00ccaaaa0ccecaaa0ceeaaaa0ceeaaaa0cee8888ccee000cceeecccceeee
-- </TILES>

-- <SPRITES>
-- 032:055566605ee77ff65e77fff6557fff66055ff660005566000005600000056000
-- 033:0005666005557f6005ee7f6005e7f660055ff600005566000005600000056000
-- 034:0055660000556600005ee600005e7600005ff600005566000005600000056000
-- 035:0555600005f7666005f7ee60055f7e60005ff660005566000005600000056000
-- 036:055566605ff77ee65fff77e655fff766055ff660005566000005600000056000
-- 037:000566600555ee6005f77e6005ff7660055ff600005566000005600000056000
-- 038:0055660000556600005ff600005ff600005ff600005566000005600000056000
-- 039:0555600005ee666005e77f600557ff60005ff660005566000005600000056000
-- </SPRITES>

-- <WAVES>
-- 000:00000000ffffffff00000000ffffffff
-- 001:0123456789abcdeffedcba9876543210
-- 002:0123456789abcdef0123456789abcdef
-- </WAVES>

-- <SFX>
-- 000:000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000304000000000
-- </SFX>

-- <TRACKS>
-- 000:100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- </TRACKS>

-- <PALETTE>
-- 000:1a1c2c5d275db13e53ef7d57ffcd75a7f07038b76425717929366f3b5dc941a6f673eff7f4f4f494b0c2566c86333c57
-- </PALETTE>

