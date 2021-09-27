//
//  adapter.m
//  gcov_adapter
//
//  Created by 马龙 on 2021/9/24.
//

void __gcov_flush(void);
void gcov_adapter_flush(void){
    __gcov_flush();
}
