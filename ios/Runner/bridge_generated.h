#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>

typedef struct wire_uint_8_list {
  uint8_t *ptr;
  int32_t len;
} wire_uint_8_list;

typedef struct wire_ManipulationInput {
  struct wire_uint_8_list *original_bytes;
  bool greyscale;
  bool threshold;
  uint32_t threshold_amount;
  int32_t output_format;
  uint8_t quality;
} wire_ManipulationInput;

typedef struct WireSyncReturnStruct {
  uint8_t *ptr;
  int32_t len;
  bool success;
} WireSyncReturnStruct;

typedef int64_t DartPort;

typedef bool (*DartPostCObjectFnType)(DartPort port_id, void *message);

void wire_manipulate_image(int64_t port_, struct wire_ManipulationInput *a);

void wire_greyscale_image(int64_t port_, struct wire_uint_8_list *original_bytes);

void wire_checking(int64_t port_);

struct wire_ManipulationInput *new_box_autoadd_manipulation_input(void);

struct wire_uint_8_list *new_uint_8_list(int32_t len);

void free_WireSyncReturnStruct(struct WireSyncReturnStruct val);

void store_dart_post_cobject(DartPostCObjectFnType ptr);

static int64_t dummy_method_to_enforce_bundling(void) {
    int64_t dummy_var = 0;
    dummy_var ^= ((int64_t) (void*) wire_manipulate_image);
    dummy_var ^= ((int64_t) (void*) wire_greyscale_image);
    dummy_var ^= ((int64_t) (void*) wire_checking);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_manipulation_input);
    dummy_var ^= ((int64_t) (void*) new_uint_8_list);
    dummy_var ^= ((int64_t) (void*) free_WireSyncReturnStruct);
    dummy_var ^= ((int64_t) (void*) store_dart_post_cobject);
    return dummy_var;
}