var gapi=window.gapi=window.gapi||{};gapi._bs=new Date().getTime();(function(){var aa=encodeURIComponent,m=window,ba=Object,r=document,s=String,t=decodeURIComponent;function ca(a,b){return a.type=b}
var da="appendChild",u="push",v="test",ea="shift",fa="exec",ga="width",x="replace",ha="getElementById",y="concat",ia="JSON",z="indexOf",ja="nodeName",A="match",ka="readyState",B="createElement",C="setAttribute",la="getTime",ma="getElementsByTagName",na="substr",E="length",oa="prototype",F="split",G="location",H="style",pa="removeChild",qa="call",I="getAttribute",J="charCodeAt",K="href",ra="substring",sa="action",L="apply",ta="attributes",M="parentNode",ua="update",va="height",N="join",O="toLowerCase";var P=m,Q=r,wa=P[G],xa=function(){},ya=/\[native code\]/,R=function(a,b,c){return a[b]=a[b]||c},za=function(a){for(var b=0;b<this[E];b++)if(this[b]===a)return b;return-1},Aa=function(a){a=a.sort();for(var b=[],c=void 0,d=0;d<a[E];d++){var e=a[d];e!=c&&b[u](e);c=e}return b},Ba=/&/g,Ca=/</g,Da=/>/g,Ea=/"/g,Fa=/'/g,Ga=function(a){return s(a)[x](Ba,"&amp;")[x](Ca,"&lt;")[x](Da,"&gt;")[x](Ea,"&quot;")[x](Fa,"&#39;")},S=function(){var a;if((a=ba.create)&&ya[v](a))a=a(null);else{a={};for(var b in a)a[b]=
void 0}return a},T=function(a,b){return ba[oa].hasOwnProperty[qa](a,b)},Ha=function(a){if(ya[v](ba.keys))return ba.keys(a);var b=[],c;for(c in a)T(a,c)&&b[u](c);return b},V=function(a,b){a=a||{};for(var c in a)T(a,c)&&(b[c]=a[c])},Ia=function(a){return function(){P.setTimeout(a,0)}},Ja=function(a,b){if(!a)throw Error(b||"");},W=R(P,"gapi",{});var X=function(a,b,c){var d=RegExp("([#].*&|[#])"+b+"=([^&#]*)","g");b=RegExp("([?#].*&|[?#])"+b+"=([^&#]*)","g");if(a=a&&(d[fa](a)||b[fa](a)))try{c=t(a[2])}catch(e){}return c},Ka=/^([^?#]*)(\?([^#]*))?(\#(.*))?$/,La=function(a){a=a[A](Ka);var b=S();b.t=a[1];b.c=a[3]?[a[3]]:[];b.i=a[5]?[a[5]]:[];return b},Ma=function(a){return a.t+(0<a.c[E]?"?"+a.c[N]("&"):"")+(0<a.i[E]?"#"+a.i[N]("&"):"")},Na=function(a,b){var c=[];if(a)for(var d in a)if(T(a,d)&&null!=a[d]){var e=b?b(a[d]):a[d];c[u](aa(d)+"="+aa(e))}return c},
Oa=function(a,b,c,d){a=La(a);a.c[u][L](a.c,Na(b,d));a.i[u][L](a.i,Na(c,d));return Ma(a)},Pa=function(a,b){var c="";2E3<b[E]&&(c=b[ra](2E3),b=b[ra](0,2E3));var d=a[B]("div"),e=a[B]("a");e.href=b;d[da](e);d.innerHTML=d.innerHTML;b=s(d.firstChild[K]);d[M]&&d[M][pa](d);return b+c},Qa=/^https?:\/\/[^\/%\\?#\s]+\/[^\s]*$/i;var Ra=function(a,b,c,d){if(P[c+"EventListener"])P[c+"EventListener"](a,b,!1);else if(P[d+"tachEvent"])P[d+"tachEvent"]("on"+a,b)},Ua=function(a){var b=Sa;if("complete"!==Q[ka])try{b()}catch(c){}Ta(a)},Ta=function(a){if("complete"===Q[ka])a();else{var b=!1,c=function(){if(!b)return b=!0,a[L](this,arguments)};P.addEventListener?(P.addEventListener("load",c,!1),P.addEventListener("DOMContentLoaded",c,!1)):P.attachEvent&&(P.attachEvent("onreadystatechange",function(){"complete"===Q[ka]&&c[L](this,arguments)}),
P.attachEvent("onload",c))}},Va=function(a){for(;a.firstChild;)a[pa](a.firstChild)},Wa={button:!0,div:!0,span:!0};var Y;Y=R(P,"___jsl",S());R(Y,"I",0);R(Y,"hel",10);var Xa=function(a){return Y.dpo?Y.h:X(a,"jsh",Y.h)},Ya=function(a){var b=R(Y,"sws",[]);b[u][L](b,a)},$a=function(a){var b=R(Y,"PQ",[]);Y.PQ=[];var c=b[E];if(0===c)a();else for(var d=0,e=function(){++d===c&&a()},f=0;f<c;f++)b[f](e)},ab=function(a){return R(R(Y,"H",S()),a,S())};var bb=R(Y,"perf",S()),cb=R(bb,"g",S()),db=R(bb,"i",S());R(bb,"r",[]);S();S();var eb=function(a,b,c){var d=bb.r;"function"===typeof d?d(a,b,c):d[u]([a,b,c])},fb=function(a,b,c){cb[a]=!b&&cb[a]||c||(new Date)[la]();eb(a)},hb=function(a,b,c){b&&0<b[E]&&(b=gb(b),c&&0<c[E]&&(b+="___"+gb(c)),28<b[E]&&(b=b[na](0,28)+(b[E]-28)),c=b,b=R(db,"_p",S()),R(b,c,S())[a]=(new Date)[la](),eb(a,"_p",c))},gb=function(a){return a[N]("__")[x](/\./g,"_")[x](/\-/g,"_")[x](/\,/g,"_")};var ib=S(),jb=[],Z=function(a){throw Error("Bad hint"+(a?": "+a:""));};jb[u](["jsl",function(a){for(var b in a)if(T(a,b)){var c=a[b];"object"==typeof c?Y[b]=R(Y,b,[])[y](c):R(Y,b,c)}if(b=a.u)a=R(Y,"us",[]),a[u](b),(b=/^https:(.*)$/[fa](b))&&a[u]("http:"+b[1])}]);var kb=/^(\/[a-zA-Z0-9_\-]+)+$/,lb=/^[a-zA-Z0-9\-_\.!]+$/,mb=/^gapi\.loaded_[0-9]+$/,nb=/^[a-zA-Z0-9,._-]+$/,rb=function(a,b,c,d){var e=a[F](";"),f=ib[e[ea]()],g=null;f&&(g=f(e,b,c,d));if(b=g)b=g,c=b[A](ob),d=b[A](pb),b=!!d&&1===d[E]&&qb[v](b)&&!!c&&1===c[E];b||Z(a);return g},ub=function(a,b,c,d){a=sb(a);mb[v](c)||Z("invalid_callback");b=tb(b);d=d&&d[E]?tb(d):null;var e=function(a){return aa(a)[x](/%2C/g,",")};return[aa(a.v)[x](/%2C/g,",")[x](/%2F/g,"/"),"/k=",e(a.version),"/m=",e(b),d?"/exm="+e(d):
"","/rt=j/sv=1/d=1/ed=1",a.n?"/am="+e(a.n):"",a.o?"/rs="+e(a.o):"","/cb=",e(c)][N]("")},sb=function(a){"/"!==a.charAt(0)&&Z("relative path");for(var b=a[ra](1)[F]("/"),c=[];b[E];){a=b[ea]();if(!a[E]||0==a[z]("."))Z("empty/relative directory");else if(0<a[z]("=")){b.unshift(a);break}c[u](a)}a={};for(var d=0,e=b[E];d<e;++d){var f=b[d][F]("="),g=t(f[0]),k=t(f[1]);2==f[E]&&(g&&k)&&(a[g]=a[g]||k)}b="/"+c[N]("/");kb[v](b)||Z("invalid_prefix");c=vb(a,"k",!0);d=vb(a,"am");a=vb(a,"rs");return{v:b,version:c,
n:d,o:a}},tb=function(a){for(var b=[],c=0,d=a[E];c<d;++c){var e=a[c][x](/\./g,"_")[x](/-/g,"_");nb[v](e)&&b[u](e)}return b[N](",")},vb=function(a,b,c){a=a[b];!a&&c&&Z("missing: "+b);if(a){if(lb[v](a))return a;Z("invalid: "+b)}return null},qb=/^https?:\/\/[a-z0-9_.-]+\.google\.com(:\d+)?\/[a-zA-Z0-9_.,!=\-\/]+$/,pb=/\/cb=/g,ob=/\/\//g,wb=function(){var a=Xa(wa[K]);if(!a)throw Error("Bad hint");return a};ib.m=function(a,b,c,d){(a=a[0])||Z("missing_hint");return"https://apis.google.com"+ub(a,b,c,d)};var xb=decodeURI("%73cript"),yb=function(a,b){for(var c=[],d=0;d<a[E];++d){var e=a[d];e&&0>za[qa](b,e)&&c[u](e)}return c},Ab=function(a){"loading"!=Q[ka]?zb(a):Q.write("<"+xb+' src="'+encodeURI(a)+'"></'+xb+">")},zb=function(a){var b=Q[B](xb);b[C]("src",a);b.async="true";(a=Q[ma](xb)[0])?a[M].insertBefore(b,a):(Q.head||Q.body||Q.documentElement)[da](b)},Bb=function(a,b){var c=b&&b._c;if(c)for(var d=0;d<jb[E];d++){var e=jb[d][0],f=jb[d][1];f&&T(c,e)&&f(c[e],a,b)}},Db=function(a,b){Cb(function(){var c;
c=b===Xa(wa[K])?R(W,"_",S()):S();c=R(ab(b),"_",c);a(c)})},Fb=function(a,b){var c=b||{};"function"==typeof b&&(c={},c.callback=b);Bb(a,c);var d=a?a[F](":"):[],e=c.h||wb(),f=R(Y,"ah",S());if(f["::"]&&d[E]){for(var g=[],k=null;k=d[ea]();){var n=k[F]("."),n=f[k]||f[n[1]&&"ns:"+n[0]||""]||e,h=g[E]&&g[g[E]-1]||null,l=h;h&&h.hint==n||(l={hint:n,p:[]},g[u](l));l.p[u](k)}var p=g[E];if(1<p){var w=c.callback;w&&(c.callback=function(){0==--p&&w()})}for(;d=g[ea]();)Eb(d.p,c,d.hint)}else Eb(d||[],c,e)},Eb=function(a,
b,c){a=Aa(a)||[];var d=b.callback,e=b.config,f=b.timeout,g=b.ontimeout,k=null,n=!1;if(f&&!g||!f&&g)throw"Timeout requires both the timeout parameter and ontimeout parameter to be set";var h=R(ab(c),"r",[]).sort(),l=R(ab(c),"L",[]).sort(),p=[][y](h),w=function(a,b){if(n)return 0;P.clearTimeout(k);l[u][L](l,q);var d=((W||{}).config||{})[ua];d?d(e):e&&R(Y,"cu",[])[u](e);if(b){hb("me0",a,p);try{Db(b,c)}finally{hb("me1",a,p)}}return 1};0<f&&(k=P.setTimeout(function(){n=!0;g()},f));var q=yb(a,l);if(q[E]){var q=
yb(a,h),D=R(Y,"CP",[]),U=D[E];D[U]=function(a){if(!a)return 0;hb("ml1",q,p);var b=function(b){D[U]=null;w(q,a)&&$a(function(){d&&d();b()})},c=function(){var a=D[U+1];a&&a()};0<U&&D[U-1]?D[U]=function(){b(c)}:b(c)};if(q[E]){var Za="loaded_"+Y.I++;W[Za]=function(a){D[U](a);W[Za]=null};a=rb(c,q,"gapi."+Za,h);h[u][L](h,q);hb("ml0",q,p);b.sync||P.___gapisync?Ab(a):zb(a)}else D[U](xa)}else w(q)&&d&&d()};var Cb=function(a){if(Y.hee&&0<Y.hel)try{return a()}catch(b){Y.hel--,Fb("debug_error",function(){m.___jsl.hefn(b)})}else return a()};W.load=function(a,b){return Cb(function(){return Fb(a,b)})};var Gb=function(a){var b=m.___jsl=m.___jsl||{};b[a]=b[a]||[];return b[a]},Hb=function(a){var b=m.___jsl=m.___jsl||{};b.cfg=!a&&b.cfg||{};return b.cfg},Ib=function(a){return"object"===typeof a&&/\[native code\]/[v](a[u])},Jb=function(a,b){if(b)for(var c in b)b.hasOwnProperty(c)&&(a[c]&&b[c]&&"object"===typeof a[c]&&"object"===typeof b[c]&&!Ib(a[c])&&!Ib(b[c])?Jb(a[c],b[c]):b[c]&&"object"===typeof b[c]?(a[c]=Ib(b[c])?[]:{},Jb(a[c],b[c])):a[c]=b[c])},Kb=function(a){if(a&&!/^\s+$/[v](a)){for(;0==a[J](a[E]-
1);)a=a[ra](0,a[E]-1);var b;try{b=m[ia].parse(a)}catch(c){}if("object"===typeof b)return b;try{b=(new Function("return ("+a+"\n)"))()}catch(d){}if("object"===typeof b)return b;try{b=(new Function("return ({"+a+"\n})"))()}catch(e){}return"object"===typeof b?b:{}}},$=function(a){if(!a)return Hb();a=a[F]("/");for(var b=Hb(),c=0,d=a[E];b&&"object"===typeof b&&c<d;++c)b=b[a[c]];return c===a[E]&&void 0!==b?b:void 0},Lb=function(){Hb(!0);var a=m.___gcfg,b=Gb("cu");if(a&&a!==m.___gu){var c={};Jb(c,a);b[u](c);
m.___gu=a}var a=Gb("cu"),d=r.scripts||r[ma]("script")||[],c=[],e=[];e[u][L](e,Gb("us"));for(var f=0;f<d[E];++f)for(var g=d[f],k=0;k<e[E];++k)g.src&&0==g.src[z](e[k])&&c[u](g);0==c[E]&&(0<d[E]&&d[d[E]-1].src)&&c[u](d[d[E]-1]);for(d=0;d<c[E];++d)c[d][I]("gapi_processed")||(c[d][C]("gapi_processed",!0),(e=c[d])?(f=e.nodeType,e=3==f||4==f?e.nodeValue:e.textContent||e.innerText||e.innerHTML||""):e=void 0,(e=Kb(e))&&a[u](e));d=Gb("cd");a=0;for(c=d[E];a<c;++a)Jb(Hb(),d[a]);d=Gb("ci");a=0;for(c=d[E];a<c;++a)Jb(Hb(),
d[a]);a=0;for(c=b[E];a<c;++a)Jb(Hb(),b[a])};var Mb=function(){var a=m.__GOOGLEAPIS;a&&(a.googleapis&&!a["googleapis.config"]&&(a["googleapis.config"]=a.googleapis),R(Y,"ci",[])[u](a),m.__GOOGLEAPIS=void 0)};var Nb=m.console,Ob=function(a){Nb&&Nb.log&&Nb.log(a)};var Pb=R(Y,"rw",S()),Qb=function(a,b){var c=Pb[a];c&&c.state<b&&(c.state=b)};var Rb=function(a){var b;a[A](/^https?%3A/i)&&(b=t(a));return Pa(r,b?b:a)},Sb=function(a){a=a||"canonical";for(var b=r[ma]("link"),c=0,d=b[E];c<d;c++){var e=b[c],f=e[I]("rel");if(f&&f[O]()==a&&(e=e[I]("href"))&&(e=Rb(e))&&null!=e[A](/^https?:\/\/[\w\-\_\.]+/i))return e}return m[G][K]};var Tb;var Ub=/^https?:\/\/(\w|[\-\.])+\.google\.(\w|[\-:\.])+(\/[^\?\#]*)?\/u\/(\d)\//,Vb=function(a){var b=$("googleapis.config/sessionIndex");null==b&&(b=m.__X_GOOG_AUTHUSER);if(null==b){var c=m.google;c&&(b=c.authuser)}null==b&&(null==a&&(a=m[G][K]),a&&(b=X(a,"authuser")||null,null==b&&(b=(b=a[A](Ub))?b[4]:null)));return null==b?null:s(b)},Wb=function(){var a=$("googleapis.config/sessionDelegate");return null==a?null:s(a)};var Xb=function(){};var Yb=function(){this.b=[];this.j=[];this.q=[];this.g=[];this.g[0]=128;for(var a=1;64>a;++a)this.g[a]=0;this.reset()};(function(){function a(){}a.prototype=Xb[oa];Yb.w=Xb[oa];Yb.prototype=new a})();Yb[oa].reset=function(){this.b[0]=1732584193;this.b[1]=4023233417;this.b[2]=2562383102;this.b[3]=271733878;this.b[4]=3285377520;this.k=this.d=0};
var Zb=function(a,b,c){c||(c=0);var d=a.q;if("string"==typeof b)for(var e=0;16>e;e++)d[e]=b[J](c)<<24|b[J](c+1)<<16|b[J](c+2)<<8|b[J](c+3),c+=4;else for(e=0;16>e;e++)d[e]=b[c]<<24|b[c+1]<<16|b[c+2]<<8|b[c+3],c+=4;for(e=16;80>e;e++){var f=d[e-3]^d[e-8]^d[e-14]^d[e-16];d[e]=(f<<1|f>>>31)&4294967295}b=a.b[0];c=a.b[1];for(var g=a.b[2],k=a.b[3],n=a.b[4],h,e=0;80>e;e++)40>e?20>e?(f=k^c&(g^k),h=1518500249):(f=c^g^k,h=1859775393):60>e?(f=c&g|k&(c|g),h=2400959708):(f=c^g^k,h=3395469782),f=(b<<5|b>>>27)+f+
n+h+d[e]&4294967295,n=k,k=g,g=(c<<30|c>>>2)&4294967295,c=b,b=f;a.b[0]=a.b[0]+b&4294967295;a.b[1]=a.b[1]+c&4294967295;a.b[2]=a.b[2]+g&4294967295;a.b[3]=a.b[3]+k&4294967295;a.b[4]=a.b[4]+n&4294967295};Yb[oa].update=function(a,b){void 0===b&&(b=a[E]);for(var c=b-64,d=0,e=this.j,f=this.d;d<b;){if(0==f)for(;d<=c;)Zb(this,a,d),d+=64;if("string"==typeof a)for(;d<b;){if(e[f]=a[J](d),++f,++d,64==f){Zb(this,e);f=0;break}}else for(;d<b;)if(e[f]=a[d],++f,++d,64==f){Zb(this,e);f=0;break}}this.d=f;this.k+=b};var $b=function(){this.l=new Yb};$b[oa].reset=function(){this.l.reset()};var gc=function(){var a;ac?(a=new P.Uint32Array(1),bc.getRandomValues(a),a=Number("0."+a[0])):(a=cc,a+=parseInt(dc[na](0,20),16),dc=ec(dc),a/=fc+Math.pow(16,20));return a},bc=P.crypto,ac=!1,hc=0,ic=0,cc=1,fc=0,dc="",jc=function(a){a=a||P.event;var b=a.screenX+a.clientX<<16,b=b+(a.screenY+a.clientY),b=b*((new Date)[la]()%1E6);cc=cc*b%fc;0<hc&&++ic==hc&&Ra("mousemove",jc,"remove","de")},ec=function(a){var b=new $b;a=unescape(aa(a));for(var c=[],d=0,e=a[E];d<e;++d)c[u](a[J](d));b.l[ua](c);a=b.l;b=[];
d=8*a.k;56>a.d?a[ua](a.g,56-a.d):a[ua](a.g,64-(a.d-56));for(c=63;56<=c;c--)a.j[c]=d&255,d/=256;Zb(a,a.j);for(c=d=0;5>c;c++)for(e=24;0<=e;e-=8)b[d]=a.b[c]>>e&255,++d;a="";for(c=0;c<b[E];c++)a+="0123456789ABCDEF".charAt(Math.floor(b[c]/16))+"0123456789ABCDEF".charAt(b[c]%16);return a},ac=!!bc&&"function"==typeof bc.getRandomValues;
ac||(fc=1E6*(screen[ga]*screen[ga]+screen[va]),dc=ec(Q.cookie+"|"+Q[G]+"|"+(new Date)[la]()+"|"+Math.random()),hc=$("random/maxObserveMousemove")||0,0!=hc&&Ra("mousemove",jc,"add","at"));var kc=function(){var a=Y.onl;if(!a){a=S();Y.onl=a;var b=S();a.e=function(a){var d=b[a];d&&(delete b[a],d())};a.a=function(a,d){b[a]=d};a.r=function(a){delete b[a]}}return a},lc=function(a,b){var c=b.onload;return"function"===typeof c?(kc().a(a,c),c):null},mc=function(a){Ja(/^\w+$/[v](a),"Unsupported id - "+a);kc();return'onload="window.___jsl.onl.e(&#34;'+a+'&#34;)"'},nc=function(a){kc().r(a)};var oc={allowtransparency:"true",frameborder:"0",hspace:"0",marginheight:"0",marginwidth:"0",scrolling:"no",style:"",tabindex:"0",vspace:"0",width:"100%"},pc={allowtransparency:!0,onload:!0},qc=0,rc=function(a){Ja(!a||Qa[v](a),"Illegal url for new iframe - "+a)},sc=function(a,b,c,d,e){rc(c.src);var f,g=lc(d,c),k=g?mc(d):"";try{f=a[B]('<iframe frameborder="'+Ga(s(c.frameborder))+'" scrolling="'+Ga(s(c.scrolling))+'" '+k+' name="'+Ga(s(c.name))+'"/>')}catch(n){f=a[B]("iframe"),g&&(f.onload=function(){f.onload=
null;g[qa](this)},nc(d))}for(var h in c)a=c[h],"style"===h&&"object"===typeof a?V(a,f[H]):pc[h]||f[C](h,s(a));(h=e&&e.beforeNode||null)||e&&e.dontclear||Va(b);b.insertBefore(f,h);f=h?h.previousSibling:b.lastChild;c.allowtransparency&&(f.allowTransparency=!0);return f};var tc=/^:[\w]+$/,uc=/:([a-zA-Z_]+):/g,vc=function(a,b){if(!Tb){var c=Vb(),d=Wb(),e;e=Vb(void 0);var f=Wb(),g="";e&&(g+="u/"+e+"/");f&&(g+="b/"+f+"/");e=g||null;(f=!1===$("googleapis.config/signedIn")?"_/im/":"")&&(e="");Tb={socialhost:$("iframes/:socialhost:"),session_index:c||"0",session_delegate:d,session_prefix:e,im_prefix:f}}return Tb[b]||""};var wc={style:"position:absolute;top:-10000px;width:450px;margin:0px;borderStyle:none"},xc="onPlusOne _ready _close,_open _resizeMe _renderstart oncircled".split(" "),yc=R(Y,"WI",S()),zc=["style","data-gapiscan"],Bc=function(a){for(var b=S(),c=0!=a[ja][O]()[z]("g:"),d=0,e=a[ta][E];d<e;d++){var f=a[ta][d],g=f.name,k=f.value;0<=za[qa](zc,g)||(c&&0!=g[z]("data-")||"null"===k||"specified"in f&&!f.specified)||(c&&(g=g[na](5)),b[g[O]()]=k)}a=a[H];(c=Ac(a&&a[va]))&&(b.height=s(c));(a=Ac(a&&a[ga]))&&(b.width=
s(a));return b},Ac=function(a){var b=void 0;"number"===typeof a?b=a:"string"===typeof a&&(b=parseInt(a,10));return b},Cc=function(){};var Dc,Ec,Fc,Gc,Hc,Ic=/(?:^|\s)g-((\S)*)(?:$|\s)/;Dc=R(Y,"SW",S());Ec=R(Y,"SA",S());Fc=R(Y,"SM",S());Gc=R(Y,"FW",[]);Hc=null;
var Kc=function(a,b){Jc(void 0,!1,a,b)},Jc=function(a,b,c,d){fb("ps0",!0);c=("string"===typeof c?r[ha](c):c)||Q;var e;e=Q.documentMode;if(c.querySelectorAll&&(!e||8<e)){e=d?[d]:Ha(Dc)[y](Ha(Ec))[y](Ha(Fc));for(var f=[],g=0;g<e[E];g++){var k=e[g];f[u](".g-"+k,"g\\:"+k)}e=c.querySelectorAll(f[N](","))}else e=c[ma]("*");c=S();for(f=0;f<e[E];f++){g=e[f];var n=g,k=d,h=n[ja][O](),l=void 0;n[I]("data-gapiscan")?k=null:(0==h[z]("g:")?l=h[na](2):(n=(n=s(n.className||n[I]("class")))&&Ic[fa](n))&&(l=n[1]),k=
!l||!(Dc[l]||Ec[l]||Fc[l])||k&&l!==k?null:l);!k||"plusone"!==k&&"identity"!==k&&0!=g[ja][O]()[z]("g:")&&0==Ha(Bc(g))[E]||(g[C]("data-gapiscan",!0),R(c,k,[])[u](g))}if(b)for(var p in c)for(b=c[p],d=0;d<b[E];d++)b[d][C]("data-onload",!0);for(var w in c)Gc[u](w);fb("ps1",!0);if((p=Gc[N](":"))||a)try{W.load(p,a)}catch(q){Ob(q);return}if(Lc(Hc||{}))for(var D in c){a=c[D];w=0;for(b=a[E];w<b;w++)a[w].removeAttribute("data-gapiscan");Mc(D)}else{d=[];for(D in c)for(a=c[D],w=0,b=a[E];w<b;w++)e=a[w],Nc(D,e,
Bc(e),d,b);Oc(p,d)}},Pc=function(a){var b=R(W,a,{});b.go||(b.go=function(b){return Kc(b,a)},b.render=function(b,d){var e=d||{};ca(e,a);var f=e.type;delete e.type;var g=("string"===typeof b?r[ha](b):b)||void 0;if(g){var k={},n;for(n in e)T(e,n)&&(k[n[O]()]=e[n]);k.rd=1;e=[];Nc(f,g,k,e,0);Oc(f,e)}else Ob("string"==="gapi."+f+".render: missing element "+typeof b?b:"")})},Qc=function(a){Dc[a]=!0},Rc=function(a){Ec[a]=!0},Sc=function(a){Fc[a]=!0};var Mc=function(a,b){var c=R(Y,"watt",S())[a];b&&c?(c(b),(c=b.iframeNode)&&c[C]("data-gapiattached",!0)):W.load(a,function(){var c=R(Y,"watt",S())[a],e=b&&b.iframeNode;e&&c?(c(b),e[C]("data-gapiattached",!0)):(0,W[a].go)(e&&e[M])})},Lc=function(){return!1},Oc=function(){},Nc=function(a,b,c,d,e){switch(Tc(b,a)){case 0:a=Fc[a]?a+"_annotation":a;d={};d.iframeNode=b;d.userParams=c;Mc(a,d);break;case 1:var f;if(b[M]){var g=!0;c.dontclear&&(g=!1);delete c.dontclear;var k,n,h;n=h=a;"plus"==a&&c[sa]&&(h=
a+"_"+c[sa],n=a+"/"+c[sa]);(h=$("iframes/"+h+"/url"))||(h=":socialhost:/_/widget/render/"+n);n=Pa(Q,h[x](uc,vc));h={};V(c,h);h.hl=$("lang")||$("gwidget/lang")||"en-US";h.origin=m[G].origin||m[G].protocol+"//"+m[G].host;h.exp=$("iframes/"+a+"/params/exp");var l=$("iframes/"+a+"/params/location");if(l)for(var p=0;p<l[E];p++){var w=l[p];h[w]=P[G][w]}switch(a){case "plus":case "follow":l=h[K];p=c[sa]?void 0:"publisher";l=(l="string"==typeof l?l:void 0)?Rb(l):Sb(p);h.url=l;delete h[K];break;case "plusone":case "recobox":h.url=
c[K]?Rb(c[K]):Sb();l=c.db;p=$();null==l&&p&&(l=p.db,null==l&&(l=p.gwidget&&p.gwidget.db));h.db=l||void 0;l=c.ecp;p=$();null==l&&p&&(l=p.ecp,null==l&&(l=p.gwidget&&p.gwidget.ecp));h.ecp=l||void 0;delete h[K];break;case "signin":h.url=Sb()}Y.ILI&&(h.iloader="1");delete h["data-onload"];delete h.rd;h.gsrc=$("iframes/:source:");l=$("inline/css");"undefined"!==typeof l&&(0<e&&l>=e)&&(h.ic="1");l=/^#|^fr-/;e={};for(k in h)T(h,k)&&l[v](k)&&(e[k[x](l,"")]=h[k],delete h[k]);k=[][y](xc);(l=$("iframes/"+a+"/methods"))&&
("object"===typeof l&&ya[v](l[u]))&&(k=k[y](l));for(var q in c)T(c,q)&&(/^on/[v](q)&&("plus"!=a||"onconnect"!=q))&&(k[u](q),delete h[q]);delete h.callback;e._methods=k[N](",");k=Oa(n,h,e);q={allowPost:1,attributes:wc};q.dontclear=!g;g={};g.userParams=c;g.url=k;ca(g,a);c.rd?h=b:(h=r[B]("div"),b[C]("data-gapistub",!0),h[H].cssText="position:absolute;width:450px;left:-10000px;",b[M].insertBefore(h,b));g.siteElement=h;h.id||(b=h,R(yc,a,0),n="___"+a+"_"+yc[a]++,b.id=n);b=S();b[">type"]=a;V(c,b);n=k;c=
h;k=q||{};b=k[ta]||{};Ja(!k.allowPost||!b.onload,"onload is not supported by post iframe");q=b=n;tc[v](b)&&(q=$("iframes/"+q[ra](1)+"/url"),Ja(!!q,"Unknown iframe url config for - "+b));n=Pa(Q,q[x](uc,vc));b=c.ownerDocument||Q;h=0;do q=k.id||["I",qc++,"_",(new Date)[la]()][N]("");while(b[ha](q)&&5>++h);Ja(5>h,"Error creating iframe id");h={};e={};V(k.queryParams||{},h);V(k.fragmentParams||{},e);l=S();l.id=q;l.parent=b[G].protocol+"//"+b[G].host;p=X(b[G][K],"id","");w=X(b[G][K],"pfname","");(p=p?w+
"/"+p:"")&&(l.pfname=p);V(l,e);(l=X(n,"rpctoken")||h.rpctoken||e.rpctoken)||(l=e.rpctoken=k.rpctoken||s(Math.round(1E8*gc())));k.rpctoken=l;p=b[G][K];l=S();(w=X(p,"_bsh",Y.bsh))&&(l._bsh=w);(p=Xa(p))&&(l.jsh=p);k.hintInFragment?V(l,e):V(l,h);n=Oa(n,h,e,k.paramsSerializer);e=S();V(oc,e);V(k[ta],e);e.name=e.id=q;e.src=n;k.eurl=n;if((k||{}).allowPost&&2E3<n[E]){h=La(n);e.src="";e["data-postorigin"]=n;n=sc(b,c,e,q);-1!=navigator.userAgent[z]("WebKit")&&(f=n.contentWindow.document,f.open(),e=f[B]("div"),
l={},p=q+"_inner",l.name=p,l.src="",l.style="display:none",sc(b,e,l,p,k));e=(k=h.c[0])?k[F]("&"):[];k=[];for(l=0;l<e[E];l++)p=e[l][F]("=",2),k[u]([t(p[0]),t(p[1])]);h.c=[];e=Ma(h);h=b[B]("form");h.action=e;h.method="POST";h.target=q;h[H].display="none";for(q=0;q<k[E];q++)e=b[B]("input"),ca(e,"hidden"),e.name=k[q][0],e.value=k[q][1],h[da](e);c[da](h);h.submit();h[M][pa](h);f&&f.close();f=n}else f=sc(b,c,e,q,k);g.iframeNode=f;g.id=f[I]("id");f=g.id;c=S();c.id=f;c.userParams=g.userParams;c.url=g.url;
ca(c,g.type);c.state=1;Pb[f]=c;f=g}else f=null;f&&((g=f.id)&&d[u](g),Mc(a,f))}},Tc=function(a,b){if(a&&1===a.nodeType&&b)if(Fc[b]){if(Wa[a[ja][O]()]){var c=a.innerHTML;return c&&c[x](/^[\s\xa0]+|[\s\xa0]+$/g,"")?0:1}}else{if(Ec[b])return 0;if(Dc[b])return 1}return null};R(W,"platform",{}).go=Kc;var Lc=function(a){for(var b=["_c","jsl","h"],c=0;c<b[E]&&a;c++)a=a[b[c]];b=Xa(wa[K]);return!a||0!=a[z]("n;")&&0!=b[z]("n;")&&a!==b},Oc=function(a,b){Uc(a,b)},Sa=function(a){Jc(a,!0)},Vc=function(a,b){for(var c=b||[],d=0;d<c[E];++d)a(c[d]);for(d=0;d<c[E];d++)Pc(c[d])};jb[u](["platform",function(a,b,c){Hc=c;b&&Gc[u](b);Vc(Qc,a);Vc(Rc,c._c.annotation);Vc(Sc,c._c.bimodal);Mb();Lb();if("explicit"!=$("parsetags")){Ya(a);var d;c&&(a=c.callback)&&(d=Ia(a),delete c.callback);Ua(function(){Sa(d)})}}]);var Wc=function(a){a=(a=Pb[a])?a.oid:void 0;if(a){var b=Q[ha](a);b&&b[M][pa](b);delete Pb[a];Wc(a)}},Cc=function(a,b,c){if(c[ga]&&c[va]){n:{c=c||{};var d=Y.ssfn;if(d&&d(void 0)){if("number"===typeof Y.ucs)break n;var e=b.id;if(e){d=(d=Pb[e])?d.state:void 0;if(1===d||4===d)break n;Wc(e)}}(d=a.nextSibling)&&(d[I]&&d[I]("data-gapistub"))&&(a[M][pa](d),a[H].cssText="");var d=c[ga],f=c[va],g=a[H];g.textIndent="0";g.margin="0";g.padding="0";g.background="transparent";g.borderStyle="none";g.cssFloat="none";
g.styleFloat="none";g.lineHeight="normal";g.fontSize="1px";g.verticalAlign="baseline";a=a[H];a.display="inline-block";g=b[H];g.position="static";g.left=0;g.top=0;g.visibility="visible";d&&(a.width=g.width=d+"px");f&&(a.height=g.height=f+"px");c.verticalAlign&&(a.verticalAlign=c.verticalAlign);e&&Qb(e,3)}b["data-csi-wdt"]=(new Date)[la]()}};var Xc=/^\{h\:'/,Yc=/^!_/,Zc="",Uc=function(a,b){function c(){Ra("message",d,"remove","de")}function d(d){var g=d.data,k=d.origin;if($c(g,b)){var n=e;e=!1;n&&fb("rqe");ad(a,function(){n&&fb("rqd");c();for(var a=R(Y,"RPMQ",[]),b=0;b<a[E];b++)a[b]({data:g,origin:k})})}}if(0!==b[E]&&m[ia]&&m[ia].parse){Zc=X(wa[K],"pfname","");var e=!0;Ra("message",d,"add","at");Fb(a,c)}},$c=function(a,b){a=s(a);if(Xc[v](a))return!0;var c=!1;Yc[v](a)&&(c=!0,a=a[na](2));if(!/^\{/[v](a))return!1;try{var d=m[ia].parse(a)}catch(e){return!1}if(!d)return!1;
var f=d.f;if(d.s&&f&&-1!=za[qa](b,f)){if("_renderstart"===d.s||d.s===Zc+"/"+f+"::_renderstart")c=d.a&&d.a[c?0:1],d=Q[ha](f),Qb(f,2),(f=Pb[f])&&(f.args=c),c&&d&&Cc(d[M],d,c);return!0}return!1},ad=function(a,b){Fb(a,b)};fb("bs0",!0,m.gapi._bs);fb("bs1",!0);delete m.gapi._bs;})();
gapi.load("plusone",{callback:window["gapi_onload"],_c:{"jsl":{"ci":{"client":{"cors":false},"plus_layer":{"isEnabled":false},"isLoggedIn":false,"iframes":{"additnow":{"methods":["launchurl"],"url":"https://apis.google.com/additnow/additnow.html?bsv"},"shortlists":{"url":"?bsv"},"plus":{"methods":["onauth"],"url":":socialhost:/u/:session_index:/_/pages/badge?bsv"},":socialhost:":"https://apis.google.com","rbr_s":{"params":{"url":""},"url":":socialhost:/:session_prefix:_/widget/render/recobarsimplescroller?bsv"},"plus_followers":{"params":{"url":""},"url":":socialhost:/_/im/_/widget/render/plus/followers?bsv"},"autocomplete":{"params":{"url":""},"url":":socialhost:/:session_prefix:_/widget/render/autocomplete?bsv"},"plus_share":{"params":{"url":""},"url":":socialhost:/:session_prefix:_/+1/sharebutton?plusShare\u003dtrue\u0026bsv"},"savetowallet":{"url":"https://clients5.google.com/s2w/o/savetowallet?bsv"},"panoembed":{"url":"https://ssl.gstatic.com/pano/embed/?bsv"},"rbr_i":{"params":{"url":""},"url":":socialhost:/:session_prefix:_/widget/render/recobarinvitation?bsv"},"signin":{"methods":["onauth"],"params":{"url":""},"url":":socialhost:/:session_prefix:_/widget/render/signin?bsv"},"appcirclepicker":{"url":":socialhost:/:session_prefix:_/widget/render/appcirclepicker?bsv"},"commentcount":{"url":":socialhost:/:session_prefix:_/widget/render/commentcount?bsv"},"hangout":{"url":"https://talkgadget.google.com/:session_prefix:talkgadget/_/widget?bsv"},"plus_circle":{"params":{"url":""},"url":":socialhost:/:session_prefix:_/widget/plus/circle?bsv"},"savetodrive":{"methods":["save"],"url":"https://drive.google.com/savetodrivebutton?usegapi\u003d1\u0026bsv"},"card":{"url":":socialhost:/:session_prefix:_/hovercard/card?bsv"},"zoomableimage":{"url":"https://ssl.gstatic.com/microscope/embed/?bsv"},"evwidget":{"params":{"url":""},"url":":socialhost:/:session_prefix:_/events/widget?bsv"},":signuphost:":"https://plus.google.com","plusone":{"preloadUrl":["https://ssl.gstatic.com/s2/oz/images/stars/po/Publisher/sprite4-a67f741843ffc4220554c34bd01bb0bb.png"],"params":{"count":"","size":"","url":""},"url":":socialhost:/:session_prefix:_/+1/fastbutton?bsv"},"comments":{"methods":["scroll","openwindow"],"params":{"location":["search","hash"]},"url":":socialhost:/:session_prefix:_/widget/render/comments?bsv"},"ytsubscribe":{"url":"https://www.youtube.com/subscribe_embed?bsv\u0026usegapi\u003d1"}},"isPlusUser":false,"debug":{"host":"https://plusone.google.com","reportExceptionRate":0.05,"rethrowException":true},"deviceType":"desktop","inline":{"css":1},"lexps":[102,100,71,98,96,110,79,105,45,17,86,81,112,61,30],"oauth-flow":{"disableOpt":true,"authUrl":"https://accounts.google.com/o/oauth2/auth","proxyUrl":"https://accounts.google.com/o/oauth2/postmessageRelay","persist":true,"toastCfg":"1000:3000:1000"},"report":{"host":"https://apis.google.com","apis":["iframes\\..*","gadgets\\..*"]},"csi":{"rate":0.01},"googleapis.config":{"mobilesignupurl":"https://m.google.com/app/plus/oob?"}},"h":"m;/_/scs/apps-static/_/js/k\u003doz.gapi.ru.XZn_fe24_2M.O/m\u003d__features__/am\u003dEQ/rt\u003dj/d\u003d1/rs\u003dAItRSTOLnqP54N3S3bdprkkxQ8ys4MEd6A","u":"https://apis.google.com/js/plusone.js","hee":true,"fp":"86e04e922b0a0f40949b55be49ced5494e65f781","dpo":false},"platform":["additnow","comments","commentcount","follow","identity","panoembed","plus","plusone","savetodrive","shortlists","ytsubscribe","zoomableimage","page","person","community","savetowallet","notifications","hangout"],"fp":"86e04e922b0a0f40949b55be49ced5494e65f781","annotation":["interactivepost","recobar","autocomplete","profile"],"bimodal":["signin"]}});