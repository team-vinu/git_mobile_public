#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>

typedef struct WireSyncReturnStruct {
  uint8_t *ptr;
  int32_t len;
  bool success;
} WireSyncReturnStruct;

typedef struct wire_uint_8_list {
  uint8_t *ptr;
  int32_t len;
} wire_uint_8_list;

typedef int64_t DartPort;

typedef bool (*DartPostCObjectFnType)(DartPort port_id, void *message);

void free_WireSyncReturnStruct(struct WireSyncReturnStruct val);

void wire_git_https_clone(int64_t port_,
                          struct wire_uint_8_list *dir,
                          struct wire_uint_8_list *url);

void wire_git_http_clone(int64_t port_, struct wire_uint_8_list *dir, struct wire_uint_8_list *url);

void wire_git_add(int64_t port_, struct wire_uint_8_list *dir, struct wire_uint_8_list *file);

void wire_git_commit(int64_t port_, struct wire_uint_8_list *dir, struct wire_uint_8_list *msg);

void wire_git_init(int64_t port_, struct wire_uint_8_list *dir);

void wire_git_open(int64_t port_, struct wire_uint_8_list *dir);

struct wire_uint_8_list *new_uint_8_list_1(int32_t len);

void store_dart_post_cobject(DartPostCObjectFnType ptr);

static int64_t dummy_method_to_enforce_bundling(void) {
    int64_t dummy_var = 0;
    dummy_var ^= ((int64_t) (void*) wire_git_https_clone);
    dummy_var ^= ((int64_t) (void*) wire_git_http_clone);
    dummy_var ^= ((int64_t) (void*) wire_git_add);
    dummy_var ^= ((int64_t) (void*) wire_git_commit);
    dummy_var ^= ((int64_t) (void*) wire_git_init);
    dummy_var ^= ((int64_t) (void*) wire_git_open);
    dummy_var ^= ((int64_t) (void*) new_uint_8_list_1);
    dummy_var ^= ((int64_t) (void*) store_dart_post_cobject);
    return dummy_var;
}