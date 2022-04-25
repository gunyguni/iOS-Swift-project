# iOS-Swift-project


## 수행 목록
### Section 2 & 3
- AppIcon 생성 및 프로젝트에 추가
- ImageAsset 생성 및 프로젝트에 추가
- Main.storyboard에 컴포넌트 추가 및 수정

### Section 4
- 이전 섹션을 이용한 미니 Challenge project

### Section 5
- Linking Interface Builder with swift code file via IBOutlet

    - Tip) Xcode 13부터 image literal을 사용하려면 #imageLiteral( 을 입력해야함 (alternative: UIImage(named: “IMAGENAME”))

### Section 6
- Autolayout 관련 기능들 연습 + 미니 Challenge project
    - Constraints & Alignment 설정 (kotlin과 비슷함)
    - View Container를 통한 화면 분할
 

### Section 7
- Apple official API document 찾기 (https://developer.apple.com/documentation/technologies)
- AVFoundation을 활용한 audio & video code implementation
- UIButton의 sender property를 이용하는 방법 
- DispatchQueue 사용법 

### Section 8
- Auto Layout에서 Text Overflow 해결하기
- storyboard의 label property (화면 우측 Pane)에서: 
    1. Lines 를 0으로 바꾸면 Overflow 시 자동 줄바꿈을 해준다
    2. AutoShrink에서 minimum font size를 설정해준다.
- Timer API 사용법

### Section 9
- Build project with MVC Pattern
- Model: structure를 사용한 Modelling 방법
- Group을 통한 MVC 파일 구분
- self property의 Immutability:
    - 모든 self property는 Immutable하다.
    - 따라서 instance 스스로 자신의 값을 바꾸는 메소드를 작성하려면 mutating keyword를 func 앞에 써줘야 한다.

### Section 10
- MVC Pattern mini Project (Game book mimic)

### Section 11
- UISlider 사용법
- Class & inheritance를 프로젝트에 적용하기
- Handling multi screen files 
    - How to navigate to another screen
    - How to pass values between screens
    - Cocoa Touch class
- Optional Binding, Optional chaining, nil coalescing operator 적용

### Section 12
- Mini Project using segue

### Section 13
- Dark-mode 적용 (vector file .svg 사용법)
- UITextField 적용
    - UITextFieldDelegate 적용
- protocol과 delegate Pattern 프로젝트에 적용하기
- URLSession으로 HTTP 통신
- Json file parsing by JSONDecoder and Decodable protocol
- Computed property 적용
- Extension 적용
- Core Location to get GPS data
    1. CoreLocation api 사용
    2. CCLocationManagerDelegate 적용
- info.plist 수정

### Section 14
- http 통신, delegate pattern을 이용한 mini project
- UIPickerViewDelegate & UIPickerViewDataSource 적용

### Section 15
- text animation using for loop and Timer class
- Cocoapods(package dependency manager)를 통한 3rd party library 사용
    - **주의! M1 맥북 사용시 ‘sudo arch -x86_64 gem install ffi’ 해주고 pod install 대신 ‘arch -x86_64 pod install’ 해줘야 함. 안그러면 cpu 차이 때문에 에러남**
- Constants struct를 통한 상수타입 관리
- Table View와 Table view cell을 이용한 list view 구현
- .xib 파일을 통한 디자인 수정
- 프로젝트에 Firebase Auth연동
- Firebase Firestore를 통한 DB 연동
- FireStore DB 구독 (I.e. Listening for realtime updates on DB)
- IQKeyboardManager - Swift Package Manager(SPM) 적용

### Section 16
- CLI practice (linux 명령어들)

### Section 17
- SwiftUI Practice
    - VHZ Stack
    - RGB & Hex Colors
    - SF Symbols
    - Custom Fonts
    - Dynamic length list using “Identifiable” protocol
    - Observer Design Pattern 적용
    - WebView 적용 (UIViewRepresentable을 통한 UIKit 적용)
    
**Xcode 13 부터 SwiftUI에 info.plist랑 LaunchScreen이 사라져서 이유를 찾아봤다.**
info.plist : https://useyourloaf.com/blog/xcode-13-missing-info.plist/
launchScreen.storyboard: https://useyourloaf.com/blog/dropping-launch-storyboards/

### Section 18
Git & version control using Xcode GUI

### Section 19
Using TableViewController class 
TableView의 accesary (checkbox) 적용하기
alertdialog 만들기
Persistant Data Storage CRUD by 
- NSUserDefaults
- NSCoder & FileManager for local storage path
- Core Data
    - Querying and sorting when fetching core data
Swipeable(Dismissible) tableview cell using SwipeCellKit pod 
Refactoring by custom  superclass
Color decoration by Chameleon Framework for  Swift

### Section 20
App Store Connect에서 앱 등록 및 In-app purchase 관련 환경설정
App Capabilities에서 In-app purchase를 설정하면 자동으로 설치되는 StoreKit 라이브러리로 인앱 결제 구현 (강의 285)

### Section 21
Computed Property & Observed Property practice

### Section 22
Computed Property 프로젝트에 적용
Tuples 프로젝트에 적용

### Section 23
CoreML 실습 및 프로젝트 적용
- CoreML 공식 문서 : https://developer.apple.com/machine-learning/
Vision Library를 통한 camera/photo library 접속 
- photoLibrary를 사용하려면 UIImagePickerController 대신 UIPickerViewController를 사용해야 한단다. 확실히 기능도 많고 UI도 깔끔하다 나중에 실습 해보자
- https://gyuios.tistory.com/131
- https://developer.apple.com/documentation/photokit/phpickerviewcontroller
- https://velog.io/@wannabe_eung/%EC%95%A8%EB%B2%94%EC%9D%98-%EC%9D%B4%EB%AF%B8%EC%A7%80%EB%A5%BC-%EC%84%A0%ED%83%9D%ED%95%A0-%EC%88%98-%EC%9E%88%EB%8A%94-PHPickerViewController%EB%A5%BC-%EC%95%8C%EC%95%84%EB%B3%B4%EC%9E%90

### Section 24
Caffe로 만들어진 Trained Model을 CoreML (.mlmodel) 파일로 변환하기
1. Install pip
2. Install ‘coremltools’ via pip (pip install -U coremltools)
3. Install virtualenv and make a virtual environment with python2.7
    1. coremltools가 python3에서 돌아가면 문제가 많다고 해서 가상환경 설정해줬는데, 찾아보니까 이제 python3에서도 된대서 해보니 잘 돌아감. 
4. 만들어진 virtual environment에서 coremltools API를 사용해서 caffe model -> mlmodel로 변환하기
    1. Caffe model은 더 이상 지원하지 않는다. 4.0 보다 낮은 버전은 더 이상 pip로 다운로드 받을 수 없는데, coremlmodel 3.4가 마지막으로 caffe와 호환되는 버젼!
    2. 근데 coremlmodel 3.4는 m1 환경에서 돌아가지 않는다… m1보다 먼저 나왔기 때문이다…. 으아아ㅏ어 Rosetta로 돌려도 문제가 생긴다.

결론: 논리적 Deadlock에 걸린 기분이다. 어케 해결할 수 있을까… m1맥북 드럽게 비싸기만 하다.

따라서 저 mlmodel을 베이스로 하는 강의 뒷부분은 시청만 했다.
- Alamofire & SwiftyJson CocoaPods
    - Wikipedia OPEN API와 http 통신하기 위해서 사용됐다.
    - URLSession과 Codable structure를 사용하는 것이 훨씬 간단해보였다.
        - 이유 1: query에 들어갈 여러 파라미터를 string에 넣어주는 것이 아니라 String dictionary 형태로 보내야 한다.
        - 이유 2: Quicktype.io 같은 사이트를 사용하면 자동으로 복잡한 json file에 맞는 structure를 만들어줘서 편하게 사용할 수 있지만, SwiftyJson을 통해서 JSON을 parsing하는 방법은 json 구조를 다 파악해야 한다. 크게 어려운 일은 아니지만, 어찌됐던 생산성에서 밀린다고 생각한다.
- SDWebImage
    - Web image를 url로 불러오기 위해 사용한다. 

### Section 25
CreateML을 통한 Custom Image Classification 모델 만들기 (강아지, 고양이, 토끼 구분 모델)
- CreateML은 애플이 자체적으로 사진앱이나 Siri에 탑재하기 위해 만든 AI 모델을 기반으로 내가 추가한 데이터를 참고하기 때문에 비교적 적은 데이터셋으로 모델을 만들도록 도와준다.
어차피 CreateML이 많이 변해서 강의 내용이 도움 안됐다.
https://developer.apple.com/documentation/createml/creating_an_image_classifier_model
위 공식문서 가지고 놀면 된다.

### Section 26
CreateML을 통한 Text 감정 분석 모델 만들고 앱에 적용

이것도 강의 내용이랑 많이 달라서 공식 문서 보고 혼자 해봤다.
https://developer.apple.com/documentation/createml/creating_a_text_classifier_model

심지어 데이터셋이 다운로드가 안되서 따로 찾아봤다.
데이터의 수정이 필요했는데 100만개가 넘는 경우 Google sheet도 엑셀도 안되거나 뒤에가 다 짤려서 적당한 사이즈를 찾는데 애먹었다.

계속 구글링해서 찾다가 굉장히 좋은 데이터셋 전용 서치 엔진을 찾았다.
https://datasetsearch.research.google.com/ 역시 갓구글

결과적으로 10mb짜리 작은 데이터셋을 발견할 수 있었다.
https://www.kaggle.com/datasets/jp797498e/twitter-entity-sentiment-analysis

Twitter API와 연동하는 부분에서 Swifter라는 라이브러리를 사용했는데, 이게 현재 Tweeter API 버젼과 연동이 되지 않았다. 어렵진 않겠지만 지금 시기에 트위터 API에 내 리소스를 쏟는 것보다 빠르게 넘어가고 개인 프로젝트를 하기로 결정했다. (Open API 경험은 많으니까..)


### Section 27
ARKit의 SceneKit 라이브러리를 사용한 AR 구현 part 1
- SceneKit가 제공하는 기본 3D 물체 (SCNBox, SCNSphere) 구현
- 외부 3D Resouce (.dae)를 .scn으로 변환해서 사용
- Plane detection (카메라로 평면 감지) 
- 감지된 평면 위로 물체 띄우기
- 3D 물체에 애니메이션 주기


3D resources : https://www.turbosquid.com/

### Section 28
ARKit의 SceneKit 라이브러리를 사용한 AR 구현 part 2
- 두 점 사이의 거리를 측정해주는 ruler 앱 구현
    - 평면을 먼저 인식한다.
    - 평면 위에 있는 한 점을 터치하면 작은 3D 점을 만들고 같은 평면 위에 다른 점을 클릭해서 실제 거리를 재준다.
    - hitResult가 deprecate 됐으므로 rayCastQuery를 사용하자

### Section 29
ARKit의 SceneKit 라이브러리를 사용한 AR 구현 part 3 (Live Image Tracking)
- 평면을 인식하는 게 아니라 특정 ‘이미지’를 찾아서 인식한다
    - viewWillAppear()에 기본 config를 ARWorldTrackingConfiguration()이 아니라 ARImageTrackingConfiguration() 설정한다. (WorldTracking을 써도 되지만, 리소스를 아끼기 위해서 image detection만 한다면 이렇게 하자)
    - assets에 AR Resource Group을 추가하고 width, height를 정확히 적는다 (나중에 ARKit가 실제 크기를 비교할 때 사용됨)
