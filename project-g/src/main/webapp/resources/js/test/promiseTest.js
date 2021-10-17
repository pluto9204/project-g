/**
 * Promise란 async를 유용하게 쓰기 위한 객체이다.
 * Promise 객체의 생성자 파라미터인 resolve는
 * 객체의 프로세스가 정상적으로 모두 실행 됐을 경우 Promise 객체가 리턴되며
 * resolve내에 설정해놓은 인자사 리턴되고, 에러가 나면 rejct가 실행된다.
 * 단, 정상적인 실행상태에서 리턴받은 Promise 객체는 유지가 되나,
 * rejct되서 받은 promise객체는 없어지고, 다음 실행한 promise객체는 새로운 객체이다.
 */

var n = 0;
function testConsole(){
	setTimeout(() => {
		console.log(n++);
	}, 2000);
}

function promiseTest(){
	return new Promise( (resolve, rejct) => {
		testConsole();
		resolve("resolve");
		rejct("error!!");
	} );
}

promiseTest()
.then( (result) => {
	console.log(result);
	promiseTest();
})
.catch( result => {
	console.log(result);
	console.log("error!!")
})