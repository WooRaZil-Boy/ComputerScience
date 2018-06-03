import React, { Component } from 'react'
//Syntactic sugar. const Componeny = React.Component 라고 쓴 것과 같은 표현이다.
//대괄호의 의미는 react 라이브러리를 불러와, Component라는 변수를 프로퍼티 형태로 가져오라는 것이다.

// const SearchBar = () => {
//     return <input /> //React.createElement
//     //빈 요소 이므로 이렇게만 써도 된다. 이것이 HTML input으로 변환되어 유저가 타이핑할 수 있다.
//     //JSX를 바닐라 js 코드로 변환할 때마다, React.createElement 형식으로 반환되므로 react 라이브러리를 가져와야 한다.
// }
// //함수형 컴포넌트. 한 함수가 JSX 형태를 반환한다.




class SearchBar extends Component { //자바 스크립트 객체 //React의 Component를 상속받는다.
// class SearchBar extends React.Component { 와 같은 표현이다.
//ES6 형식으로 Syntactic sugar를 활용해 간단히 쓸 수 있다.

    constructor(props) {
        //모든 자바스크립트 클래스는 특별한 함수인 constructor가 있다.
        //이 함수는 인스턴스가 생성될 때마다 자동으로 가장 먼저 호출된다.
        //따라서 뭔가를 설정하고 초기화하는 데 사용한다.
        super(props)
        //이 클래스가 Component를 상속하므로, Component의 constructor를 먼저 호출해 준다.

        this.state = { term: '' }
        //state 정의하고 초기화. state를 사용하기 전에 먼저 초기화해야 한다.
        //함수형 컴포넌트는 state를 가지지 않는다. 오직 클래스 컴포넌트만이 state를 가진다.
        //오직 constructor 함수 내에서만 이런 식으로 state를 변경할 수 있다.
        //다른 곳에서는 this.setState를 사용해야 한다.

        //state는 리액트에서 가장 이해하기 어려운 주제 중 하나이다.
        //state는 자바 스크립트 객체로 유저 이벤트를 저장하고 반응하는 데 이용한다.
        //클래스 컴포넌트는 그 자체의 state 객체를 가진다.
        //컴포넌트의 state가 바뀔 때마다 컴포넌트는 즉시 다시 렌더링되고, 자식 요소들에게도 렌더링하도록 강제한다.

        //여기에선 만약 검색바가 state가 있고 이것이 변한다면, render() 메서드가 재 실행된다.
        //만약 render의 return에 다른 요소들을 가지고 있다면 그것들도 다시 렌더링된다.

        //이 앱에서는 사용자가 검색을 할 때마다, 여기의 term이 업데이트 된다.
        //사용자가 타이핑을 하면 this.state의 term이 빈 문자열이 아닌 타이핑한 문자열로 변경된다.
    }

