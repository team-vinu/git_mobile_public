#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>

void free_WireSyncReturnStruct(WireSyncReturnStruct val);

static int64_t dummy_method_to_enforce_bundling(void) {
    int64_t dummy_var = 0;
    dummy_var ^= ((int64_t) (void*) wire_ssh_keygen);
    dummy_var ^= ((int64_t) (void*) new_uint_8_list_2);
    dummy_var ^= ((int64_t) (void*) store_dart_post_cobject);
    return dummy_var;
}