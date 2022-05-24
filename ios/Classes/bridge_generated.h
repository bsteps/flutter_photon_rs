#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>

typedef struct wire_uint_8_list {
  uint8_t *ptr;
  int32_t len;
} wire_uint_8_list;

typedef struct wire_Rgba {
  uint8_t r;
  uint8_t g;
  uint8_t b;
  uint8_t a;
} wire_Rgba;

typedef struct wire_PhotonFilter {
  struct wire_uint_8_list *name;
  int64_t val1;
  int64_t val2;
  int64_t val3;
  int64_t val4;
  struct wire_uint_8_list *image2_bytes;
  struct wire_Rgba *rgba;
  double val1f;
} wire_PhotonFilter;

typedef struct wire_list_photon_filter {
  struct wire_PhotonFilter *ptr;
  int32_t len;
} wire_list_photon_filter;

typedef struct wire_ManipulationInput {
  struct wire_uint_8_list *original_bytes;
  struct wire_list_photon_filter *filters;
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

struct wire_ManipulationInput *new_box_autoadd_manipulation_input(void);

struct wire_Rgba *new_box_rgba(void);

struct wire_list_photon_filter *new_list_photon_filter(int32_t len);

struct wire_uint_8_list *new_uint_8_list(int32_t len);

void free_WireSyncReturnStruct(struct WireSyncReturnStruct val);

void store_dart_post_cobject(DartPostCObjectFnType ptr);

static int64_t dummy_method_to_enforce_bundling(void) {
    int64_t dummy_var = 0;
    dummy_var ^= ((int64_t) (void*) wire_manipulate_image);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_manipulation_input);
    dummy_var ^= ((int64_t) (void*) new_box_rgba);
    dummy_var ^= ((int64_t) (void*) new_list_photon_filter);
    dummy_var ^= ((int64_t) (void*) new_uint_8_list);
    dummy_var ^= ((int64_t) (void*) free_WireSyncReturnStruct);
    dummy_var ^= ((int64_t) (void*) store_dart_post_cobject);
    return dummy_var;
}