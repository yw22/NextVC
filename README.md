# NextVC

## **사용 기술 & 라이브러리**

+  UIViewController
present
modalPresentationStyle
performSegue
<br>

+ UIStoryboardSegue
prepare
destination
shouldPerformSegue

---
## **구현내용**


-  ##### 코드로 화면이동

-  ##### 코드로 스토리보드 객체를 생성해서, 화면이동

-  ##### 스토리보드에서의 화면 이동 (간접 세그웨이)

-  ##### 스토리보드에서의 화면 이동 (직접 세그웨이)

---
## **프로젝트를 하면서 배운점**

- ##### 스토리보드와 Xcode의 실행관계
Xcode가 컴파일을 하고 ViewController가 어떻게 실행되는지 알 수 있는 시간이였다. 컴파일을 실행을 하면 여러가지 코드들을 실행을 하며 ViewController를 힙 영역에다 데이터를 저장하고 스토리보드도 데이터 영역에다 저장을 한다. 그리고 스토리보드와 연결된 객체들을 다시 ViewController와 연결시켜주는 작업을 하게 된다. 그 작업은 viewDidLoad가 실행 시켜준다
- ##### Segue
Segue란 스토리보드에서 뷰 컨트롤러에서 다른 뷰 컨트롤러로 화면전환을 할 때 필요한 코드이다. UIStoryboardSegue 클래스를 사용한다

- ##### 직접 세그웨이와 간접 세그웨이
간접 Segue 스토리보드 화면에서 간접적으로 identifier 즉 식별자를 찾아 화면전환을 도와준다. 하지만 직접 Segue는 화면을 이동하는 동작을하는 객체와 직접적으로 연결되어있기때문에 식별자를 따로 지정할 필요는 없다. 또한 간접적으로 연결되어 있으면 식별자를 찾아야 하기 때문에 prepare메서드를 다시 정의해야하며 performSegue매서드로 식별자를 판단할수 있다. 하지만 직접적으로 연결되어있는경우 식별자를 이미 알고 있기때문에 따로 식별자를 안찾아도 되고 대신 화면전환에 있어 조건식을 사용하고 싶다면 shouldPerformSegue를 사용해야한다.


---
## **구현 영상**
<img width="60%" src="https://user-images.githubusercontent.com/100309352/169783027-6b4a1e13-8c4d-4158-a72f-63d0a84b452e.gif"/>  
