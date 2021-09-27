
### 该库的目的
安装Xcode13之后，原来用XcodeCoverage跑代码覆盖率，在代码里插桩用的系统方法`___gcov_flush`不能用了，会报符号位定义的错误。经过比较发现，在老版本的Xcode（调研用的是Xcode10）中有一个lib库`libclang_rt.profile_iossim.a`中，里面包含了`__gcov_flush`符号，所以在项目.m只要`extern`就可以用。
但是在Xcode13中，这个库中该符号已经被移除。可能`flush`的功能需要用新方法来实现，但没有找到相关文档，不知道怎么用。所以简单的处理方法就是拷贝一个老的`libclang_rt.profile_iossim.a`，放到项目里编译进去就行。

### 会碰到的一个问题
老的lib编译进去之后，必然会与新的lib库产生很多符号上的冲突，会有很多重复的符号。这里用一个简单的方法处理，就是创建一个动态库framework，让它把旧的lib库编译进去，然后动态库对外提供一个新的方法供调用，内部调用实际的`__gcove_flush`。而动态库对项目来说，只会用到新方法，旧的库是不可见的，就没有问题了。

### 疑问
按理说`__fcov_flush`的符号只存在于gcovFlushAdapter.framework这个动态库中，主程序应该不能直接extern后就直接调用。但实际情况就是可以的，不知道为什么。。。所以也没有必要用那个封装的方法了。

### 参考
貌似从这个文档里，可以看到`__gcov_flush`是在某个版本被移除了，里面有相关的日志。https://fossies.org/linux/gcc/libgcc/ChangeLog
