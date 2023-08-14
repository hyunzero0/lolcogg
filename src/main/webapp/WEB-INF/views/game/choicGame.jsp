<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<jsp:include page="/WEB-INF/views/common/top.jsp"/>
<!-- Your own style tag or CSS file -->
<style>
#choiceGameBack{
	width: 100%;
    height: 100%;
    opacity: 0.2;
    position: absolute;
    z-index: -10;
}
#gameTitle{
	display:flex;
    flex-direction: column;
    align-items: center;
}
.choiceMain{
	width: 100%;
    display: flex;
    flex-direction: column;
    align-items: center;
}
.gameChoiceView{
	display:flex;
    align-items: center;
    width: 75%;
    justify-content: space-evenly;
    margin-bottom: 4rem;
    height: 353px;
}
.choiceTheme{
	display: flex;
    border: 4px solid var(--lol-teamblue);
    border-radius: 10px 10px 10px 10px;
    flex-direction: column;
    align-items: center;
    height: 100%;
    width: 660px;
}

.choiceTheme>div:last-child>div{
	display:flex;
	flex-direction: row;
    justify-content: space-between;
    width: 84%;
    font-size: 30px;
    -webkit-text-stroke: 1px;
    -webkit-text-stroke-color: var(--lol-mainblue);
}
.cursor, .startGame{
	cursor: pointer;
}
#poro{
	width: 100%;
	overflow: hidden;
    border-radius: 10px 10px 10px 10px;
}
.load{
		width:100%;
		height:100%;
		background-color:var(--lol-black);
		animation-duration: 4s;
 		animation-name: slidein;
 		z-index:10000;
 		position: absolute;
 		display: flex;
 		align-items: center;
    	justify-content: center;
    	animation-fill-mode: forwards;
	}
	
	@keyframes slidein {
		0%{
		    margin-left: -100%;
			width: 100%;
			opacity: 0;
	 	}
	
		50%{
		    margin-left: 0%;
		    width: 100%;
		    opacity:1;
		}
		100%{
		    margin-left: 100%;
			width: 100%;
			opacity: 0;
			display:none;
	 	}

	}
	#worldCupPlay{
		display: flex;
	    flex-direction: column;
    	align-items: center;
	}
	#adventurePlay{
		display: flex;
	    flex-direction: column;
    	align-items: center;
	}
	.cupGameBack{
		background-color: var(--lol-mainblue);
		border: 4px solid var(--lol-mainblue);
		border-radius: 10px 10px 10px 10px;
	}
	.cupGameBack>div:first-child,.cupGameBack>div:first-child>div:first-child {
		display: flex;
	}
	.cupGameBack>div:last-child {
		display: flex;
		flex-direction: column;
   		align-items: center;
   		color: var(--lol-white);
	} 


	.cupGameBack>div:last-child>div{
		display: flex;
	    width: 100%;
	    justify-content: space-around;
	}
	.cupGameBack>div:last-child>div>div{
		display: flex;
	    align-items: center;
	}
	.cupGameBack>div:last-child>h3{
		margin-top: 0.8rem;
	    margin-bottom: 0.8rem;
	}
	.start *{
		margin: 0.4rem;
	}
	#worldCupPlay>div{
		display: flex;
		width: 100%;
   		justify-content: space-around;
   		margin-bottom: 2rem;
	}
	
	.percent{
	    height: 100%;
    	width: 100%;
	}
	.adventureMain{
		display: flex;
		position: relative;
		background-color: var(--lol-mainblue);
	}
	#adch{
        position: absolute;
        width: 200px;
	    height: 200px;
        top: 117px;
    	left: 93px;
	    display: flex;

	}

	#adtext{
		position: absolute;
    	width: 750px;
	    height: 200px;
	    bottom: 50px;
	    left: 130px;
	    display: flex;
	}
	#adtext>div{
		background-color: var(--lol-mainblue);
	    width: 100%;
	    opacity: 0.3;
	}
	#adtext>p{
		position: absolute;
	    top: 32px;
    	left: 29px;
	    font-size: 28px;
	    color: var(--lol-white);
	
	}
	.adventureMain>img:first-child {
	    height: 600px;
   		border: 4px solid var(--lol-mainblue);
   		width: 1000px;
	}
	
	p.typing-txt{
	  display: none;
	}
	
	.typing {  
	/*position: absolute;*/ 
	  display: inline-block; 
	 } 
	 #adname{
	 	position: absolute;
	    width: 180px;
	    height: 60px;
	    background-color: var(--lol-mainblue);
	    border-radius: 100px;
	    display: flex;
	    align-items: center;
	    justify-content: center;
	    bottom: 222px;
	    left: 150px;
	 }
	 #adname>div>p{
	 	font-size:18px;
	 	font-family: "EF_MACHO";
	 	
	 }
	 #adchoice{
	 	position: absolute;
	    width: 980px;
	    display: flex;
	    flex-direction: column;
	    height: 200px;
	    align-items: center;
	    justify-content: space-evenly;
        top: 144px;
	 }
	 #adchoice>button{
 	    width: 200px;
	    height: 50px;
	    border-radius: 20px;
	    background-color: var(--lol-white);
	    font-size: 21px;
	    border: none;
	    opacity: 0.9;
	    cursor: pointer;
	 }
	 #adchoice>button:hover {
		background-color: var(--lol-mainblue);
	}
	#adarrow{
		position: absolute;
	    bottom: 60px;
	    right: 138px;
	    cursor: pointer;
	}
	
	#adsound{
		position: absolute;
	    right: 10px;
	    top: 10px;
	    cursor: pointer;
	}
	
	.soundimg{
		width: 36px;
	}
	footer{
		margin-top: 180px;
	}

	</style>
