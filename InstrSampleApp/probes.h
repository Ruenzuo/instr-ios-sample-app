#import <Foundation/Foundation.h>
#import "benchmark.h"

static inline void MOBBENCHMARK_BEGIN(NSString *className) {
    if (INSTR_BENCHMARK_BEGIN_ENABLED()) {
        INSTR_BENCHMARK_BEGIN(className.UTF8String);
    }
}

static inline void MOBBENCHMARK_END(NSString *className) {
    if (INSTR_BENCHMARK_END_ENABLED()) {
        INSTR_BENCHMARK_END(className.UTF8String);
    }
}
