function fn_submit() {
    var f = document.frm;

    if (f.v_jumin.value == "") {
        alert("주민번호가 입력되지 않았습니다!");
        f.v_jumin.focus();
        return false;
    }
    
    var jumin = /^(\d{6})-(\d{7})$/; // 주민번호 유효성 검사
    if (!jumin.test(f.v_jumin.value)) {
        alert("유효하지 않은 주민번호입니다. 숫자 13자리로 입력해주세요. (예: 123456-1234567)");
        f.v_jumin.focus();
        return false;
    }
    
    if (f.v_name.value == "") {
        alert("성명이 입력되지 않았습니다!");
        f.v_name.focus();
        return false;
    }
    
    var name = /^[가-힣]+$/; // 한글이름 유효성 검사
    if (!name.test(f.v_name.value)) {
        alert("한글 이름으로 입력해주세요.");
        f.v_name.focus();
        return false;
    }
    
    if (f.v_no.value == "") {
        alert("후보번호가 선택되지 않았습니다!");
        f.v_no.focus();
        return false;
    }
    
    if (f.v_time.value == "") {
        alert("투표시간이 입력되지 않았습니다!");
        f.v_time.focus();
        return false;
    }
    
    var time = /^[0-9]{4}$/; // 투표시간 유효성 검사
    if (!time.test(f.v_time.value)) {
        alert("투표시간을 숫자 4자로 입력해주세요! 예: 0930");
        f.v_time.focus();
        return false;
    }
    
    if (f.v_area.value == "") {
        alert("투표장소가 입력되지 않았습니다!");
        f.v_area.focus();
        return false;
    }
    
    if (f.v_area.value != "제1투표장" && f.v_area.value != "제2투표장") {
        alert("투표장소를 제1투표장 또는 제2투표장으로 입력해주세요.");
        f.v_area.focus();
        return false;
    }
    
    if (f.v_confirm.value == "") {
        alert("유권자확인이 선택되지 않았습니다!");
        return false;
    }
    
    f.submit();
}

function fn_reset() {
    if (confirm("정보를 지우고 처음부터 다시 입력합니다!")) {
        location = "voteMember.jsp";
    }
}

function fn_onload() {
    document.frm.v_jumin.focus();
}
