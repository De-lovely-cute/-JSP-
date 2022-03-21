$(function(){
    //��̬����Ӧʽ�ֲ�ͼ
    banner();
    initTab();
    $('.red').tooltip();
    $('.green').tooltip();
})
var banner = function(){
    //�ֲ�ͼ���
    var $banner = $(".carousel");
    //������
    var $point = $banner.find(".carousel-indicators");
    //ͼƬ����
    var $images = $banner.find(".carousel-inner");
    //���ڶ���
    var $window = $(window);


    //1.ģ�����ݣ��Ӻ�̨��ȥ���ݣ�
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

    //��Ⱦ����
    var render = function(){
        //2.�жϵ�ǰ�豸                  768px
        var isMobild = $window.width() < 768 ? true:false;
        //3.���ݵ�ǰ�豸������ת����html    ƴ���ַ���
        //3.1������������Ҫ��̬����
        var pointHtml = "";
        //3.2ͼƬ������Ҫ��̬����
        var imgHtml = "";

        //����������ƴ��
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
        //4.��Ⱦ��ҳ�浱��                 html׷��
        $point.html(pointHtml);
        $images.html(imgHtml)
    }
    render();
    //5.�����ܷ���Ӧ  �����豸        ����ҳ��ߴ�ı�������Ⱦ
    $window.on('resize', function(){
        render();
    }).trigger('resize');
    //trigger�������� resize�¼� ִ��render   ҳ����Ⱦ

    //6.�ƶ��� �����л�����  ��  �һ�
    //ͨ��jQuery���԰�touch�¼�
    //ע�⣺originalEvent���в��д����㼯��
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
        /*��������
        *
        *  1.��������
        *  2.�ƶ��ľ��볬��50px�� ��Ϊ������
        * */
        if(isMove && Math.abs(distanceX) >= 50){
            if(distanceX > 0){
                //�һ�
                $banner.carousel('prev')
            }else{
                //��
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
    * 1.�����е�ҳǩ��һ����ʾ     ���ø������Ŀ���������������Ŀ��֮��
    * 2.�������������HTML�ṹҪ�� �����д���������һ��С����
    * 3.ʵ�ֻ�������               ʹ������������   iscroll
    * */
    //������
    var tabs = $(".wjs_product .nav-tabs");
    //���е�������
    var liList = tabs.find('li');
    //������֮��
    var width = 0;
    //width:  ���ݵĿ��
    //innerWidth�� ���ݺ��ڱ߾�Ŀ��
    //outerWidth�� ���ݺ��ڱ߾�ͱ߿�Ŀ��
    //outerWidth(true)�� ���ݺ��ڱ߾�ͱ߿����߾�Ŀ��
    $.each(liList, function (k,v) {
        //width��ȡ���ݵĿ��
        width += $(v).outerWidth(true);
    })
    tabs.width(width)
    //����
    new IScroll($('.wjs_product_tab')[0], {
        scrollX: true,
        click: true
    });
}