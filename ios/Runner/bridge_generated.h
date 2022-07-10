#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>

======= typedef struct WireSyncReturnStruct
{
  uint8_t *ptr;
  int32_t len;
  bool success;
} WireSyncReturnStruct;

typedef struct wire_uint_8_list
{
  uint8_t *ptr;
  int32_t len;
} wire_uint_8_list;

typedef int64_t DartPort;

typedef bool (*DartPostCObjectFnType)(DartPort port_id, void *message);

void free_WireSyncReturnStruct(struct WireSyncReturnStruct val);

void wire_ssh_keygen(int64_t port_, struct wire_uint_8_list *passwd, int32_t algorithm);

struct wire_uint_8_list *new_uint_8_list_2(int32_t len);

void store_dart_post_cobject(DartPostCObjectFnType ptr);

static int64_t dummy_method_to_enforce_bundling(void)
{
  int64_t dummy_var = 0;
  dummy_var ^= ((int64_t)(void *)wire_ssh_keygen);
  dummy_var ^= ((int64_t)(void *)wire_git_https_clone);
  dummy_var ^= ((int64_t)(void *)wire_git_http_clone);
  dummy_var ^= ((int64_t)(void *)wire_git_add);
  dummy_var ^= ((int64_t)(void *)wire_git_commit);
  dummy_var ^= ((int64_t)(void *)wire_git_init);
  dummy_var ^= ((int64_t)(void *)wire_git_open);
  dummy_var ^= ((int64_t)(void *)wire_platform);
  dummy_var ^= ((int64_t)(void *)wire_rust_release_mode);
  dummy_var ^= ((int64_t)(void *)new_uint_8_list_0);
  dummy_var ^= ((int64_t)(void *)free_WireSyncReturnStruct);
  dummy_var ^= ((int64_t)(void *)store_dart_post_cobject);
  return dummy_var;
}