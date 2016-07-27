#learn mvvm-c from creating a app.(MVVM with Flow Controller)
#通过实例学习MVVM-C.及MVVM with Flow Controller
###核心思想
*比MVVM多了一层Coordinator,
* 把页面(模块)跳转相关的逻辑与其它逻辑一下放到viewModel中
* 需要刷新页面的逻辑继续交给view(viewController)
* 需要页面(模块)跳转的逻辑直接交给Coordinator.
* 

#图示([图片来源](https://medium.com/@digoreis/mvvm-with-flow-controller-first-step-83e60ade0018#.7wunp45i7 "图片来源"))
![](https://cdn-images-1.medium.com/max/1600/1*oUJ72oZR6wpVkufvCbrMWg.png)  


#参考
* [“MVVM-C In Practice”](https://www.youtube.com/watch?v=9VojuJpUuE8 "MVVM-C In Practice")
* [“Good iOS Application Architecture”](http://slideslive.com/38897361/good-ios-application-architecture-en "Good iOS Application Architecture")
* [MVVM with Flow Controller — First Step](https://medium.com/@digoreis/mvvm-with-flow-controller-first-step-83e60ade0018#.7wunp45i7 "MVVM with Flow Controller — First Step")
