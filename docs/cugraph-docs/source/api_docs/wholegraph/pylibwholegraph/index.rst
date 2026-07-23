pylibwholegraph API
===================

The APIs below are the public WholeGraph Python and PyTorch interfaces in the
26.10 nightly package.

Initialization
--------------

.. autosummary::
   :toctree: ../../api/wholegraph/pylibwholegraph

   pylibwholegraph.torch.init
   pylibwholegraph.torch.init_torch_env
   pylibwholegraph.torch.init_torch_env_and_create_wm_comm
   pylibwholegraph.torch.finalize

Communicators
-------------

.. autosummary::
   :toctree: ../../api/wholegraph/pylibwholegraph

   pylibwholegraph.torch.WholeMemoryCommunicator
   pylibwholegraph.torch.comm.set_world_info
   pylibwholegraph.torch.create_group_communicator
   pylibwholegraph.torch.split_communicator
   pylibwholegraph.torch.destroy_communicator
   pylibwholegraph.torch.get_global_communicator
   pylibwholegraph.torch.get_local_node_communicator
   pylibwholegraph.torch.get_local_device_communicator
   pylibwholegraph.torch.get_local_mnnvl_communicator
   pylibwholegraph.torch.comm.comm_set_distributed_backend

Tensors
-------

.. autosummary::
   :toctree: ../../api/wholegraph/pylibwholegraph

   pylibwholegraph.torch.WholeMemoryTensor
   pylibwholegraph.torch.create_wholememory_tensor
   pylibwholegraph.torch.create_wholememory_tensor_from_filelist
   pylibwholegraph.torch.destroy_wholememory_tensor

Embeddings and optimizers
-------------------------

.. autosummary::
   :toctree: ../../api/wholegraph/pylibwholegraph

   pylibwholegraph.torch.WholeMemoryOptimizer
   pylibwholegraph.torch.create_wholememory_optimizer
   pylibwholegraph.torch.destroy_wholememory_optimizer
   pylibwholegraph.torch.WholeMemoryCachePolicy
   pylibwholegraph.torch.create_wholememory_cache_policy
   pylibwholegraph.torch.create_builtin_cache_policy
   pylibwholegraph.torch.destroy_wholememory_cache_policy
   pylibwholegraph.torch.WholeMemoryEmbedding
   pylibwholegraph.torch.create_embedding
   pylibwholegraph.torch.create_embedding_from_filelist
   pylibwholegraph.torch.destroy_embedding
   pylibwholegraph.torch.WholeMemoryEmbeddingModule

Graph storage and operations
----------------------------

.. autosummary::
   :toctree: ../../api/wholegraph/pylibwholegraph

   pylibwholegraph.torch.GraphStructure
   pylibwholegraph.torch.graph_ops.append_unique
   pylibwholegraph.torch.graph_ops.add_csr_self_loop
   pylibwholegraph.torch.wholegraph_ops.unweighted_sample_without_replacement
   pylibwholegraph.torch.wholegraph_ops.weighted_sample_without_replacement

Distributed launch
------------------

.. autosummary::
   :toctree: ../../api/wholegraph/pylibwholegraph

   pylibwholegraph.torch.add_distributed_launch_options
   pylibwholegraph.torch.distributed_launch
   pylibwholegraph.torch.get_rank
   pylibwholegraph.torch.get_world_size
   pylibwholegraph.torch.get_local_rank
   pylibwholegraph.torch.get_local_size

Training and data-loading helpers
---------------------------------

.. autosummary::
   :toctree: ../../api/wholegraph/pylibwholegraph

   pylibwholegraph.torch.add_common_graph_options
   pylibwholegraph.torch.add_common_model_options
   pylibwholegraph.torch.add_common_sampler_options
   pylibwholegraph.torch.add_training_options
   pylibwholegraph.torch.add_dataloader_options
   pylibwholegraph.torch.add_node_classfication_options
   pylibwholegraph.torch.set_framework
   pylibwholegraph.torch.create_gnn_layers
   pylibwholegraph.torch.create_sub_graph
   pylibwholegraph.torch.HomoGNNModel
   pylibwholegraph.torch.create_node_classification_datasets
   pylibwholegraph.torch.get_train_dataloader
   pylibwholegraph.torch.get_valid_test_dataloader
   pylibwholegraph.torch.compile_cpp_extension
   pylibwholegraph.torch.get_part_file_name
   pylibwholegraph.torch.get_part_file_list