    render() {
        //메서드 기반의 클래스를 작성하고, 그 자체로 렌더링할 수 있어야 한다(JSX 변환).
        //이를 위해 redner 메서드를 정의한다. 모든 클래스 기반 리액트 컴포넌트는 render 메서드로 정의되어야 한다.
        //App 컴포넌트가 검색바를 렌더링할 때마다 redner를 호출한다(함수형 컴포넌트에서는 해당 함수 호출).
        //따라서 render()는 JSX를 반환해야 한다.

    // return <input onChange = {this.onInputChange} />
        //이벤트 핸들러를 관찰할 요소를 선언한 곳에 전달한다. onChange는 리액트로 정의된 프로퍼티
        //이벤트가 발생할 때마다 핸들러가 호출된다.

    // return <input onChange = {(event) => this.setState({ term: event.target.value })} />
        //핸들러가 간단하다면 람다, 클로저 형식으로 간단히 쓸 수 있다.

        return (
            <div>
                <input
                value = {this.state.term}
                onChange = { event => this.setState({ term: event.target.value })} />
            </div>
        )
        //한 줄이라면 파라미터의 괄호를 생략할 수 있다.

        //JSX 안에서 자바스크립트 변수를 참조할 때에는 value = {this.state.term}처럼 중괄호로 감싸줘야 한다.
        //this.state.term을 단순히 참조할 때는 setter를 쓸 필요 없다.

        //여기서 state의 값이 입력할 때마다 바뀌므로 그 때마다 다시 렌더링되고,
        //렌더링 메서드의 모든 업데이트된 정보를 DOM에 푸시한다.
        //render 메서드는 this.state.term을 참조하기 시작하고, 컴포넌트가 다시 렌더링 될 때마다
        //DOM 안의 this.state.term이 업데이트 된다.

        //this.state.term으로 값을 제공받은 input을 제어 컴포넌트라 한다.
        //제어 컴포넌트는 state에 의해 값이 정해지는데, state가 변하면 값도 변한다.
        //즉, input이 업데이트가 필요하다고 요청한다.

        //여기서 처음 실행 후 input의 value는 빈 문자열이다. 그리고 사용자가 타이핑하면,
        //onChange가 발생하므로 이벤트 핸들러에 의해 state의 값이 바뀐다.
        //여기에서 value는 여전히 빈 문자열이다. 이후 state의 값이 바꼈기에 render가 다시 호출면서
        //value는 입력한 값으로 바뀌게 된다. 따라서 이벤트 트리거를 통해 input value가 바뀌는 것이 아니다.
        //state를 업데이트 했기 때문에 그 값이 input value에 반영된 것이다.
        //따라서 onChange 부분을 빼고, <input value = {this.state.term} /> 로 return 한다면
        //value가 계속해서 빈 문자열이 되기 때문에 어떠한 값도 입력할 수 없다.

        //이렇게 value = {this.state.term}를 사용하면 보다 쉽게 input 값을 설정해 주고 읽을 수 있다.
        //jQuery로 비슷하게 구현할 수 있지만, 해당 요소를 찾고 값을 다시 읽어와야 하기 때문에
        //value = {this.state.term}를 사용하는 것이 더 쉽고 편하다(ex. 버튼 눌렀을 시).
        //언제나 input에 적절한 값이 원하는 때에 있는지 알 수 있다.
    }

    onInputChange(event) {
        //리액트 커뮤니티에서는 handleInputChange() 라고 많이 쓴다.
        //handle 이나 on + 살펴보려는 요소(input) + 이벤트의 이름(Change)

        //리액트에서 이벤트 핸들링은 두 가지 과정을 거친다.
        //1. 이벤트 핸들러를 선언한다. 이벤트가 발생할 때마다 실행되는 함수이다.
        //2. 이 이벤트 핸들러를 살펴보려는 요소에 전달해 준다.

    // console.log(event.target.value)
        //console.log()로 콘솔에 출력한다.

        //모든 브라우저 event는 네이티브 요소인 input, div, span, button과 같은 요소에서의 트리거를 받는다.
        //여기서는 onInputChange를 호출할 때마다 언제나 event 객체(파라미터)를 받는다.
        //이 event 객체는 이벤트가 발생하는 것에 대한 정보나 컨텍스트를 의미한다.
        //여기서는 event 객체를 input에 접근하는 데 사용할 수 있다.

        //콘솔에 event 자체를 출력하여 구성요소를 볼 수 있다.

        this.setState({ term: event.target.value })
    // this.state.term = event.target.vale //BAD !!!
        //state를 변경한다. 오직, constructor에서만 직접 접근할 수 있고, 다른 곳에서는 setter를 사용해야 한다.

    }


    //input 요소의 텍스트가 바뀌는 것을 알려고 한다.

}
//리액트 컴포넌트는 함수형 컴포넌트와 클래스 컴포넌트가 있다.
//클래스 컴포넌트는 내부적인 정보를 저장할 때 사용한다.

//이전의 함수형 컴포넌트에서는 호출하는 함수, 반환하는 JSX와 이를 둘러싸고 있는 것들과 상태값을 모르고,
//다른 컴포넌트와 소통할 수도 없었다.
//클래스 컴포넌트는 리액트의 Component를 상속해 다양한 기능을 추가해 줄 수 있다.




//여기서는 컴포넌트를 정의할 뿐, DOM이나 index.js에 렌더링하는 것이 아니다.
//컴포넌트가 다른 컴포넌트를 보여줄 수 있다. 검색 컴포넌트는 다른 컴포넌트와 함께 연동되어 사용되므로
//DOM으로 위치를 지정해 주는 것이 아니라, 다른 컴포넌트로 내보내서(export) 사용하는 것이 좋다.

export default SearchBar
//여기의 모든 코드를 내보내는 것이 아니라 일부분(SearchBar)만 내보내는 것이므로 설정해 준다.
//이렇게 설정해 두면, 어플리케이션의 어떤 곳에서도 SearchBar 컴포넌트를 불러올 수 있다.




//사용자의 검색어를 받아서 youtube API에 요청을 보낸다.
