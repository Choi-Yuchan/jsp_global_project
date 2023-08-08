// 유효성 체크 
const submitBtn = document.querySelector("#submit-btn");

submitBtn.addEventListener("click", (e)=>{
	const fn = document.querySelector("form");

	console.log(fn);
	if(fn.m_date.value === ""){
		alert("수강월을 입력해주세요!");
		fn.m_date.focus();
		return false;
	}
	if(fn.m_num.value === ""){
		alert("회원명을 선택해주세요!");
		fn.m_name.focus();
		return false;
	}
	if(fn.c_area.value === ""){
		alert("강의장소를 선택해주세요!");
		fn.class_area.focus();
		return false;
	}
	if(fn.total_fee.value === ""){
		alert("강의명을 선택해주세요!");
		fn.t_code.focus();
		return false;
	}
	fn.action = "member_golf.do";
	fn.method = "post";
	fn.type= "submit";
});

function fn_reset(){
	
	if(confirm("정보를 지우고 처음부터 다시 입력합니다!")){
		location="insert_golf.jsp";
	}
}


function fn_change1() {
    const fn = document.querySelector("form"); // form 엘리먼트 참조를 fn 변수에 할당
    
    // 회원명 셀렉트 박스에서 선택한 옵션의 값 가져오기
    const selectedMemberName = fn.m_name.value;
    
    // 선택한 회원명에 따라 정확한 회원번호 설정
    if (selectedMemberName === "홍길동") {
        fn.m_num.value = "10001";
    } else if (selectedMemberName === "장발장") {
        fn.m_num.value = "10002";
    } else if (selectedMemberName === "임꺽정") {
        fn.m_num.value = "10003";
    } else if (selectedMemberName === "성춘향") {
        fn.m_num.value = "20001";
    } else if (selectedMemberName === "이몽룡") {
        fn.m_num.value = "20002";
    } 
    
    fn.total_fee.value = " "; // 수강료 초기화
    fn.t_code.options[0].selected = true; // 강의 코드 셀렉트 박스 초기화
}

function fn_change2() {
    const fn = document.querySelector("form");
    const price = parseInt(fn.t_code.value) * 1000; // 강의 코드 값을 숫자로 변환하여 계산
    const m_num = parseInt(fn.m_num.value); // 회원번호 값을 숫자로 변환

    if (!(m_num) && m_num >= 20000) {
        price *= 0.5;
    }

    fn.total_fee.value = price;
}