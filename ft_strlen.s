section .text				#실행파일 구조상 .text 섹션에 위치시킨다는 의미인듯
	global _ft_strlen		#언더바를 붙이지 않으면 C에서 어셈블리어로 작성한 함수를 사용 할 수 없다.
							#또한 어셈블리에서는 기본적으로 모든 코드가 private 이기 때문에 다른 모듈이 해당 코드에 접근 할수 있게 하기 위해서 global instruction 을 이용하여 다른 코드가 접근 할수 있도록 해준다.

_ft_strlen:					#size_t ft_strlen(const char *str)				
	mov	rax, 0				#규약에 따라 첫번째 매개변수는 rdi 에 담겨있고, 정수형 리턴이기 때문에 rax에 결과를 담아 리턴한다.
	jmp	cnt

cnt:
	cmp	BYTE [rdi + rax], 0 #[rdi + rax]는, rdi + rax의 주소에 있는 값을 읽는데, BYTE 단위로 읽는다는 뜻이고, 0과 비교하여 플레그를 설정한다.
	je	end					#je 점프 이퀄, 같으면 end 로 가고, 같지 않다면 아래로 내려간다.
	inc	rax					#rax를 하나 증가시킨다.
	jmp	cnt					#다시 반복문으로 들어간다.

end:						#ret 해버림. ret 는 정수형 이기 때문에 rax 에 담긴 것이 알아서 리턴 된다.
	ret