$(function(){
    //动态的响应式轮播图
    banner();
    initTab();
    $('.red').tooltip();
    $('.green').tooltip();
})
var banner = function(){
    //轮播图组件
    var $banner = $(".carousel");
    //点容器
    var $point = $banner.find(".carousel-indicators");
    //图片容器
    var $images = $banner.find(".carousel-inner");
    //窗口对象
    var $window = $(window);


    //1.模拟数据（从后台回去数据）
    var data = [
        {
            pcSrc: "img/slide_01_big.jpg",
            mSrc: "img/slide_01_small.jpg"
        },
        {
            pcSrc: "img/slide_02_big.jpg",
            mSrc: "img/slide_02_small.jpg"
        },
        {
            pcSrc: "img/slide_03_big.jpg",
            mSrc: "img/slide_03_small.jpg"
        },
        {
            pcSrc: "img/slide_04_big.jpg",
            mSrc: "img/slide_04_small.jpg"
        }
    ]

    //渲染操作
    var render = function(){
        //2.判断当前设备                  768px
        var isMobild = $window.width() < 768 ? true:false;
        //3.根据当前设备把数据转换成html    拼接字符串
        //3.1点容器内容需要动态生成
        var pointHtml = "";
        //3.2图片容器需要动态生成
        var imgHtml = "";

        //根据数据来拼接
        $.each(data, function(k, v){
            pointHtml += '<li data-target="#carousel-example-generic" data-slide-to="'+k+'"'+(k==0?'class="active"':'')+'></li>\n';
            imgHtml += '<div class="item '+(k==0?'active':'')+'">\n';
            if(isMobild){
                imgHtml += '<a class="m_imageBox hidden-lg hidden-md hidden-sm" href="#"> <img src="'+(v.mSrc)+'" alt=""/></a>\n';

            }else{
                imgHtml += '<a class="pc_imageBox hidden-xs" style="background-image: url('+(v.pcSrc)+');" href="#"></a>\n';
            }
            imgHtml += '</div>';
        })
        //4.渲染到页面当中                 html追加
        $point.html(pointHtml);
        $images.html(imgHtml)
    }
    render();
    //5.测试能否响应  两种设备        监听页面尺寸改变重新渲染
    $window.on('resize', function(){
        render();
    }).trigger('resize');
    //trigger主动触发 resize事件 执行render   页面渲染

    //6.移动端 手势切换功能  左滑  右滑
    //通过jQuery可以绑定touch事件
    //注意：originalEvent当中才有触摸点集合
    var startX = 0;
    var distanceX = 0;
    var isMove = false;
    $banner.on('touchstart', function (e) {
        startX = e.originalEvent.touches[0].clientX;
    }).on('touchmove', function (e) {
        var moveX = e.originalEvent.touches[0].clientX;
        distanceX = moveX - startX;
        isMove = true;
    }).on('touchend', function (e) {
        /*手势条件
        *
        *  1.滑动过的
        *  2.移动的距离超过50px， 认为是手势
        * */
        if(isMove && Math.abs(distanceX) >= 50){
            if(distanceX > 0){
                //右滑
                $banner.carousel('prev')
            }else{
                //左滑
                $banner.carousel('next')
            }
        }
        startX = 0;
        distanceX = 0;
        isMove = false
    })
}
var initTab = function(){
    /*
    * 1.把所有的页签在一行显示     设置父容器的宽度是所有子容器的宽度之和
    * 2.满足区域滚动的HTML结构要求 必须有大容器套着一个小容器
    * 3.实现滑动功能               使用区域滚动插件   iscroll
    * */
    //父容器
    var tabs = $(".wjs_product .nav-tabs");
    //所有的子容器
    var liList = tabs.find('li');
    //计算宽度之和
    var width = 0;
    //width:  内容的宽度
    //innerWidth： 内容和内边距的宽度
    //outerWidth： 内容和内边距和边框的宽度
    //outerWidth(true)： 内容和内边距和边框和外边距的宽度
    $.each(liList, function (k,v) {
        //width获取内容的宽度
        width += $(v).outerWidth(true);
    })
    tabs.width(width)
    //滚动
    new IScroll($('.wjs_product_tab')[0], {
        scrollX: true,
        click: true
    });
}