<!------------------------------------>
<title>롤코지지-게임</title>
</head>
<body style="overflow-x: hidden">
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="navBgColor" value="nav-black"/>
</jsp:include>
    <section>
    	<div id="adventureGame" style="display:none">
    		<img src="${path}/resources/images/game/poro_adventure_loading.jpg"  style="width:100%;height:1700px">
    	</div>
    	<div id="worldCupGame" style="display:none">
    		<img src="${path}/resources/images/game/worldcup_loading.jpg" style="width:100%;height:1700px">
    	</div>
    	<img id="choiceGameBack" style="height: 927px;">
        <div class="center-1280 background-img mainpage mainHeight">
            <div class="width-1280 page-margin" style="height:551px">	
            
            	<div id="gameTitle" >
	                <p class="subTitle fs-20">게임 선택</p>
	                <div class="choiceMain" id="worldcup">
	                    <p class="mainTitle fs-35 mainTitleMargin">이상형 월드컵</p>
	                    <div class="gameChoiceView">
	                    	<img class="cursor switch" src="${path }/resources/images/game/leftClick.png">
		                    <div class="choiceTheme ">
		                    	<div class="percent">
		                    		<img class="percent" src="${path }/resources/images/game/worldcup_choice.png">
		                    	</div>
		                    </div>
		                    <img class="cursor switch" src="${path }/resources/images/game/rightClick.png">
	                    </div>
	                    <img class="startGame" id="worldcupStart" src="${path }/resources/images/game/choiceButton.png">
	                </div>
	                <div class="choiceMain" id="adventure" style="display:none">
	                    <p class="mainTitle fs-35 mainTitleMargin">포로의 대모험</p>
	                    <div class="gameChoiceView">
	                    	<img class="cursor switch" src="${path }/resources/images/game/leftClick.png">
		                    <div class="choiceTheme">
	                    		<img id="poro" src="${path }/resources/images/game/poro_adventure.jpg">
		                    </div>
		                    <img class="cursor switch" src="${path }/resources/images/game/rightClick.png">
	                    </div>
	                    <img class="startGame" id="adventureStart" src="${path }/resources/images/game/choiceButton.png">
	                </div>
				</div>
				
				
				
				<div id="worldCupPlay" style="display:none">
					<p class="mainTitle fs-35">이상형 월드컵</p>
					<div>
						<div class="cupGameBack">
							<div>
								<div>
		                    		<img src="${path }/resources/images/game/gameMainChampion.png" style="width:400px;height:200px;border-radius:10px;">
								</div>
							</div>
							<div>
								<h3 class="gameName">LOL 롤 챔피언 월드컵</h3>
	                            <div class="startworld">
	                                <div class="start cursor goGame" >
	                                    <img src="${path}/resources/images/game/cupstart.png">
	                                    <h3>시작하기</h3>
	                                </div>
	                                <div class="start cursor goRanking">
	                                    <img src="${path}/resources/images/game/cuplist.png">
	                                    <h3>랭킹보기</h3>
	                                </div>
	                            </div>
							</div>
						</div>
						<div class="cupGameBack">
							<div>
								<div>
		                    		<img src="${path }/resources/images/game/gameMainSkin.png" style="width:400px;height:200px">
								</div>
							</div>
							<div>
								<h3 class="gameName">LOL 롤 스킨 월드컵</h3>
	                            <div class="startworld">
	                                <div class="start cursor goGame">
	                                    <img src="${path}/resources/images/game/cupstart.png">
	                                    <h3>시작하기</h3>
	                                </div>
	                                <div class="start cursor goRanking">
	                                    <img src="${path}/resources/images/game/cuplist.png">
	                                    <h3>랭킹보기</h3>
	                                </div>
	                            </div>
							</div>
						</div>
					</div>
					<div>
						<div class="cupGameBack">
							<div>
								<div>
		                    		<img src="${path }/resources/images/game/gameMainProgamer.png" style="width:400px;height:200px">
								</div>
							</div>
							<div>
								<h3 class="gameName">LCK 롤 프로게이머 월드컵</h3>
	                            <div class="startworld">
	                                <div class="start cursor goGame">
	                                    <img src="${path}/resources/images/game/cupstart.png">
	                                    <h3>시작하기</h3>
	                                </div>
	                                <div class="start cursor goRanking">
	                                    <img src="${path}/resources/images/game/cuplist.png">
	                                    <h3>랭킹보기</h3>
	                                </div>
	                            </div>
							</div>
						</div>
						<div class="cupGameBack">
							<div>
								<div>
		                    		<img src="${path }/resources/images/game/lolBGM.png" style="width:400px;height:200px">
								</div>
							</div>
							<div>
								<h3 class="gameName">LOL 롤 BGM 음악 월드컵</h3>
	                            <div class="startworld">
	                                <div class="start cursor goGame" >
	                                    <img src="${path}/resources/images/game/cupstart.png">
	                                    <h3>시작하기</h3>
	                                </div>
	                                <div class="start cursor goRanking">
	                                    <img src="${path}/resources/images/game/cuplist.png">
	                                    <h3>랭킹보기</h3>
	                                </div>
	                            </div>
							</div>
						</div>
					</div>
				</div>
				
				<div id="adventurePlay" style="display:none">
					<p class="mainTitle fs-35">포로의 대모험</p>
					<div>
						<div class="adventureMain">
							<img id="admap" src="${path}/resources/images/game/adventure/빌지워터.png">
							<div id="adch">
								<img id="adimg1" src="${path}/resources/images/game/adventure/미스포로.png" style="display:none;">
								<img id="adimg2" src="${path}/resources/images/game/adventure/갱플포로.png" style="display:none">
								<img id="adimg3" src="${path}/resources/images/game/adventure/트페포로.png" style="display:none">
								<img id="adimg4" src="${path}/resources/images/game/adventure/그브포로.png" style="display:none">
							</div>
							
							<div id="adchoice" style="display:none;">
								<button id="oneclick">따라간다</button>
								<button id="twoclick">다른 곳을 둘러본다</button>
							</div>
							<div id="adname">
								<div >
									<p id="namead">김포로</p>
								</div>
							</div>
							<div id="adtext">
								<div>
								</div>
								<p class="typing-txt">여기는 빌지워터, 현상수배범과 현상금 사냥꾼들이 넘쳐나는 도시이다.</p>
								<p class="typing"></p>
							</div>
							<div>
								<img id="adarrow" class="adarrow" src="${path}/resources/images/game/adventure/gamearrow.png"  style="display:none">
							</div>
							<div id="adsound">
								<img class="soundimg" id="sound" src="${path}/resources/images/game/adventure/sound-up.png"  >
								<img class="soundimg" id="mute" src="${path}/resources/images/game/adventure/sound-mute.png"  style="display:none">
							</div>
						</div>
					</div>
				</div>
				
            </div>
        </div>
    </section>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
