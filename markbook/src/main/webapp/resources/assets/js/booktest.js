    var test = new Vue({
        el: '#test',
        data: {
        	intro:'테스트를 시작합니다',
        	title:'샘플 테스트',
        	index: 0,
        	question: [],
        	answer: [],
        	selection: [],
        	result: ''
        },
        mounted: function() {
    	 $('#intro').show();
         $('#main').hide();
         $('#result').hide();
         
         //질문 1, 선택지 1 추가
         this.question.push('본인의 연령대를 선택해주세요.');
         this.answer.push(['10대','20대','30대(기혼)','30대(미혼)','40대 이상']);
    	},
        methods: {
    		start: function() {
                $('#intro').hide();
                $('#main').show();
                $('#result').hide();
        	},
        	prev: function() {
                alert('prev test');
       		},
        	next: function() {
                $('#intro').hide();
                $('#main').hide();
                $('#result').show();
                
             // 결과 작성
                this.result = this.answer[0][this.selection[0]] + '을(를) 좋아하는 타입 입니다';
        	}
    	}
    });