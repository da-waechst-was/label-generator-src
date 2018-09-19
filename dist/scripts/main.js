(function(){var e,t,n=function(e,t){return function(){return e.apply(t,arguments)}};e=function(){function e(){}return e.colors=["bordeaux","himbeere","apricot"],e.unions={"Bezirksverband Prenzlauer Berg":["Anlage nicht dabei","Bornholm I e.V.","Bornholm II e.V"],"Bezirkverband Weißensee":["Anlage nicht dabei","KGA Heinersdorf e.V."],"Bezirksverband Pankow":["Anlage nicht dabei","Hoffnung e.V."]},e}(),t=function(){function t(e){this.container=e,this.render=n(this.render,this),this.updateIframeContent=n(this.updateIframeContent,this),this.setupForm=n(this.setupForm,this),this.setupColorChooser=n(this.setupColorChooser,this),this.updateParcel=n(this.updateParcel,this),this.updateFreeText=n(this.updateFreeText,this),this.updateName=n(this.updateName,this),this.updateKgas=n(this.updateKgas,this),this.setupUnionChooser=n(this.setupUnionChooser,this),this.background=$(".label-background",this.container),this.name=$(".name",this.container),this.from=$(".from",this.container),this.date=$(".date",this.container),this.freeLine=$(".free-line",this.container),this.freeLineInput=$("#input-free-text"),this.setupForm(),this.setupColorChooser(),this.setupUnionChooser(),this.render()}return t.facilityMissingString="Anlage nicht dabei",t.prototype.setupUnionChooser=function(){var t,n,i,r,s,o,a;r=e.unions;for(a in r)o=r[a],$("#select-union").append("<option value='"+a+"'>"+a+"</option>");for(s=e.unions["Bezirksverband Prenzlauer Berg"],t=0,i=s.length;t<i;t++)n=s[t],$("#select-kga").append("<option value='"+n+"'>"+n+"</option>");return $($("#select-kga").find("option").get(1)).attr("selected","selected")},t.prototype.updateKgas=function(){var t,n,i,r,s;for($("#select-kga").find("option").remove(),t=$("#select-union").val(),s=e.unions[t],n=0,r=s.length;n<r;n++)i=s[n],$("#select-kga").append("<option value='"+i+"'>"+i+"</option>");return $($("#select-kga").find("option").get(1)).attr("selected","selected"),this.render()},t.prototype.updateName=function(){return this.render(),this.name.textfill(30)},t.prototype.updateFreeText=function(){return this.render(),this.freeLineInput.inputmaxsize(this.freeLine,10)},t.prototype.updateParcel=function(){return $("#select-kga").val()!==t.facilityMissingString?$("#input-parcel").removeAttr("disabled").css("text-indent","0px"):$("#input-parcel").attr("disabled","disabled").css("text-indent","-100000px"),this.render()},t.prototype.setupColorChooser=function(){var t,n,i,r,s;for(n="active",s=e.colors,i=0,r=s.length;i<r;i++)t=s[i],$(".color-chooser").append("<li class='"+t+" "+n+"' data-color='"+t+"'></li> "),n="";return $(".color-chooser li").click(function(n){return function(i){return $(".color-chooser li").removeClass("active"),t=$(i.currentTarget).addClass("active").data("color"),n.background.prop("src","images/labels/"+t+".jpg"),n.container.removeClass(e.colors.join(" ")).addClass(t)}}(this))},t.prototype.setupForm=function(){var e,t,n,i,r;for(e=(new Date).getFullYear(),i=[e,e-1,e-2,e-3],t=0,n=i.length;t<n;t++)r=i[t],$("#select-year").append($("<option>",{value:r,text:r}));return $("#input-name").keyup(this.updateName),$("#input-parcel").keyup(this.render),$("#input-parcel").change(this.render),this.freeLineInput.keyup(this.updateFreeText),this.freeLineInput.change(this.updateFreeText),$("#select-kga").change(this.updateParcel),$("#select-union").change(this.updateKgas),$("#select-month").change(this.render),$("#select-year").change(this.render),$("#button-print").click(function(e){return function(){var t,n;return n=window.frames.printIframe,t=e.container.parent().html(),n.document.body.innerHTML=t+t+t+t+t+t+t+t+t+t,setTimeout(function(){return window.frames.printIframe.window.print()},200)}}(this))},t.prototype.updateIframeContent=function(){var e,t;if(t=window.frames.printIframe)return e=this.container.parent().html(),t.document.body.innerHTML=e+e+e+e+e+e+e+e+e+e},t.prototype.render=function(){var e,n,i,r,s;return this.name.html("<span>"+$("#input-name").val()+"</span>"),e="vom "+$("#select-month").val()+" "+$("#select-year").val(),this.date.text(e),r=$("#input-parcel").val(),i=$("#select-kga").val(),s=$("#select-union").val(),i===t.facilityMissingString?n="<div class='union single'>Aus dem "+s+"</div>":(n="<div class='union'>Aus dem "+s+"</div>",r&&(r="Parzelle "+r),n+=[r,i].filter(function(e){return e}).join(" - ")),this.from.html(n),this.freeLine.html("<span>"+$("#input-free-text").val()+"</span>"),this.updateIframeContent()},t}(),function(){return $.fn.textfill=function(e){return e=parseInt(e,10),this.each(function(){var t,n,i,r,s,o;return s=$("span",this),o=s.parent(),n=o.width(),t=parseInt(s.css("fontSize"),10),i=n/s.width(),r=t*(i-.08),s.css("fontSize",e>0&&r>e?e:r),this})},$.fn.inputmaxsize=function(e,t){var n;return null==t&&(t=0),n=parseInt(n,10),this.each(function(){var n,i,r;if(i=$(this),n=$("span",e),r=n.parent(),console.log(r.width(),n.width()),r.width()-t<n.width()){for(;r.width()-t<n.width();)n.text(n.text().slice(0,-1));i.val(n.text())}return this})}}(),new t($(".preview-screen"))}).call(this);