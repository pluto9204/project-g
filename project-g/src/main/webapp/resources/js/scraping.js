/**
 * 	날짜 : 2021.10.10
 *	저자 : 김희준
 *	프로그램명 : 영화 스크래핑 기능
 */
var daumMovieUrl = "https://movie.daum.net/premovie/release";
var naverMovieUrl = "https://movie.naver.com/movie/running/current.nhn";
var cgvMovieUrl = "http://www.cgv.co.kr/movies/";
var scraping = {
	axiosLauncher : function(url){
		axios.defaults.headers.common['Access-Control-Allow-Origin'] = '*';
		axios({
			method : "GET",
			withCredentials : true,
			url : url,
			data : {},
		}).then(function(result){
			return result;
		}).catch(function(error){
			alert(error);
		});
	},
	daumScrapingStart : function(){
		return scraping.axiosLauncher(daumMovieUrl);
	},
	naverScrapingStart : function(){
		return scraping.axiosLauncher(naverMovieUrl);
	},
	cgvScrapingStart : function(){
		return scraping.axiosLauncher(cgvMovieUrl);
	},
	printScrap : {
		printDaumScraping : function(){
			var result = scraping.daumScrapingStart();
			print(result);
		},
		naverScrapingStart : function(){
			var result = scraping.naverScrapingStart();
			print(result);
		},
		cgvScrapingStart : function(){
			var result = scraping.cgvScrapingStart();
			print(result);
		}
	},
}