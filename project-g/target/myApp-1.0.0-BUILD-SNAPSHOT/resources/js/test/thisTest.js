/**
 * this에 대한 TEST
 * this란 현재 자신을 실행시킨 객체이다.
 */

function thisTest()
{
	return console.log(this);
}

//이떄 this의 값은 thisTest
thisTest();

var anatherTest = thisTest;

//이 때 this의 값은 windows이다.
anatherTest();