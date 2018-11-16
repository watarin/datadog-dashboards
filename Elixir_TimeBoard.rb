timeboard "Elixir TimeBoard" do
  read_only false
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "per_second(sum:prometheus.http_request_duration_microseconds.count{$scope,upper_bound:10.0}), per_second(sum:prometheus.http_request_duration_microseconds.count{$scope,upper_bound:100.0}),per_second(sum:prometheus.http_request_duration_microseconds.count{$scope,upper_bound:1000.0}),per_second(sum:prometheus.http_request_duration_microseconds.count{$scope,upper_bound:10000.0}),per_second(sum:prometheus.http_request_duration_microseconds.count{$scope,upper_bound:100000.0}),per_second(sum:prometheus.http_request_duration_microseconds.count{$scope,upper_bound:300000.0}),per_second(sum:prometheus.http_request_duration_microseconds.count{$scope,upper_bound:500000.0}),per_second(sum:prometheus.http_request_duration_microseconds.count{$scope,upper_bound:750000.0}),per_second(sum:prometheus.http_request_duration_microseconds.count{$scope,upper_bound:1000000.0}),per_second(sum:prometheus.http_request_duration_microseconds.count{$scope,upper_bound:1500000.0}),per_second(sum:prometheus.http_request_duration_microseconds.count{$scope,upper_bound:2000000.0}),per_second(sum:prometheus.http_request_duration_microseconds.count{$scope,upper_bound:3000000.0}),per_second(sum:prometheus.http_request_duration_microseconds.count{$scope,upper_bound:inf})"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      autoscale true
    end
    title "http_request_duration_microseconds.count [/sec]"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "per_second(sum:prometheus.http_requests_total{$scope})"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      autoscale true
    end
    title "http_requests_total [/sec]"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "per_second(sum:prometheus.ecto_queue_duration_microseconds.count{$scope,upper_bound:10.0}), per_second(sum:prometheus.ecto_queue_duration_microseconds.count{$scope,upper_bound:100.0}),per_second(sum:prometheus.ecto_queue_duration_microseconds.count{$scope,upper_bound:1000.0}),per_second(sum:prometheus.ecto_queue_duration_microseconds.count{$scope,upper_bound:10000.0}),per_second(sum:prometheus.ecto_queue_duration_microseconds.count{$scope,upper_bound:100000.0}),per_second(sum:prometheus.ecto_queue_duration_microseconds.count{$scope,upper_bound:300000.0}),per_second(sum:prometheus.ecto_queue_duration_microseconds.count{$scope,upper_bound:500000.0}),per_second(sum:prometheus.ecto_queue_duration_microseconds.count{$scope,upper_bound:750000.0}),per_second(sum:prometheus.ecto_queue_duration_microseconds.count{$scope,upper_bound:1000000.0}),per_second(sum:prometheus.ecto_queue_duration_microseconds.count{$scope,upper_bound:1500000.0}),per_second(sum:prometheus.ecto_queue_duration_microseconds.count{$scope,upper_bound:2000000.0}),per_second(sum:prometheus.ecto_queue_duration_microseconds.count{$scope,upper_bound:3000000.0}),per_second(sum:prometheus.ecto_queue_duration_microseconds.count{$scope,upper_bound:inf})"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      autoscale true
    end
    title "ecto_queue_duration_microseconds.count [/sec]"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "per_second(sum:prometheus.ecto_query_duration_microseconds.count{$scope,upper_bound:10.0}), per_second(sum:prometheus.ecto_query_duration_microseconds.count{$scope,upper_bound:100.0}),per_second(sum:prometheus.ecto_query_duration_microseconds.count{$scope,upper_bound:1000.0}),per_second(sum:prometheus.ecto_query_duration_microseconds.count{$scope,upper_bound:10000.0}),per_second(sum:prometheus.ecto_query_duration_microseconds.count{$scope,upper_bound:100000.0}),per_second(sum:prometheus.ecto_query_duration_microseconds.count{$scope,upper_bound:300000.0}),per_second(sum:prometheus.ecto_query_duration_microseconds.count{$scope,upper_bound:500000.0}),per_second(sum:prometheus.ecto_query_duration_microseconds.count{$scope,upper_bound:750000.0}),per_second(sum:prometheus.ecto_query_duration_microseconds.count{$scope,upper_bound:1000000.0}),per_second(sum:prometheus.ecto_query_duration_microseconds.count{$scope,upper_bound:1500000.0}),per_second(sum:prometheus.ecto_query_duration_microseconds.count{$scope,upper_bound:2000000.0}),per_second(sum:prometheus.ecto_query_duration_microseconds.count{$scope,upper_bound:3000000.0}),per_second(sum:prometheus.ecto_query_duration_microseconds.count{$scope,upper_bound:inf})"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      autoscale true
    end
    title "prometheus.ecto_query_duration_microseconds.count [/sec]"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "per_second(sum:prometheus.ecto_decode_duration_microseconds.count{$scope,upper_bound:10.0}), per_second(sum:prometheus.ecto_decode_duration_microseconds.count{$scope,upper_bound:100.0}),per_second(sum:prometheus.ecto_decode_duration_microseconds.count{$scope,upper_bound:1000.0}),per_second(sum:prometheus.ecto_decode_duration_microseconds.count{$scope,upper_bound:10000.0}),per_second(sum:prometheus.ecto_decode_duration_microseconds.count{$scope,upper_bound:100000.0}),per_second(sum:prometheus.ecto_decode_duration_microseconds.count{$scope,upper_bound:300000.0}),per_second(sum:prometheus.ecto_decode_duration_microseconds.count{$scope,upper_bound:500000.0}),per_second(sum:prometheus.ecto_decode_duration_microseconds.count{$scope,upper_bound:750000.0}),per_second(sum:prometheus.ecto_decode_duration_microseconds.count{$scope,upper_bound:1000000.0}),per_second(sum:prometheus.ecto_decode_duration_microseconds.count{$scope,upper_bound:1500000.0}),per_second(sum:prometheus.ecto_decode_duration_microseconds.count{$scope,upper_bound:2000000.0}),per_second(sum:prometheus.ecto_decode_duration_microseconds.count{$scope,upper_bound:3000000.0}),per_second(sum:prometheus.ecto_decode_duration_microseconds.count{$scope,upper_bound:inf})"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      autoscale true
    end
    title "prometheus.ecto_decode_duration_microseconds.count [/sec]"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "per_second(sum:prometheus.ecto_db_query_duration_microseconds.count{$scope,upper_bound:10.0}), per_second(sum:prometheus.ecto_db_query_duration_microseconds.count{$scope,upper_bound:100.0}),per_second(sum:prometheus.ecto_db_query_duration_microseconds.count{$scope,upper_bound:1000.0}),per_second(sum:prometheus.ecto_db_query_duration_microseconds.count{$scope,upper_bound:10000.0}),per_second(sum:prometheus.ecto_db_query_duration_microseconds.count{$scope,upper_bound:100000.0}),per_second(sum:prometheus.ecto_db_query_duration_microseconds.count{$scope,upper_bound:300000.0}),per_second(sum:prometheus.ecto_db_query_duration_microseconds.count{$scope,upper_bound:500000.0}),per_second(sum:prometheus.ecto_db_query_duration_microseconds.count{$scope,upper_bound:750000.0}),per_second(sum:prometheus.ecto_db_query_duration_microseconds.count{$scope,upper_bound:1000000.0}),per_second(sum:prometheus.ecto_db_query_duration_microseconds.count{$scope,upper_bound:1500000.0}),per_second(sum:prometheus.ecto_db_query_duration_microseconds.count{$scope,upper_bound:2000000.0}),per_second(sum:prometheus.ecto_db_query_duration_microseconds.count{$scope,upper_bound:3000000.0}),per_second(sum:prometheus.ecto_db_query_duration_microseconds.count{$scope,upper_bound:inf})"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      autoscale true
    end
    title "ecto_queue_duration_microsecondsecto_db_query_duration_microseconds.count [/sec]"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "per_second(sum:prometheus.telemetry_scrape_duration_seconds.count{$scope})"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      autoscale true
    end
    title "telemetry_scrape_duration_seconds [/sec]"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "per_second(sum:prometheus.telemetry_scrape_size_bytes.count{$scope})"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      autoscale true
    end
    title "telemetry_scrape_size_bytes [/sec]"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:prometheus.erlang_vm_atom_count{$scope}"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      autoscale true
    end
    title "erlang_vm_atom_count"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:prometheus.erlang_vm_atom_limit{$scope}"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      autoscale true
    end
    title "erlang_vm_atom_limit"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:prometheus.erlang_vm_dirty_cpu_schedulers{$scope}"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      autoscale true
    end
    title "erlang_vm_dirty_cpu_schedulers"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:prometheus.erlang_vm_dirty_cpu_schedulers_online{$scope}"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      autoscale true
    end
    title "erlang_vm_dirty_cpu_schedulers_online"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:prometheus.erlang_vm_dirty_io_schedulers{$scope}"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      autoscale true
    end
    title "erlang_vm_dirty_io_schedulers"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:prometheus.erlang_vm_ets_limit{$scope}"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      autoscale true
    end
    title "erlang_vm_ets_limit"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:prometheus.erlang_vm_logical_processors{$scope}"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      autoscale true
    end
    title "erlang_vm_logical_processors"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:prometheus.erlang_vm_logical_processors_available{$scope}"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      autoscale true
    end
    title "erlang_vm_logical_processors_available"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:prometheus.erlang_vm_logical_processors_online{$scope}"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      autoscale true
    end
    title "erlang_vm_logical_processors_online"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:prometheus.erlang_vm_memory_atom_bytes_total{$scope}"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      autoscale true
    end
    title "erlang_vm_memory_atom_bytes_total"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:prometheus.erlang_vm_memory_bytes_total{$scope}"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      autoscale true
    end
    title "erlang_vm_memory_bytes_total"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:prometheus.erlang_vm_memory_dets_tables{$scope}"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      autoscale true
    end
    title "erlang_vm_memory_dets_tables"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:prometheus.erlang_vm_memory_ets_tables{$scope}"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      autoscale true
    end
    title "erlang_vm_memory_ets_tables"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:prometheus.erlang_vm_memory_processes_bytes_total{$scope}"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      autoscale true
    end
    title "erlang_vm_memory_processes_bytes_total"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:prometheus.erlang_vm_memory_system_bytes_total{$scope}"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      autoscale true
    end
    title "erlang_vm_memory_system_bytes_total"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:prometheus.erlang_vm_port_count{$scope}"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      autoscale true
    end
    title "erlang_vm_port_count"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:prometheus.erlang_vm_port_limit{$scope}"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      autoscale true
    end
    title "erlang_vm_port_limit"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:prometheus.erlang_vm_process_count{$scope}"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      autoscale true
    end
    title "erlang_vm_process_count"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:prometheus.erlang_vm_process_limit{$scope}"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      autoscale true
    end
    title "erlang_vm_process_limit"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:prometheus.erlang_vm_schedulers{$scope}"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      autoscale true
    end
    title "erlang_vm_schedulers"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:prometheus.erlang_vm_schedulers_online{$scope}"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      autoscale true
    end
    title "erlang_vm_schedulers_online"
  end
  graphs do |*|
    definition do
      viz "query_value"
      requests do |*|
        q "sum:prometheus.erlang_vm_smp_support{$scope}"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type nil
        conditional_formats []
      end
      autoscale true
    end
    title "erlang_vm_smp_support"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "per_second(sum:prometheus.erlang_vm_statistics_bytes_output_total{$scope})"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      autoscale true
    end
    title "erlang_vm_statistics_bytes_output_total [/sec]"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "per_second(sum:prometheus.erlang_vm_statistics_bytes_received_total{$scope})"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      autoscale true
    end
    title "erlang_vm_statistics_bytes_received_total [/sec]"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "per_second(sum:prometheus.erlang_vm_statistics_context_switches{$scope})"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      autoscale true
    end
    title "erlang_vm_statistics_context_switches [/sec]"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:prometheus.erlang_vm_statistics_dirty_cpu_run_queue_length{$scope}"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      autoscale true
    end
    title "erlang_vm_statistics_dirty_cpu_run_queue_length"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:prometheus.erlang_vm_statistics_dirty_io_run_queue_length {$scope}"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      autoscale true
    end
    title "erlang_vm_statistics_dirty_io_run_queue_length "
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "per_second(sum:prometheus.erlang_vm_statistics_garbage_collection_bytes_reclaimed{$scope})"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      autoscale true
    end
    title "erlang_vm_statistics_garbage_collection_bytes_reclaimed [/sec]"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "per_second(sum:prometheus.erlang_vm_statistics_garbage_collection_number_of_gcs{$scope})"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      autoscale true
    end
    title "erlang_vm_statistics_garbage_collection_number_of_gcs [/sec]"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "per_second(sum:prometheus.erlang_vm_statistics_garbage_collection_words_reclaimed{$scope})"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      autoscale true
    end
    title "erlang_vm_statistics_garbage_collection_words_reclaimed [/sec]"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "per_second(sum:prometheus.erlang_vm_statistics_reductions_total{$scope})"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      autoscale true
    end
    title "erlang_vm_statistics_reductions_total [/sec]"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:prometheus.erlang_vm_statistics_run_queues_length_total{$scope}"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      autoscale true
    end
    title "erlang_vm_statistics_run_queues_length_total"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "per_second(sum:prometheus.erlang_vm_statistics_runtime_milliseconds{$scope})"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      autoscale true
    end
    title "erlang_vm_statistics_runtime_milliseconds [/sec]"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "per_second(sum:prometheus.erlang_vm_statistics_wallclock_time_milliseconds{$scope})"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      autoscale true
    end
    title "erlang_vm_statistics_wallclock_time_milliseconds [/sec]"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:prometheus.erlang_vm_thread_pool_size{$scope}"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      autoscale true
    end
    title "erlang_vm_thread_pool_size"
  end
  graphs do |*|
    definition do
      viz "query_value"
      status "done"
      requests do |*|
        q "sum:prometheus.erlang_vm_threads{$scope}"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      autoscale true
    end
    title "erlang_vm_threads"
  end
  graphs do |*|
    definition do
      viz "query_value"
      status "done"
      requests do |*|
        q "sum:prometheus.erlang_vm_time_correction{$scope}"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      autoscale true
    end
    title "erlang_vm_time_correction"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      requests do |*|
        q "avg:prometheus.http_requests_total{autoscaling_group:dev_staging-api-group}"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      autoscale true
    end
    title "Avg of prometheus.http_requests_total over autoscaling_group:dev_staging-api-..."
  end
  template_variables do |*|
    default "*"
    prefix nil
    name "scope"
  end
  description "created by watanabe"
  title "Elixir TimeBoard"
end
