## 목차
- [1. 프로젝트 소개🙌](#1-프로젝트-소개)
    + [👉롤코지지?](#롤코지지)
    + [👉기술스택](#기술스택)
- [2. 프로젝트 진행과정👩🏻‍💻](#2-프로젝트-진행과정)
    + [👉구현기능](#구현기능)
- [3. 잘한 점과 아쉬운 점🎭](#3-잘한-점과-아쉬운-점)
    + [👉잘한 점](#잘한-점)
    + [👉아쉬운 점](#아쉬운-점)
- [4. 프로젝트를 마무리하면서..🎉](#4-프로젝트를-마무리하면서)

> 더 자세한 진행과정은 아래 벨로그에서 확인 가능합니다.<br>
> ➡️ [롤코지지 회고록](https://velog.io/@hyunzero0/LolcoGG%ED%8C%8C%EC%9D%B4%EB%84%90%ED%94%84%EB%A1%9C%EC%A0%9D%ED%8A%B8-%ED%9A%8C%EA%B3%A0%EB%A1%9D)

<br>

# 1. 프로젝트 소개🙌
>__팀명__
개발도상국(총 6명)<br>
__진행기간__
2023.07.10 ~ 2023.08.20 (약 6주)
>
>\* UI 및 DB설계는 모든 인원이 참여하였습니다.
<br>

### 👉롤코지지?
LOLCO.GG는 국내에서 개최 중인 **리그 오브 레전드 e스포츠 대회 – 2023 LCK (League of Legends Champions Korea)와 관련된 경기 정보, 승부 예측 및 커뮤니티 서비스를 제공하는 웹 애플리케이션**입니다.<br>
매일 LCK 경기 결과가 업데이트되며, 대회 정보 외에도 LOLCO.GG에서만 즐길 수 있는 카드 콜렉션, 스토어, 밸런스 게임 등 다양한 즐길 거리가 소환사님을 기다리고 있습니다!

<br>

### 👉기술스택
**`
backend
`**
SpringBoot, Java, SQL, JSP, JSON, Ajax

**`
frontend
`**
HTML, CSS, JavaScript, JQuery

**`
communication
`**
Git, Notion, Figma

**`
etc
`**
Eclipse, Oracle, VSCode, Tomcat

<br>

# 2. 프로젝트 진행과정👩🏻‍💻
### 👉구현기능
> - ✅ : 내가 담당한 기능
> - 제목 클릭 시 해당 페이지로 이동합니다.

<br>

[✅메인페이지](https://github.com/hyunzero0/HiFive_market/tree/dev/semi-hifive/src/main/java/com/semi/main) : 메인 카테고리 이동, 오늘의 경기, 팀 순위, 헤더, 푸터

[회원관리](https://github.com/hyunzero0/HiFive_market/tree/dev/semi-hifive/src/main/java/com/semi/member) : 회원가입(이메일 인증, 카카오톡, 네이버), 로그인, 비밀번호 찾기

[마이페이지](https://github.com/hyunzero0/HiFive_market/tree/dev/semi-hifive/src/main/java/com/semi/mypage) : 내 정보 보기, 포인트 내역, 응원팀/칭호 변경, 비밀번호 변경, 회원탈퇴

[커뮤니티](https://github.com/hyunzero0/HiFive_market/tree/dev/semi-hifive/src/main/java/com/semi/sc) : 인기/최신글 조회, 실시간 인기글 순위, 글/댓글(조회/등록/수정/삭제)

[LCK](https://github.com/hyunzero0/HiFive_market/tree/dev/semi-hifive/src/main/java/com/semi/productregist): 팀데이터 조회, 경기일정 조회

[✅승부예측](https://github.com/hyunzero0/HiFive_market/tree/dev/semi-hifive/src/main/java/com/semi/search): 주차별 경기 조회, 승부예측, 예측퍼센트 조회, 전체 적중률 랭킹, 나의 적중률 순위/랭킹 조회, 댓글 및 베스트댓글(조회/등록/수정/삭제), 댓글 좋아요/싫어요

[포인트상점](https://github.com/hyunzero0/HiFive_market/tree/dev/semi-hifive/src/main/java/com/semi/productlist): 상품판매(랜덤 상품 판매), 상품정렬

[챔피언 벤 예측](https://github.com/hyunzero0/HiFive_market/tree/dev/semi-hifive/src/main/java/com/semi/productpage): 경기 밴픽 챔피언 예측

[✅롤 퀴즈](https://github.com/hyunzero0/HiFive_market/tree/dev/semi-hifive/src/main/java/com/semi/shop): 롤 퀴즈 맞추기, 롤 음성 퀴즈 맞추기(랜덤 퀴즈)

[보너스 게임](https://github.com/hyunzero0/HiFive_market/tree/dev/semi-hifive/src/main/java/com/semi/admin): 이상형 월드컵, 밸런스 게임

[카드](https://github.com/hyunzero0/HiFive_market/tree/dev/semi-hifive/src/main/java/com/semi/admin): 카드 조회, 카드 업적 조회 및 보상수령

[✅문의하기](https://github.com/hyunzero0/HiFive_market/tree/dev/semi-hifive/src/main/java/com/semi/admin): 문의(조회/등록/수정/삭제), 답변등록

[관리자 페이지](https://github.com/hyunzero0/HiFive_market/tree/dev/semi-hifive/src/main/java/com/semi/admin): 회원관리, 신고관리, 커뮤니티관리, 플레이관리, 상점관리, 공지사항

<br>

**`
메인페이지
`**
>![](https://velog.velcdn.com/images/hyunzero0/post/14b52a89-dec2-452c-a112-4d2d6f1a47f7/image.gif) 오늘의 경기, 팀 순위, 헤더, 푸터

<br>
  
**`
승부예측
`**
>![](https://velog.velcdn.com/images/hyunzero0/post/8c480e83-907f-4652-8ad8-4a797c2ed63d/image.gif) 내 적중률 조회, 댓글 등록 및 삭제, 댓글 버프/너프

<br>

**`
롤 퀴즈
`**
>![](https://velog.velcdn.com/images/hyunzero0/post/681ef83f-b288-40ca-b7f3-6deac6eb4067/image.gif) 음성듣고 해당 챔피언 고르기, 정답 수에 따른 포인트 지급

<br>

**`
문의하기
`**
>![](https://velog.velcdn.com/images/hyunzero0/post/e4194217-dd02-4e05-9066-0d47e5b23b63/image.gif) 문의 등록/수정/삭제, 전체/내가 쓴 글 조회

<br>

# 3. 잘한 점과 아쉬운 점🎭

### 👉잘한 점

- 이번 프로젝트에서도 역시 **의사소통**이 활발하게 이루어졌다.
이전 프로젝트(HiFive_Market)와 달리 팀원 구성을 직접 했는데 그 덕분인지 의견도 많이 오고 갔으며 틈만 나면 프로젝트에 대해 이야기할 수 있어서 좋았다.

- 이전 프로젝트에서 github를 효과적으로 이용하지 못했던 것이 아쉬웠는데 좋은 팀장님을 만나 **github를 효과적으로 이용**할 수 있었다.
이름 브랜치가 아닌 각 기능 브랜치를 활용하고 커밋 메세지도 자세히 작성하여 협업이 더 편했다.

- **DB설계** 과정에서 팀원들이 모르는 부분이나 헷갈리는 부분을 나에게 많이 물어봤는데 그때마다 DB설계에 도움을 주었고 실제 DB설계가 되었을 때 내 의견이 많이 반영되어 있어서 뿌듯했다.
또한 데이터 삭제에 대한 부분도 잊지 않고 진행할 수 있었다.

- 이전 프로젝트에는 처음이라 그런지 감을 빨리 잡지 못해서 주변에 질문도 많이 하고, 스스로 해결하지 못한 문제가 많았는데
이번 프로젝트 시작 전, **깊게 생각하고 스스로 해결하기**를 목표로 삼았더니 모르는 부분도 직접 찾아보고 끝까지 해결하려고 노력했습니다.
덕분에 생각하는 방법을 배웠고 어렵게 해결하니 더 오래 기억에 남을 수 있었습니다.

<br>

### 👉아쉬운 점

- 이전 프로젝트(HiFive_Market)에 비해 많은 기능을 맡았는데 기능 구현은 다했지만 **깔끔한 코드**로 작성하진 못한 것 같다.
중복 코드도 많고 길어진 코드도 있어서 아쉬운데 점점 줄이도록 노력해야겠다.

- 문의하기 기능을 중간에 추가로 자원하여 맡게 되었는데 **기본이라고 생각했던 게시판 기능임에도 불구하고 많은 시간이 들었다.**
쉽게만 생각하고 시작했는데 막상 시작해 보니 이미지 업로드나 페이징 처리 등 어려움을 겪었다.
기본이라고 하는 데엔 이유가 있는 것 같다고 생각이 들었고 기능을 담당한 것은 다행이었다.

<br>
 
# 4. 프로젝트를 마무리하면서..🎉
이번 프로젝트는 내가 약 11년 동안 사랑한 게임 '리그오브레전드'를 주제로 진행했다.<br>
항상 마음에 담아두기만 했던 LCK 웹사이트를 구현하고 싶다고 처음 의견을 냈을 때 팀원들이 바로 OK! 해보자!를 외쳐주었다.<br>
그때 나는 진짜 열심히 해야겠다고 생각했고 원했던 기능인 승부예측 기능도 담당하게 되어서 좋았다.<br>
그리고 이전 프로젝트(HiFive_Market) 회고록을 작성할 때는 잘한 점 보다 아쉬운 점이 많이 생각났는데
이번 롤코지지 회고록을 작성할 때는 잘한 점이 계속 생각나서 확실히 늘었구나!라고 생각했다.<br>
이렇게 **한단계 한단계 나아가다 보면 멋진 개발자**가 될 것이라고 확신한다!<br>
마지막으로 이번 프로젝트를 끝으로 학원을 수료하는데 모든 동기들이 멋진 개발자가 되었으면 좋겠고<br>
나도!!!! 멋진 개발자가 될 것이다! 파이팅😎