<script src="${path}/resources/js/jquery-3.7.0.min.js"></script>
<script src="${path}/resources/js/script_common.js"></script>
<!-- Your own script tag or JavaScript file -->
<script>


function type(){
	let typingBool = false; 
	let typingIdx=0; 
	
	// 타이핑될 텍스트를 가져온다 
	let typingTxt = $(".typing-txt").text(); 
	
	typingTxt=typingTxt.split(""); // 한글자씩 자른다. 
	
	if(typingBool==false){ 
	  // 타이핑이 진행되지 않았다면 
	   typingBool=true;     
	   var tyInt = setInterval(typing,30); // 반복동작 
	} 
	     
	function typing(){ 
	  if(typingIdx<typingTxt.length){ 
	    // 타이핑될 텍스트 길이만큼 반복 
	    $(".typing").append(typingTxt[typingIdx]);
	    // 한글자씩 이어준다. 
	    typingIdx++; 
	   } else{ 
	     //끝나면 반복종료 
	    clearInterval(tyInt); 
	   } 
	}
}


window.onload=function(){
	$('#choiceGameBack').attr("src","${path }/resources/images/game/choiceGameBack"+Math.floor(Math.random() * 7)+".gif");
}
$(function () {
		const worldcup=$('#worldcup');
		const adventure=$('#adventure');
		const gameTitle=$('#gameTitle');
		const adventureGame=$('#adventureGame');
		const worldCupGame=$('#worldCupGame');
		const worldCupPlay=$('#worldCupPlay');
		const adventurePlay=$('#adventurePlay');
	$('.switch').click(function(e) {
		if(worldcup.css('display')=="none"){
			worldcup.show();
			adventure.hide();
		}else{
			adventure.show();
			worldcup.hide();
		}

	});
	$('#adventureStart').click(function(e){
		gameTitle.hide();
		adventureGame.addClass('load')
		adventureGame.show();;
		setTimeout(function(){
			adventurePlay.show();
		},2000);
		setTimeout(function(){
			let choice=0;
			let count=0;
			type();
			var typingTxt = $(".typing-txt").text(); 
			typingTxt=typingTxt.split(""); 
			var audio = new Audio("${path}/resources/audio/adventure/1.Keyboard Typing by seth-m Id-269713.wav");
			audio.load();
			audio.volume = 0.5;
			audio.play();
			audio.loop = true;
			var audio2 = new Audio("${path}/resources/audio/adventure/rogeuin-hwamyeon.wav");
			audio2.load();
			audio2.volume = 0.1;
			audio2.loop=true;
			audio2.play();
			var audio3 = new Audio("${path}/resources/audio/adventure/실내 웅성웅성BG.wav");
			audio3.load();
			audio3.volume = 1;
			var audio7 = new Audio("${path}/resources/audio/adventure/MP_Shotgun Blast.mp3");
			audio7.load();
			audio7.volume = 0.2;
			$('#sound').click(function(){
				audio2.pause();
				$('#mute').show();
				$('#sound').hide();
			})
			$('#mute').click(function(){
				audio2.play();
				$('#sound').show();
				$('#mute').hide();
			})
	 		setTimeout(function(){
	 			audio.pause();
	 			$('#adarrow').show();
	 		},typingTxt.length*40)
	 		$('.adarrow').click(function(){
				if(count==0){
		 			audio.play();
					audio.loop = true;
					$('#adarrow').hide();
		 			$('.typing').text('');
		 			$('.typing-txt').text('갱플포로가 아직 이 마을에 있다는 소문이 있던데 찾아봐야겠어')
		 			type();
		 			typingTxt = $(".typing-txt").text(); 
					typingTxt=typingTxt.split(""); 
		 			setTimeout(function(){
			 			audio.pause();
			 			$('#adarrow').show();
			 		},typingTxt.length*40)
			 		count++;
				}else if(count==1){
					audio.play();
					audio.loop = true;
					$('#adarrow').hide();
		 			$('.typing').text('');
		 			$('.typing-txt').text('일단 마을로 가보자!')
		 			type();
		 			typingTxt = $(".typing-txt").text(); 
					typingTxt=typingTxt.split(""); 
		 			setTimeout(function(){
		 				$('#adarrow').show();
			 			audio.pause();
			 		},typingTxt.length*40)
			 		count++;
				}else if(count==2){
					$('#adarrow').hide();
					$('#admap').attr("src","${path}/resources/images/game/adventure/빌지워터마을.jpg");
					$('.typing').text('');
					$('.typing-txt').text('저분이 그 유명한 미스포로인가');
		 			type();
		 			audio.play();
					audio.loop = true;
					typingTxt = $(".typing-txt").text(); 
					typingTxt=typingTxt.split(""); 
					setTimeout(function(){
		 				$('#adarrow').show();
			 			audio.pause();
			 			count++;
			 		},typingTxt.length*40)
				}else if(count==3){
					audio.play();
					audio.loop = true;
					$('#adarrow').hide();
					$('#adimg1').show();
					$('#adimg1').css('transform','scaleX(-1)');
					$('#namead').text('미스포로')
					$('.typing').text('');
					$('.typing-txt').text('이 마을에서 처음보는 사람 같은데 무슨일이지?');
					$('.typing').css('color','wheat')
					type();
		 			typingTxt = $(".typing-txt").text(); 
					typingTxt=typingTxt.split(""); 
		 			setTimeout(function(){
		 				$('#adarrow').show();
			 			audio.pause();
			 		},typingTxt.length*40)
			 		count++;
				}else if(count==4){
					audio.play();
					audio.loop = true;
					$('#adimg1').hide();
					$('#adarrow').hide();
					$('#namead').text('김포로');
					$('.typing').text('');
					$('.typing-txt').text('갱플포로를 찾고 있는데 혹시 어디있는지 아시나요?');
					$('.typing').css('color','var(--lol-white)')
					type();
		 			typingTxt = $(".typing-txt").text(); 
					typingTxt=typingTxt.split(""); 
					setTimeout(function(){
		 				$('#adarrow').show();
			 			audio.pause();
			 		},typingTxt.length*40)
			 		count++;
				}else if(count==5){
					audio.play();
					audio.loop = true;
					$('#adarrow').hide();
					$('#adimg1').show();
					$('#namead').text('미스포로');
					$('.typing').text('');
					$('.typing-txt').text('뭐? 갱플포로? 입 조심해 꼬맹아, 꺼저버려');
					$('.typing').css('color','wheat')
					var audio4 = new Audio("${path}/resources/audio/adventure/MP_미스 포츈 도발 4198.wav");
					audio4.load();
					audio4.volume = 0.5;
					audio4.play();
					type();
		 			typingTxt = $(".typing-txt").text(); 
					typingTxt=typingTxt.split(""); 
					setTimeout(function(){
			 			audio.pause();
			 			setTimeout(function(){
		 					$( '#adimg1' ).hide();
			 				$('#admap').css('opacity','0.7')
			 				$('#adchoice').show();
			 			},500)
			 		},typingTxt.length*40)
			 		count++;
				}else if(count==200){
					audio.play();
					audio.loop = true;
					$('#namead').text('김포로');
		 			$('.twoclick').hide();
		 			audio3.pause();
		 			$('.typing').text('');
		 			$('.typing-txt').text('주점에서 싸움난건가? 왜들 모여있지 구경해 봐야지')
		 			type();
		 			typingTxt = $(".typing-txt").text(); 
					typingTxt=typingTxt.split(""); 
		 			setTimeout(function(){
			 			audio.pause();
			 			$('#adarrow').show();
			 		},typingTxt.length*40)
			 		count++;
				}else if(count==201){
					audio.play();
					audio.loop = true;
					$('#namead').text('그브포로');
					$('#adarrow').hide();
					$('#admap').attr("src","${path}/resources/images/game/adventure/그브트페싸움.jpg");
					$('#adimg4').show();
		 			$('.twoclick').hide();
		 			var audio5 = new Audio("${path}/resources/audio/adventure/MP_그레이브즈 도발 CA87 (mp3cut.net).wav");
					audio5.load();
					audio5.volume = 0.4;
					audio5.play();
		 			$('.typing').text('');
		 			$('.typing-txt').text('트페!!!!!! 늙어 죽는게 소원은 아니었길')
		 			type();
		 			typingTxt = $(".typing-txt").text(); 
					typingTxt=typingTxt.split(""); 
		 			setTimeout(function(){
			 			audio.pause();
			 			$('#adarrow').show();
			 		},typingTxt.length*40)
			 		count++;
				}else if(count==202){
					audio.play();
					audio.loop = true;
					$('#namead').text('트페포로');
					$('#adimg4').hide();
					$('#adimg3').show();
					$('#adarrow').hide();
					var audio6 = new Audio("${path}/resources/audio/adventure/트위스티드 페이트 한국어 음성 (mp3cut.net).wav");
					audio6.load();
					audio6.volume = 0.4;
					audio6.play();
		 			$('.typing').text('');
		 			$('.typing-txt').text('진정 하라고 친구, 우리 말로 해결을 보자고')
		 			type();
		 			typingTxt = $(".typing-txt").text(); 
					typingTxt=typingTxt.split("");
					$('#oneclick').text('말린다')
					$('#twoclick').text('지켜본다')
					setTimeout(function(){
			 			audio.pause();
			 			setTimeout(function(){
			 				choice=200;
		 					$( '#adimg3' ).hide();
			 				$('#admap').css('opacity','0.7')
			 				$('#adchoice').show();
			 			},500)
			 		},typingTxt.length*40)
				}
	 		})
	 		
	 		
	 		$('#oneclick').click(function(){
	 			if(choice==0){
		 			$('#admap').css('opacity','1');
		 			audio.play();
		 			audio.loop = true;
		 			$('#adchoice').hide();
		 			$('#adimg1').show();
					$('#namead').text('미스포로');
		 			$('.typing').text('');
		 			$('.typing-txt').text('......................')
		 			type();
		 			typingTxt = $(".typing-txt").text(); 
					typingTxt=typingTxt.split("");
		 			setTimeout(function(){
		 				audio.pause();
		 			},typingTxt.length*40)
	 			}else if(choice=200){
	 				audio.play();
		 			audio.loop = true;
	 				$('#adchoice').hide();
	 				$('#admap').css('opacity','1');
		 			$('#adchoice').hide();
		 			$('.typing').text('');
		 			$('#namead').text('');
		 			$('.typing-txt').text('김포로는 말리려다 총을 대신 맞아버렸다... THE END................')
	 				audio7.play();
		 			type();
		 			typingTxt = $(".typing-txt").text(); 
					typingTxt=typingTxt.split("");
					setTimeout(function(){
		 				audio.pause();
		 			},typingTxt.length*40)
	 			}
	 		})
	 		$('#twoclick').click(function(){
	 			if(choice==0){
		 			$('#admap').css('opacity','1');
		 			$('#adchoice').hide();
		 			$('.typing').text('');
		 			$('#namead').text('');
		 			
					audio3.play();
					audio3.loop=true;
		 			$('.typing-txt').text('웅성웅성웅성웅성웅성웅성')
		 			typingTxt = $(".typing-txt").text(); 
	 				type();
					typingTxt=typingTxt.split("");
					setTimeout(function(){
						$('#adarrow').show();
				 		count=200;
		 			},typingTxt.length*40)
	 			}else if(choice==200){
	 				audio.play();
		 			audio.loop = true;
	 				$('#adchoice').hide();
	 				$('#admap').css('opacity','1');
		 			$('#adchoice').hide();
		 			$('.typing').text('');
		 			$('#namead').text('');
		 			$('.typing-txt').text('김포로는 말리려다 총을 대신 맞아버렸다... THE END................')
	 				audio7.play();
		 			type();
		 			typingTxt = $(".typing-txt").text(); 
					typingTxt=typingTxt.split("");
					setTimeout(function(){
		 				audio.pause();
		 			},typingTxt.length*40)
	 			}
	 		})
	 		
		},2900)
	})
	$('#worldcupStart').click(function(e){
		gameTitle.hide();
		worldCupGame.addClass('load')
		worldCupGame.show();;
		setTimeout(function(){
			worldCupPlay.show();
		},2000);
	})
	
	$(".goGame").click(function(e){
		const name=$(e.target).parent().parent().parent().find('.gameName').text();
		let num=0;
		switch(name){
			case "LCK 롤 프로게이머 월드컵" : num=1;break;
			case "LOL 롤 스킨 월드컵" : num=2;break;
			case "LOL 롤 챔피언 월드컵" : num=3;break;
			case "LOL 롤 BGM 음악 월드컵" : num=4;break;
		}
		window.open("${path}/game/worldcup?gameName="+name+"&num="+num) 
	});
	$(".goRanking").click(function(e){
		const name=$(e.target).parent().parent().parent().find('.gameName').text();
		let num=0;
		switch(name){
			case "LCK 롤 프로게이머 월드컵" : num=1;break;
			case "LOL 롤 스킨 월드컵" : num=2;break;
			case "LOL 롤 챔피언 월드컵" : num=3;break;
			case "LOL 롤 BGM 음악 월드컵" : num=4;break;
		}
		location.assign("${path}/game/worldcupRanking?gameName="+name+"&num="+num) 
	});
	
});







</script>
<!-------------------------------------------->
</body>
</html>
