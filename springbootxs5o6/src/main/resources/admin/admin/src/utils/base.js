const base = {
    get() {
                return {
            url : "http://localhost:8080/springbootxs5o6/",
            name: "springbootxs5o6",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/springbootxs5o6/front/index.html'
        };
            },
    getProjectName(){
        return {
            projectName: "图书个性化推荐系统"
        } 
    }
}
export default base
