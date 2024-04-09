select ceiling(123.16), -- 올림
	   floor(123.56), -- 내림
	   round(123.56), -- 반올림
	   round(123.56, 1), -- 두번째 매개변수 자리에 반올림 자릿수 표시가능
	   truncate(123.56, 1); -- 버림, 지정한 위치에서 버림
	   
select abs(-120), -- 절대값
	   sign(-120), -- 음수면 -1, 양수면 1
	   sign(120); 
	  
select power(2, 3), -- 제곱
	   sqrt(16), -- 제곱근
	   rand(), -- 랜덤넘버
	   rand(100), -- 매개변수는 seed의 의미. seed가 같으면 랜덤값이 동일
	   rand(200);