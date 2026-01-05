


function checkAddBook(e) {
	const bookId = document.getElementById("bookId").value;
	const name = document.getElementById("name").value;
	const unitPrice = document.getElementById("unitPrice").value;
	const unitsInStock = document.getElementById("unitsInStock").value;
	const description = document.getElementById("description").value;
	// Quiz
		// 도서아이디 체크
		// '[도서 코드]\nISBN과 숫자를 조합하여 8~15자까지 입력하세요.\n첫 글자는 반드시 ISBN으로 시작하세요.'
		// 정규 표현식 사용
		const regExpBookId = /^ISBN[0-9]{4,11}$/;
		
		// 도서명 체크
		// '[도서명]\n최소 4자에서 최대 50자까지 입력하세요.'
		const regExpName = /^.{4,50}$/;
		
		// 도서 가격 체크
		// '[가격]\n숫자만 입력하세요.'
		// '[가격]\n음수를 입력할 수 없습니다.'
		const regExpUnitPrice = /^[0-9]+$/;
		
		// 재고 수 체크
		// '[재고 수]\n숫자만 입력하세요.'
		const regExpUnitInStock = /^[0-9]+$/;
		
		// 상세설명 체크
		// '[상세설명]\n최소 100자 이상 입력하세요.'
		const regExpDescription = /^.{100,}/;
		
		if(!regExpBookId.test(bookId)){
			alert(bookId + "\nISBN과 숫자를 조합하여 8~15자까지 입력하세요.\n첫 글자는 반드시 ISBN으로 시작하세요.");
			document.getElementById("bookId").focus();
			e.preventDefault();
			return;
		}
		
		if(!regExpName.test(name)) {
			alert(name + "\n최소 4자에서 최대 50자까지 입력하세요.");
			document.getElementById("name").focus();
			e.preventDefault();
			return;
		}
		
		if(unitPrice === 0 || isNaN(unitPrice)) {
			alert(unitPrice + "\n숫자만 입력하세요.");
			document.getElementById("unitPrice").focus();
			e.preventDefault();
			return;
		}
		
		if(unitPrice < 0) {
			alert(unitPrice + "\n음수를 입력할 수 없습니다.");
			document.getElementById("unitPrice").focus();
			e.preventDefault();
			return;
		}
		
		// (참고) 만약 소수점 이하 최대 2자리까지 허용하는 숫자를 체크하는 정규식
		// /^\d+\.\d{1,2}$/
		
		
		if(unitsInStock === 0 || isNaN(unitsInStock)) {
			alert(unitPrice + "\n숫자만 입력하세요.");
			document.getElementById("unitsInStock").focus();
			e.preventDefault();
			return;
		}
		
		if(description < 100) {
			alert(description + "\n최소 100자 이상 입력하세요.")
			document.getElementById("description").focus();
			e.preventDefault();
			return;
		}
		
		
		form.submit();
}