/**
 * 	날짜 : 2021.10.10
 *	저자 : 김희준
 *	프로그램명 : 영화 스크래핑 기능
 */
var daumMovieUrl = "https://movie.daum.net/premovie/release";
var naverMovieUrl = "https://movie.naver.com/movie/running/current.nhn";
var cgvMovieUrl = "http://www.cgv.co.kr/movies/";

var scraping = {
	daumScrapingStart : function(){
		return common.ajax.ajaxStart(daumMovieUrl);
	},
	naverScrapingStart : function(){
		return common.ajax.ajaxStart(naverMovieUrl);
	},
	cgvScrapingStart : function(){
		return common.ajax.ajaxStart(cgvMovieUrl);
	},
	printScrap : {
		printDaumScraping : function(){
			var result = daumScrapingStart();
			print(result.toString());
		},
		naverScrapingStart : function(){
			var result = naverScrapingStart();
			print(result.toString());
		},
		cgvScrapingStart : function(){
			var result = cgvScrapingStart();
			print(result.toString());
		}
	},
}