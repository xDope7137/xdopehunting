--[ This script was secured with XDopeObfs by xDope#2788 ]--

local function a(b)local c=math.floor;local function d(e,f)local g=0;for h=0,31 do local i=e/2+f/2;if i~=c(i)then g=g+2^h end;e=c(e/2)f=c(f/2)end;return g end;local j=1;local k;local function l(m,n,o)if o then local p=m/2^(n-1)%2^(o-1-(n-1)+1)return p-p%1 else local q=2^(n-1)return m%(q+q)>=q and 1 or 0 end end;local function r(m)local s={l(m,1,8),l(m,9,16),l(m,17,24),l(m,25,32)}return s end;local function t()local u=b:byte(j,j)j=j+1;return u end;local function v(m)local w=b:sub(j,j+m-1)j=j+m;return w end;local function x()local y,z,A,B=b:byte(j,j+3)j=j+4;return B*16777216+A*65536+z*256+y end;local function C()return x()*4294967296+x()end;local function D()local E=x()local F=x()if E==0 and F==0 then return 0 end;return(-2*l(F,32)+1)*2^(l(F,21,31)-1023)*((l(F,1,20)*4294967296+E)/4503599627370496+1)end;local function G(H,I)local J={}for h=0,#H-1 do J[h+1]=d(H[h+1],I[h%#I+1])end;return J end;local function K(e)return e[1]+e[2]*256+e[3]*65536+e[4]*16777216 end;local function L(M)local N=x()local w=r(N)local O=K(G(w,M))local P={}P.vwvvvvwwvvwvwwwv=0;P.vvwvvwwvwvvvwwvw=0;P.vwvwwvwvwvvwwvwv=l(O,1,6)P.wwwvwwwwwvwwvwww=l(O,7,14)P.wvwwvwvvwvwwwvvv=l(O,24,32)P.vwwwvvvvvwwwwvww=l(O,15,23)P.wvvvwvwvwvwwwwww=l(O,15,32)P.wwvwwvvwwwwvvwwv=l(O,15,32)-131071;P.vvwwwwvvvwwwvwvw=O;return P end;local function Q(M)local R=t()local S={}S.vwvvvvwwvvwvwwwv=R;if S.vwvvvvwwvvwvwwwv==204 then S.vvwvvwwvwvvvwwvw=nil elseif S.vwvvvvwwvvwvwwwv==148 then S.vvwvvwwvwvvvwwvw=t()==137 elseif S.vwvvvvwwvvwvwwwv==106 then local T=D()S.vvwvvwwvwvvvwwvw=T elseif S.vwvvvvwwvvwvwwwv==46 then local U=x()local V=""local W=1;for h=j,j+U-2 do if W==5 then W=1 end;V=V..("").char(d(t(),M[W]))W=W+1 end;j=j+1;S.vvwvvwwvwvvvwwvw=V:sub(2)end;return S end;assert(v(3)=="ARK","Invalid bytecode.")local function X()local Y={constants={},instructions={},wvwvvwvwwvwvwvwv={},upvalues={},args={},stack={},key={},ckey={},num_instr=0,num_const=0}Y.num_upvalues=t()Y.num_args=t()Y.ckey=r(x())Y.num_const=x()for h=1,Y.num_const do Y.constants[h-1]=Q(Y.ckey)end;Y.key=r(x())Y.num_instr=x()for h=1,Y.num_instr do Y.instructions[h]=L(Y.key)end;local Z=x()for h=1,Z do Y.wvwvvwvwwvwvwvwv[h-1]=X()end;return Y end;local function _(...)return select('#',...),{...}end;if getmetatable({})then while true do end end;local function a0(Y,a1,a2)local a3=Y.instructions;local a4=Y.constants;local a5=Y.wvwvvwvwwvwvwvwv;return function(...)local a6,a7,a8,a9,aa=1,-1;local ab={}local ac={}local ad={}local ae={__index=ac,__newindex=function(af,M,V)if M>a7 then a7=M end;ac[M]=V end}local a8=setmetatable(ab,ae)local ag={...}local a9={}local ah=Y.num_args;local ai=select("#",...)local aa=ai-ah-1;for h=1,ah do ab[h-1]=ag[h]end;for h=0,aa do a9[h]=ag[h+ah+1]end;local function aj(ak)if ak>255 then return a4[ak-256].vvwvvwwvwvvvwwvw else return a8[ak]end end;local al={[8]=function(P)a6=a6+P.wwvwwvvwwwwvvwwv end,[21]=function(P)if not not a8[P.wwwvwwwwwvwwvwww]==(P.vwwwvvvvvwwwwvww==0)then a6=a6+1 end end,[35]=function(P)local am=P.wvwwvwvvwvwwwvvv;local an=P.vwwwvvvvvwwwwvww;am=aj(am)an=aj(an)a8[P.wwwvwwwwwvwwvwww]=am%an end,[2]=function(P)local ao=P.wwwvwwwwwvwwvwww~=0;local am=P.wvwwvwvvwvwwwvvv;local an=P.vwwwvvvvvwwwwvww;am=aj(am)an=aj(an)if am<=an~=ao then a6=a6+1 end end,[3]=function(P)local ao=P.wwwvwwwwwvwwvwww;local ap=a8[ao+2]local j=a8[ao]+ap;a8[ao]=j;if ap>0 then if j<=tonumber(a8[ao+1])then a6=a6+P.wwvwwvvwwwwvvwwv;a8[ao+3]=j end else if j>=tonumber(a8[ao+1])then a6=a6+P.wwvwwvvwwwwvvwwv;a8[ao+3]=j end end end,[7]=function(P)local ao=P.wwwvwwwwwvwwvwww;local am=P.wvwwvwvvwvwwwvvv;for h=ao,ao+(am>0 and am-1 or aa)do a8[h]=a9[h-ao]end end,[13]=function(P)local ao=P.wwwvwwwwwvwwvwww;local aq={}for h=1,#ad do local ar=ad[h]for as=0,#ar do local at=ar[as]local au=at[1]local av=at[2]if au==a8 and av>=ao then aq[av]=a8[av]at[1]=aq end end end end,[38]=function(P)a8[P.wwwvwwwwwvwwvwww]=a2[P.wvwwvwvvwvwwwvvv]end,[30]=function(P)a8[P.wwwvwwwwwvwwvwww]=a2[P.wvwwvwvvwvwwwvvv]end,[14]=function(P)local ao=P.wwwvwwwwwvwwvwww;local am=P.wvwwvwvvwvwwwvvv;local aw,ax,ay={},0;if am==1 then return true elseif am==0 then ay=a7 else ay=ao+am-2 end;for h=ao,ay do ax=ax+1;aw[ax]=a8[h]end;return aw,ax end,[27]=function(P)a8[P.wwwvwwwwwvwwvwww]=-a8[P.wvwwvwvvwvwwwvvv]end,[24]=function(P)local am=P.wvwwvwvvwvwwwvvv;local az=a8[am]for h=am+1,P.vwwwvvvvvwwwwvww do az=az..a8[h]end;a8[P.wwwvwwwwwvwwvwww]=az end,[39]=function(P)a8[P.wwwvwwwwwvwwvwww]=not a8[P.wvwwvwvvwvwwwvvv]end,[25]=function(P)a8[P.wwwvwwwwwvwwvwww]=not a8[P.wvwwvwvvwvwwwvvv]end,[4]=function(P)local ao=P.wwwvwwwwwvwwvwww;local am=P.wvwwvwvvwvwwwvvv;local an=P.vwwwvvvvvwwwwvww;if an==0 then a6=a6+1;an=a3[a6].vvwwwwvvvwwwvwvw end;local aA=(an-1)*50;local aB=a8[ao]if am==0 then am=a7-ao end;for h=1,am do aB[aA+h]=a8[ao+h]end end,[20]=function(P)local an=P.vwwwvvvvvwwwwvww;an=aj(an)a8[P.wwwvwwwwwvwwvwww]=a8[P.wvwwvwvvwvwwwvvv][an]end,[23]=function(P)a2[P.wvwwvwvvwvwwwvvv]=a8[P.wwwvwwwwwvwwvwww]end,[6]=function(P)for h=P.wwwvwwwwwvwwvwww,P.wvwwvwvvwvwwwvvv do a8[h]=nil end end,[33]=function(P)a1[a4[P.wvvvwvwvwvwwwwww].vvwvvwwvwvvvwwvw]=a8[P.wwwvwwwwwvwwvwww]end,[40]=function(P)a8[P.wwwvwwwwwvwwvwww]=a4[P.wvvvwvwvwvwwwwww].vvwvvwwvwvvvwwvw end,[19]=function(P)a8[P.wwwvwwwwwvwwvwww]=a4[P.wvvvwvwvwvwwwwww].vvwvvwwvwvvvwwvw end,[5]=function(P)local am=P.wvwwvwvvwvwwwvvv;a8[P.wwwvwwwwwvwwvwww]=am~=0;if P.vwwwvvvvvwwwwvww~=0 then a6=a6+1 end end,[29]=function(P)local ao=P.wwwvwwwwwvwwvwww~=0;local am=P.wvwwvwvvwvwwwvvv;local an=P.vwwwvvvvvwwwwvww;am=aj(am)an=aj(an)if am<an~=ao then a6=a6+1 end end,[41]=function(P)local ao=P.wwwvwwwwwvwwvwww;local an=P.vwwwvvvvvwwwwvww;local aA=ao+2;local az={a8[ao](a8[ao+1],a8[ao+2])}for h=1,an do a8[aA+h]=az[h]end;if a8[ao+3]~=nil then a8[ao+2]=a8[ao+3]else a6=a6+1 end end,[18]=function(P)local ao=P.wwwvwwwwwvwwvwww;local an=P.vwwwvvvvvwwwwvww;local aA=ao+2;local az={a8[ao](a8[ao+1],a8[ao+2])}for h=1,an do a8[aA+h]=az[h]end;if a8[ao+3]~=nil then a8[ao+2]=a8[ao+3]else a6=a6+1 end end,[15]=function(P)local ao=P.wwwvwwwwwvwwvwww;local am=P.wvwwvwvvwvwwwvvv;local an=P.vwwwvvvvvwwwwvww;am=aj(am)an=aj(an)a8[ao][am]=an end,[11]=function(P)local am=P.wvwwvwvvwvwwwvvv;local an=P.vwwwvvvvvwwwwvww;am=aj(am)an=aj(an)a8[P.wwwvwwwwwvwwvwww]=am-an end,[36]=function(P)local am=P.wvwwvwvvwvwwwvvv;local an=P.vwwwvvvvvwwwwvww;am=aj(am)an=aj(an)a8[P.wwwvwwwwwvwwvwww]=am*an end,[28]=function(P)if not not a8[P.wvwwvwvvwvwwwvvv]==(P.vwwwvvvvvwwwwvww==0)then a6=a6+1 else a8[P.wwwvwwwwwvwwvwww]=a8[P.wvwwvwvvwvwwwvvv]end end,[1]=function(P)a8[P.wwwvwwwwwvwwvwww]=#a8[P.wvwwvwvvwvwwwvvv]end,[10]=function(P)a8[P.wwwvwwwwwvwwvwww]={}end,[31]=function(P)local ao=P.wwwvwwwwwvwwvwww;local am=P.wvwwvwvvwvwwwvvv;local an=P.vwwwvvvvvwwwwvww;local ag,aC,ay,ax={}if am~=1 then if am~=0 then ay=ao+am-1 else ay=a7 end;ax=0;for h=ao+1,ay do ax=ax+1;ag[ax]=a8[h]end;ay,aC=_(a8[ao](table.unpack(ag,1,ay-ao)))else ay,aC=_(a8[ao]())end;a7=ao-1;if an~=1 then if an~=0 then ay=ao+an-2 else ay=ay+ao-1 end;ax=0;for h=ao,ay do ax=ax+1;a8[h]=aC[ax]end end end,[22]=function(P)a8[P.wwwvwwwwwvwwvwww]=a8[P.wvwwvwvvwvwwwvvv]end,[42]=function(P)local ao=P.wwwvwwwwwvwwvwww;a8[ao]=a8[ao]-a8[ao+2]a6=a6+P.wwvwwvvwwwwvvwwv end,[34]=function(P)local ao=P.wwwvwwwwwvwwvwww;a8[ao]=a8[ao]-a8[ao+2]a6=a6+P.wwvwwvvwwwwvvwwv end,[43]=function(P)local am=P.wvwwvwvvwvwwwvvv;local an=P.vwwwvvvvvwwwwvww;am=aj(am)an=aj(an)a8[P.wwwvwwwwwvwwvwww]=am+an end,[17]=function(P)local am=P.wvwwvwvvwvwwwvvv;local an=P.vwwwvvvvvwwwwvww;am=aj(am)an=aj(an)a8[P.wwwvwwwwwvwwvwww]=am+an end,[16]=function(P)local ao=P.wwwvwwwwwvwwvwww~=0;local am=P.wvwwvwvvwvwwwvvv;local an=P.vwwwvvvvvwwwwvww;am=aj(am)an=aj(an)if am==an~=ao then a6=a6+1 end end,[0]=function(P)local am=P.wvwwvwvvwvwwwvvv;local an=P.vwwwvvvvvwwwwvww;am=aj(am)an=aj(an)a8[P.wwwvwwwwwvwwvwww]=am/an end,[32]=function(P)local aD=a5[P.wvvvwvwvwvwwwwww]local aE;if aD.num_upvalues>0 then local aF={}aE=setmetatable({},{__index=function(aG,M)local T=aF[M]return T[1][T[2]]end,__newindex=function(aG,M,aH)local T=aF[M]T[1][T[2]]=aH end})for h=1,aD.num_upvalues do local aI=a3[a6]if aI.vwvwwvwvwvvwwvwv==22 then aF[h-1]={a8,aI.wvwwvwvvwvwwwvvv}elseif aI.vwvwwvwvwvvwwvwv==30 then aF[h-1]={a2,aI.wvwwvwvvwvwwwvvv}end;a6=a6+1 end;ad[#ad+1]=aF end;local aJ=a0(aD,a1,aE)a8[P.wwwvwwwwwvwwvwww]=aJ end,[12]=function(P)local ao=P.wwwvwwwwwvwwvwww;local am=a8[P.wvwwvwvvwvwwwvvv]local an=P.vwwwvvvvvwwwwvww;an=aj(an)a8[ao+1]=am;a8[ao]=am[an]end,[26]=function(P)local ao=P.wwwvwwwwwvwwvwww;local am=P.wvwwvwvvwvwwwvvv;local ag,aC,ay,ax={}local aK=0;if am~=1 then if am~=0 then ay=ao+am-1 else ay=a7 end;ax=0;for h=ao+1,ay do ax=ax+1;ag[#ag+1]=a8[h]end;aC={a8[ao](table.unpack(ag,1,ay-ao))}else aC={a8[ao]()}end;for h in next,aC do if h>aK then aK=h end end;return aC,aK end,[37]=function(P)a8[P.wwwvwwwwwvwwvwww]=a1[a4[P.wvvvwvwvwvwwwwww].vvwvvwwvwvvvwwvw]end,[9]=function(P)local am=P.wvwwvwvvwvwwwvvv;local an=P.vwwwvvvvvwwwwvww;am=aj(am)an=aj(an)a8[P.wwwvwwwwwvwwvwww]=am^an end}local function aL()local P,e,f,W;while not k and(function()k=getmetatable(a8)~=ae;return true end)()do P=a3[a6]a6=a6+1;e,f,W=pcall(al[P.vwvwwvwvwvvwwvwv],P)if e then if f then if W and W>0 then return table.unpack(f,1,W)else return end end else error("Error: "..(f:match("^.+:%s*(.+)")or f),0)end end end;return aL()end end;local aM=X()return a0(aM,_G)()end;a("ARK\0\0\156\118\184\119\6\0\0\0\46\9\0\0\0\156\53\209\3\245\12\221\25\0\46\14\0\0\0\156\53\202\18\253\2\221\35\244\4\221\22\248\0\46\21\0\0\0\156\36\221\16\245\5\204\18\238\37\221\5\234\19\202\50\234\19\214\3\0\46\11\0\0\0\156\14\220\77\238\19\207\22\238\18\0\46\17\0\0\0\156\55\220\19\217\0\221\25\232\62\217\25\248\26\221\5\0\46\9\0\0\0\156\14\220\77\239\19\212\27\0\9\127\120\66\19\0\0\0\44\127\120\66\29\63\56\66\105\127\120\66\22\63\120\67\44\255\120\66\90\191\120\66\22\63\120\67\44\127\121\66\90\191\120\66\169\63\120\66\22\63\248\67\44\255\120\66\90\63\121\66\22\63\120\67\44\127\121\66\90\63\121\66\169\255\120\66\22\63\248\67\7\127\248\66\4\0\0\0\0\0\129\55\135\39\7\0\0\0\46\9\0\0\0\129\116\238\83\232\77\226\73\0\46\6\0\0\0\129\96\230\78\245\0\106\0\0\0\0\0\136\179\64\46\24\0\0\0\129\112\226\83\194\66\245\85\228\89\243\117\228\68\232\82\243\84\226\105\224\90\226\0\46\14\0\0\0\129\79\227\72\241\82\239\82\239\67\238\73\230\0\46\7\0\0\0\129\71\245\78\239\67\0\46\64\0\0\0\129\61\167\121\180\103\235\66\224\68\226\7\229\88\233\0\245\23\228\79\224\89\224\66\161\67\239\66\161\69\226\84\238\66\245\68\228\23\233\70\236\82\167\72\231\23\217\19\249\83\232\87\228\95\242\73\245\94\233\64\175\23\141\0\74\182\193\16\13\0\0\0\111\182\193\16\94\246\129\16\25\54\193\16\85\246\193\17\111\118\193\16\85\54\65\16\26\182\128\16\66\118\60\111\111\246\192\16\25\54\192\16\85\246\193\17\66\118\61\111\68\182\65\16\0\0\0\0\0\1\107\48\93\33\20\0\0\0\46\11\0\0\0\107\118\47\64\6\85\42\78\25\91\0\46\11\0\0\0\107\118\40\79\8\68\52\78\5\67\0\46\11\0\0\0\107\119\56\85\59\92\60\88\14\66\0\46\8\0\0\0\107\67\50\84\25\83\56\0\106\0\0\0\0\0\0\240\63\46\9\0\0\0\107\113\57\69\34\68\56\76\0\46\6\0\0\0\107\93\56\64\31\0\46\20\0\0\0\107\100\47\72\12\87\56\83\40\92\52\68\5\68\24\87\14\94\41\0\46\11\0\0\0\107\121\51\87\14\94\41\78\25\73\0\46\8\0\0\0\107\99\53\64\25\85\57\0\46\7\0\0\0\107\121\41\68\6\67\0\46\5\0\0\0\107\81\57\69\0\106\0\0\0\0\0\0\34\64\106\0\0\0\0\0\0\0\64\106\0\0\0\0\0\0\46\64\106\0\0\0\0\0\0\8\64\46\9\0\0\0\107\92\56\64\31\88\56\83\0\46\6\0\0\0\107\93\60\85\3\0\46\8\0\0\0\107\66\60\79\15\95\48\0\106\0\0\0\0\0\0\16\64\8\5\16\51\74\0\0\0\109\5\16\51\92\69\208\51\92\133\208\51\173\197\16\51\87\133\16\50\10\5\16\177\0\133\19\179\156\69\208\51\156\69\81\50\219\133\17\51\27\4\17\51\151\69\144\50\173\197\17\51\237\5\18\51\45\196\16\51\109\4\16\51\92\68\210\49\92\132\210\49\92\132\209\49\155\196\18\51\151\69\144\49\0\5\24\179\10\5\16\181\0\133\19\179\156\69\208\51\156\69\81\50\219\133\17\51\27\68\19\51\151\69\144\50\173\197\17\51\237\5\18\51\45\196\16\51\109\4\16\51\92\68\210\49\92\132\210\49\92\132\209\49\155\196\18\51\151\69\144\49\0\197\19\179\10\5\16\180\0\69\19\179\156\69\208\51\156\69\81\50\219\133\17\51\27\196\19\51\151\69\144\50\173\197\17\51\237\5\18\51\45\196\16\51\109\4\16\51\92\68\210\49\92\132\210\49\92\132\209\49\155\196\18\51\151\69\144\49\156\69\208\51\156\69\81\50\219\5\20\51\45\68\20\51\28\132\84\49\91\4\17\51\155\196\20\51\23\4\144\50\151\69\16\51\173\197\17\51\237\5\18\51\45\196\16\51\109\4\16\51\92\68\210\49\92\132\210\49\92\4\212\49\155\196\18\51\151\69\144\49\6\5\144\51\0\0\0\0\0\0\136\15\78\15\27\0\0\0\46\11\0\0\0\136\73\60\110\229\106\57\96\250\100\0\46\11\0\0\0\136\73\59\97\235\123\39\96\230\124\0\46\11\0\0\0\136\72\43\123\216\99\47\118\237\125\0\46\8\0\0\0\136\124\33\122\250\108\43\0\106\0\0\0\0\0\64\95\64\106\0\0\0\0\0\0\57\64\46\15\0\0\0\136\72\43\123\193\123\43\98\202\118\0\110\229\106\0\46\6\0\0\0\136\98\43\110\252\0\46\9\0\0\0\136\99\43\110\252\103\43\125\0\204\46\8\0\0\0\136\110\35\96\253\97\58\0\106\0\0\0\0\0\0\0\0\46\10\0\0\0\136\78\42\107\197\96\32\106\241\0\46\6\0\0\0\136\108\47\124\224\0\46\9\0\0\0\136\103\59\97\252\102\32\104\0\46\12\0\0\0\136\93\43\98\231\121\43\70\252\106\35\0\46\20\0\0\0\136\91\60\102\239\104\43\125\203\99\39\106\230\123\11\121\237\97\58\0\46\11\0\0\0\136\70\32\121\237\97\58\96\250\118\0\46\8\0\0\0\136\92\38\110\250\106\42\0\46\7\0\0\0\136\70\58\106\229\124\0\46\8\0\0\0\136\125\43\98\231\121\43\0\46\8\0\0\0\136\65\33\123\225\105\55\0\46\11\0\0\0\136\86\33\122\168\124\33\99\236\47\0\46\7\0\0\0\136\99\47\109\237\99\0\46\15\0\0\0\136\47\47\97\236\47\43\110\250\97\43\107\168\43\0\46\9\0\0\0\136\124\59\108\235\106\61\124\0\46\36\0\0\0\136\86\33\122\168\107\33\97\175\123\110\103\233\121\43\47\233\97\55\47\229\106\47\123\168\96\60\47\228\106\47\123\224\106\60\0\240\30\53\106\101\0\0\0\213\30\53\106\228\94\117\106\228\158\117\106\149\222\53\106\239\158\53\107\163\30\52\106\99\94\52\106\36\94\117\106\36\158\244\107\227\223\52\106\47\158\53\107\228\95\117\106\228\159\116\104\163\31\55\106\239\159\53\107\160\94\247\107\248\30\63\234\164\159\247\107\237\94\180\239\248\30\61\234\164\95\117\106\164\31\246\104\99\95\54\106\36\159\247\107\20\95\181\105\227\156\54\106\175\95\53\104\164\95\117\106\164\223\246\104\99\223\52\106\36\159\247\107\175\95\181\107\149\31\49\106\85\95\49\106\21\223\53\106\213\28\53\106\228\156\113\110\228\220\113\110\228\220\116\110\163\28\48\106\175\95\181\104\149\31\49\106\85\95\48\106\21\223\53\106\227\156\48\106\164\220\240\107\99\28\51\106\36\156\247\107\20\220\183\106\232\220\55\110\163\92\51\106\175\95\181\104\248\30\52\234\149\31\49\106\85\95\48\106\21\223\53\106\227\156\51\106\175\95\53\104\160\94\119\104\248\222\60\234\164\159\119\104\237\94\180\239\248\222\50\234\164\95\117\106\164\31\246\104\99\95\54\106\36\159\119\104\20\159\181\105\227\156\54\106\175\95\53\104\164\95\117\106\164\223\246\104\99\31\55\106\36\159\119\104\175\95\181\107\149\31\49\106\85\95\49\106\21\223\53\106\213\28\53\106\228\156\113\110\228\220\113\110\228\220\116\110\163\28\55\106\175\95\181\104\149\31\49\106\85\95\48\106\21\223\53\106\227\156\48\106\164\220\112\104\99\28\51\106\36\156\119\104\20\220\55\107\232\220\55\110\175\95\53\104\248\30\52\234\149\31\49\106\85\95\48\106\21\223\53\106\227\156\51\106\175\95\53\104\254\30\181\106\0\0\0\0\0\1\164\117\55\1\0\0\0\0\136\53\21\33\4\0\0\0\222\53\21\33\15\53\21\33\215\117\21\33\6\53\149\93\0\0\0\0")