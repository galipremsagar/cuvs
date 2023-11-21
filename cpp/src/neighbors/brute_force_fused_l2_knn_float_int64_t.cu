
/*
 * Copyright (c) 2023, NVIDIA CORPORATION.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/*
 * NOTE: this file is generated by brute_force_00_generate.py
 *
 * Make changes there and run in this directory:
 *
 * > python brute_force_00_generate.py
 *
 */

#include <cstdint>
#include <cuvs/neighbors/brute_force-inl.cuh>

#define instantiate_raft_neighbors_brute_force_fused_l2_knn(            \
  value_t, idx_t, idx_layout, query_layout)                             \
  template void cuvs::neighbors::brute_force::fused_l2_knn(             \
    raft::resources const& handle,                                      \
    raft::device_matrix_view<const value_t, idx_t, idx_layout> index,   \
    raft::device_matrix_view<const value_t, idx_t, query_layout> query, \
    raft::device_matrix_view<idx_t, idx_t, row_major> out_inds,         \
    raft::device_matrix_view<value_t, idx_t, row_major> out_dists,      \
    cuvs::distance::DistanceType metric);

instantiate_raft_neighbors_brute_force_fused_l2_knn(float,
                                                    int64_t,
                                                    raft::row_major,
                                                    raft::row_major);

#undef instantiate_raft_neighbors_brute_force_fused_l2_knn
