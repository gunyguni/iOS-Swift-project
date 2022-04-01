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
