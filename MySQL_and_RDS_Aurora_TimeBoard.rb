timeboard "MySQL and RDS Aurora TimeBoard" do
  read_only false
  graphs do |*|
    definition do
      requests do |*|
        q "avg:aws.rds.cpuutilization{$scope,$cluster,$instance}"
      end
    end
    title "aws.rds.cpuutilization [percent]"
  end
  graphs do |*|
    definition do
      requests do |*|
        q "sum:aws.rds.cpucredit_usage{$scope,$cluster,$instance}"
      end
    end
    title "aws.rds.cpucredit_usage"
  end
  graphs do |*|
    definition do
      requests do |*|
        q "sum:aws.rds.cpucredit_balance{$scope,$cluster,$instance}"
      end
    end
    title "aws.rds.cpucredit_balance"
  end
  graphs do |*|
    definition do
      requests do |*|
        q "sum:aws.rds.bin_log_disk_usage{$scope,$cluster,$instance}"
      end
    end
    title "aws.rds.bin_log_disk_usage"
  end
  graphs do |*|
    definition do
      requests do |*|
        q "sum:aws.rds.database_connections{$scope,$cluster,$instance}"
      end
    end
    title "aws.rds.database_connections"
  end
  graphs do |*|
    definition do
      requests do |*|
        q "sum:aws.rds.freeable_memory{$scope,$cluster,$instance}"
      end
    end
    title "aws.rds.freeable_memory"
  end
  graphs do |*|
    definition do
      requests do |*|
        q "sum:aws.rds.free_storage_space{$scope,$cluster,$instance}"
      end
    end
    title "aws.rds.free_storage_space"
  end
  graphs do |*|
    definition do
      requests do |*|
        q "sum:aws.rds.swap_usage{$scope,$cluster,$instance}"
      end
    end
    title "aws.rds.swap_usage"
  end
  graphs do |*|
    definition do
      status "done"
      viz "timeseries"
      requests do |*|
        q "sum:aws.rds.update_throughput{$scope,$cluster,$instance}.as_rate()"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      requests do |*|
        q "sum:aws.rds.insert_throughput{$scope,$cluster,$instance}.as_rate()"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
      end
      requests do |*|
        q "sum:aws.rds.select_throughput{$scope,$cluster,$instance}.as_rate()"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
      end
      requests do |*|
        q "sum:aws.rds.delete_throughput{$scope,$cluster,$instance}.as_rate()"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
      end
      autoscale true
    end
    title "aws.rds.*_throughput"
  end
  graphs do |*|
    definition do
      status "done"
      viz "timeseries"
      requests do |*|
        q "sum:aws.rds.update_latency{$scope,$cluster,$instance}"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      requests do |*|
        q "sum:aws.rds.insert_latency{$scope,$cluster,$instance}"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
      end
      requests do |*|
        q "sum:aws.rds.select_latency{$scope,$cluster,$instance}"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
      end
      requests do |*|
        q "sum:aws.rds.delete_latency{$scope,$cluster,$instance}"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
      end
      autoscale true
    end
    title "aws.rds.*_latency [msec]"
  end
  graphs do |*|
    definition do
      requests do |*|
        q "sum:aws.rds.commit_throughput{$scope,$cluster,$instance}"
      end
    end
    title "aws.rds.commit_throughput"
  end
  graphs do |*|
    definition do
      requests do |*|
        q "sum:aws.rds.commit_latency{$scope,$cluster,$instance}"
      end
    end
    title "aws.rds.commit_latency"
  end
  graphs do |*|
    definition do
      requests do |*|
        q "sum:aws.rds.dmlthroughput{$scope,$cluster,$instance}"
      end
    end
    title "aws.rds.dmlthroughput"
  end
  graphs do |*|
    definition do
      requests do |*|
        q "sum:aws.rds.dmllatency{$scope,$cluster,$instance}"
      end
    end
    title "aws.rds.dmllatency"
  end
  graphs do |*|
    definition do
      requests do |*|
        q "sum:aws.rds.ddlthroughput{$scope,$cluster,$instance}"
      end
    end
    title "aws.rds.ddlthroughput"
  end
  graphs do |*|
    definition do
      requests do |*|
        q "sum:aws.rds.ddllatency{$scope,$cluster,$instance}"
      end
    end
    title "aws.rds.ddllatency"
  end
  graphs do |*|
    definition do
      requests do |*|
        q "sum:aws.rds.total_storage_space{$scope,$cluster,$instance}"
      end
    end
    title "aws.rds.total_storage_space"
  end
  graphs do |*|
    definition do
      requests do |*|
        q "avg:aws.rds.result_set_cache_hit_ratio{$scope,$cluster,$instance}"
      end
    end
    title "aws.rds.result_set_cache_hit_ratio [percent]"
  end
  graphs do |*|
    definition do
      status "done"
      viz "timeseries"
      requests do |*|
        q "avg:aws.rds.network_throughput{$scope,$cluster,$instance}.as_rate()"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      requests do |*|
        q "avg:aws.rds.network_receive_throughput{$scope,$cluster,$instance}.as_rate()"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
      end
      requests do |*|
        q "avg:aws.rds.network_transmit_throughput{$scope,$cluster,$instance}.as_rate()"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
      end
      autoscale true
    end
    title "aws.rds.network_throughput"
  end
  graphs do |*|
    definition do
      requests do |*|
        q "sum:aws.rds.login_failures{$scope,$cluster,$instance}"
      end
    end
    title "aws.rds.login_failures"
  end
  graphs do |*|
    definition do
      requests do |*|
        q "sum:aws.rds.free_local_storage{$scope,$cluster,$instance}"
      end
    end
    title "aws.rds.free_local_storage"
  end
  graphs do |*|
    definition do
      requests do |*|
        q "sum:aws.rds.deadlocks{$scope,$cluster,$instance}"
      end
    end
    title "aws.rds.deadlocks"
  end
  graphs do |*|
    definition do
      requests do |*|
        q "avg:aws.rds.buffer_cache_hit_ratio{$scope,$cluster,$instance}"
      end
    end
    title "aws.rds.buffer_cache_hit_ratio [percent]"
  end
  graphs do |*|
    definition do
      requests do |*|
        q "sum:aws.rds.blocked_transactions{$scope,$cluster,$instance}"
      end
    end
    title "aws.rds.blocked_transactions"
  end
  graphs do |*|
    definition do
      status "done"
      viz "timeseries"
      requests do |*|
        q "max:aws.rds.aurora_replica_lag_maximum{$scope,$cluster,$instance}"
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
    title "aws.rds.aurora_replica_lag_maximum"
  end
  graphs do |*|
    definition do
      status "done"
      viz "timeseries"
      requests do |*|
        q "max:aws.rds.aurora_replica_lag_minimum{$scope,$cluster,$instance}"
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
    title "aws.rds.aurora_replica_lag_miniimum"
  end
  graphs do |*|
    definition do
      status "done"
      viz "timeseries"
      requests do |*|
        q "avg:aws.rds.aurora_replica_lag{$scope,$cluster,$instance}"
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
    title "aws.rds.aurora_replica_lag"
  end
  graphs do |*|
    definition do
      requests do |*|
        q "sum:aws.rds.active_transactions{$scope,$cluster,$instance}"
      end
    end
    title "aws.rds.active_transactions"
  end
  graphs do |*|
    definition do
      requests do |*|
        q "sum:aws.rds.volume_bytes_used{$scope,$cluster,$instance}"
      end
    end
    title "aws.rds.volume_bytes_used"
  end
  graphs do |*|
    definition do
      status "done"
      viz "timeseries"
      requests do |*|
        q "sum:aws.rds.volume_read_iops{$scope,$cluster,$instance}.as_rate()"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      requests do |*|
        q "sum:aws.rds.volume_write_iops{$scope,$cluster,$instance}.as_rate()"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
      end
      autoscale true
    end
    title "aws.rds.volume_read_iops/write_iops"
  end
  graphs do |*|
    definition do
      status "done"
      viz "timeseries"
      requests do |*|
        q "sum:aws.rds.queries{$scope,$cluster,$instance}.as_count()"
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
    title "aws.rds.queries"
  end
  graphs do |*|
    definition do
      status "done"
      viz "timeseries"
      requests do |*|
        q "sum:aws.rds.cpuutilization.steal{$scope,$cluster,$instance}, sum:aws.rds.cpuutilization.idle{$scope,$cluster,$instance}, sum:aws.rds.cpuutilization.nice{$scope,$cluster,$instance}, sum:aws.rds.cpuutilization.irq{$scope,$cluster,$instance}, sum:aws.rds.cpuutilization.system{$scope,$cluster,$instance}, sum:aws.rds.cpuutilization.wait{$scope,$cluster,$instance}, sum:aws.rds.cpuutilization.user{$scope,$cluster,$instance}"
        aggregator "avg"
        style do
          width "normal"
          palette "cool"
          type "solid"
        end
        type "area"
        conditional_formats []
      end
      requests do |*|
        q "sum:aws.rds.cpuutilization.total{$scope,$cluster,$instance}"
        style do
          width "normal"
          palette "dog_classic"
          type "dotted"
        end
        type "line"
      end
      autoscale true
    end
    title "aws.rds.cpuutilization.*"
  end
  graphs do |*|
    definition do
      status "done"
      viz "timeseries"
      requests do |*|
        q "sum:aws.rds.load.1{$scope,$cluster,$instance}, sum:aws.rds.load.5{$scope,$cluster,$instance}, sum:aws.rds.load.15{$scope,$cluster,$instance}"
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
    title "aws.rds.load.*"
  end
  graphs do |*|
    definition do
      status "done"
      viz "timeseries"
      requests do |*|
        q "sum:aws.rds.process.cpuUsedPc{$scope,$cluster,$instance}"
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
    title "aws.rds.process.cpuUsedPc"
  end
  graphs do |*|
    definition do
      status "done"
      viz "timeseries"
      requests do |*|
        q "sum:aws.rds.memory.active{$scope,$cluster,$instance}, sum:aws.rds.memory.free{$scope,$cluster,$instance}"
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
    title "aws.rds.memory.free/active"
  end
  graphs do |*|
    definition do
      status "done"
      viz "timeseries"
      requests do |*|
        q "sum:aws.rds.process.memoryUsedPc{$scope,$cluster,$instance}"
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
    title "aws.rds.process.memoryUsedPc"
  end
  graphs do |*|
    definition do
      status "done"
      viz "timeseries"
      requests do |*|
        q "sum:aws.rds.swap.free{$scope,$cluster,$instance}, sum:aws.rds.swap.cached{$scope,$cluster,$instance}"
        aggregator "avg"
        style do
          width "normal"
          palette "cool"
          type "solid"
        end
        type "area"
        conditional_formats []
      end
      requests do |*|
        q "sum:aws.rds.swap.total{$scope,$cluster,$instance}"
        style do
          width "normal"
          palette "dog_classic"
          type "dotted"
        end
        type "line"
      end
      autoscale true
    end
    title "aws.rds.swap.*"
  end
  graphs do |*|
    definition do
      status "done"
      viz "timeseries"
      requests do |*|
        q "sum:aws.rds.filesystem.total{$scope,$cluster,$instance}"
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
    title "aws.rds.filesystem.total"
  end
  graphs do |*|
    definition do
      status "done"
      viz "timeseries"
      requests do |*|
        q "sum:aws.rds.diskio.readIOsPS{$scope,$cluster,$instance}, sum:aws.rds.diskio.writeIOsPS{$scope,$cluster,$instance}"
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
    title "aws.rds.diskio.*IOsPS"
  end
  graphs do |*|
    definition do
      status "done"
      viz "timeseries"
      requests do |*|
        q "sum:aws.rds.network.rx{$scope,$cluster,$instance}, sum:aws.rds.network.tx{$scope,$cluster,$instance}"
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
    title "aws.rds.network.*x"
  end
  graphs do |*|
    definition do
      status "done"
      viz "timeseries"
      requests do |*|
        q "sum:aws.rds.tasks.sleeping{$scope,$cluster,$instance}, sum:aws.rds.tasks.zombie{$scope,$cluster,$instance}, sum:aws.rds.tasks.stopped{$scope,$cluster,$instance}, sum:aws.rds.tasks.blocked{$scope,$cluster,$instance}, sum:aws.rds.tasks.running{$scope,$cluster,$instance}"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "area"
        conditional_formats []
      end
      autoscale true
    end
    title "aws.rds.memory.task.*"
  end
  graphs do |*|
    definition do
      status "done"
      viz "timeseries"
      requests do |*|
        q "avg:mysql.net.connections{$scope,$cluster,$instance}"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      requests do |*|
        q "avg:mysql.net.max_connections{$scope,$cluster,$instance}"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
      end
      autoscale true
    end
    title "mysql.net.connections"
  end
  graphs do |*|
    definition do
      status "done"
      viz "timeseries"
      requests do |*|
        q "avg:mysql.performance.questions{$scope,$cluster,$instance}"
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
    title "mysql.performance.questions"
  end
  graphs do |*|
    definition do
      status "done"
      viz "timeseries"
      requests do |*|
        q "avg:mysql.performance.slow_queries{$scope,$cluster,$instance}"
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
    title "mysql.performance.slow_queries"
  end
  graphs do |*|
    definition do
      status "done"
      viz "timeseries"
      requests do |*|
        q "avg:mysql.performance.threads_cached{$scope,$cluster,$instance}"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      requests do |*|
        q "avg:mysql.performance.threads_created{$scope,$cluster,$instance}.as_count()"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
      end
      requests do |*|
        q "avg:mysql.performance.threads_running{$scope,$cluster,$instance}"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
      end
      requests do |*|
        q "avg:mysql.performance.threads_connected{$scope,$cluster,$instance}"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
      end
      autoscale true
    end
    title "mysql.performance.threads_*"
  end
  graphs do |*|
    definition do
      status "done"
      viz "timeseries"
      requests do |*|
        q "avg:mysql.performance.thread_cache_size{$scope,$cluster,$instance}"
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
    title "mysql.performance.thread_cache_size"
  end
  graphs do |*|
    definition do
      status "done"
      viz "timeseries"
      requests do |*|
        q "avg:mysql.performance.com_load{$scope,$cluster,$instance}"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      requests do |*|
        q "avg:mysql.performance.com_delete{$scope,$cluster,$instance}"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
      end
      requests do |*|
        q "avg:mysql.performance.com_insert{$scope,$cluster,$instance}"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
      end
      requests do |*|
        q "avg:mysql.performance.com_select{$scope,$cluster,$instance}"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
      end
      requests do |*|
        q "avg:mysql.performance.com_update{$scope,$cluster,$instance}"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
      end
      requests do |*|
        q "avg:mysql.performance.com_replace{$scope,$cluster,$instance}"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
      end
      requests do |*|
        q "avg:mysql.performance.com_delete_multi{$scope,$cluster,$instance}"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
      end
      requests do |*|
        q "avg:mysql.performance.com_update_multi{$scope,$cluster,$instance}"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
      end
      requests do |*|
        q "avg:mysql.performance.com_insert_select{$scope,$cluster,$instance}"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
      end
      requests do |*|
        q "avg:mysql.performance.com_replace_select{$scope,$cluster,$instance}"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
      end
      autoscale true
    end
    title "mysql.performance.com_*"
  end
  graphs do |*|
    definition do
      status "done"
      viz "timeseries"
      requests do |*|
        q "avg:mysql.performance.select_full_join{$scope,$cluster,$instance}"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      requests do |*|
        q "avg:mysql.performance.select_full_range_join{$scope,$cluster,$instance}"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
      end
      requests do |*|
        q "avg:mysql.performance.select_range{$scope,$cluster,$instance}"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
      end
      requests do |*|
        q "avg:mysql.performance.select_range_check{$scope,$cluster,$instance}"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
      end
      requests do |*|
        q "avg:mysql.performance.select_scan{$scope,$cluster,$instance}"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
      end
      autoscale true
    end
    title "mysql.performance.select_*"
  end
  graphs do |*|
    definition do
      status "done"
      viz "timeseries"
      requests do |*|
        q "avg:mysql.performance.sort_merge_passes{$scope,$cluster,$instance}"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      requests do |*|
        q "avg:mysql.performance.sort_range{$scope,$cluster,$instance}"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
      end
      requests do |*|
        q "avg:mysql.performance.sort_rows{$scope,$cluster,$instance}"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
      end
      requests do |*|
        q "avg:mysql.performance.sort_scan{$scope,$cluster,$instance}"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
      end
      autoscale true
    end
    title "mysql.performance.sort_*"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "avg:mysql.performance.handler_write{$scope,$cluster,$instance}"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      requests do |*|
        q "avg:mysql.performance.handler_commit{$scope,$cluster,$instance}"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
      end
      requests do |*|
        q "avg:mysql.performance.handler_update{$scope,$cluster,$instance}"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
      end
      requests do |*|
        q "avg:mysql.performance.handler_delete{$scope,$cluster,$instance}"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
      end
      requests do |*|
        q "avg:mysql.performance.handler_prepare{$scope,$cluster,$instance}"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
      end
      requests do |*|
        q "avg:mysql.performance.handler_read_key{$scope,$cluster,$instance}"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
      end
      requests do |*|
        q "avg:mysql.performance.handler_read_rnd{$scope,$cluster,$instance}"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
      end
      requests do |*|
        q "avg:mysql.performance.handler_rollback{$scope,$cluster,$instance}"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
      end
      requests do |*|
        q "avg:mysql.performance.handler_read_next{$scope,$cluster,$instance}"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
      end
      requests do |*|
        q "avg:mysql.performance.handler_read_prev{$scope,$cluster,$instance}"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
      end
      requests do |*|
        q "avg:mysql.performance.handler_read_first{$scope,$cluster,$instance}"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
      end
      requests do |*|
        q "avg:mysql.performance.handler_read_rnd_next{$scope,$cluster,$instance}"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
      end
      autoscale true
    end
    title "mysql.performance.handler_*"
  end
  graphs do |*|
    definition do
      status "done"
      viz "timeseries"
      requests do |*|
        q "avg:mysql.performance.created_tmp_tables{$scope,$cluster,$instance}"
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
    title "mysql.performance.created_tmp_tables"
  end
  graphs do |*|
    definition do
      status "done"
      viz "timeseries"
      requests do |*|
        q "avg:mysql.performance.created_tmp_disk_tables{$scope,$cluster,$instance}"
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
    title "mysql.performance.created_tmp_disk_tables"
  end
  graphs do |*|
    definition do
      status "done"
      viz "timeseries"
      requests do |*|
        q "avg:mysql.performance.created_tmp_files{$scope,$cluster,$instance}"
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
    title "mysql.performance.created_tmp_files"
  end
  graphs do |*|
    definition do
      status "done"
      viz "timeseries"
      requests do |*|
        q "avg:mysql.performance.key_cache_utilization{$scope,$cluster,$instance}*100"
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
    title "mysql.performance.key_cache_utilization (persent)"
  end
  graphs do |*|
    definition do
      status "done"
      viz "timeseries"
      requests do |*|
        q "avg:mysql.performance.open_files{$scope,$cluster,$instance}"
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
    title "mysql.performance.open_files"
  end
  graphs do |*|
    definition do
      status "done"
      viz "timeseries"
      requests do |*|
        q "avg:mysql.performance.open_tables{$scope,$cluster,$instance}"
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
    title "mysql.performance.open_tables"
  end
  graphs do |*|
    definition do
      status "done"
      viz "timeseries"
      requests do |*|
        q "avg:mysql.performance.opened_tables{$scope,$cluster,$instance}"
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
    title "mysql.performance.opened_tables"
  end
  graphs do |*|
    definition do
      status "done"
      viz "timeseries"
      requests do |*|
        q "rate(avg:mysql.performance.table_locks_waited{$scope,$cluster,$instance})"
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
    title "mysql.performance.table_locks_waited"
  end
  graphs do |*|
    definition do
      requests do |*|
        q "avg:mysql.performance.user_time{$scope,$cluster,$instance}"
      end
    end
    title "mysql.performance.user_time"
  end
  graphs do |*|
    definition do
      status "done"
      viz "timeseries"
      requests do |*|
        q "avg:mysql.replication.seconds_behind_master{$scope,$cluster,$instance}"
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
    title "mysql.replication.seconds_behind_master"
  end
  graphs do |*|
    definition do
      status "done"
      viz "timeseries"
      requests do |*|
        q "avg:mysql.replication.slave_running{$scope,$cluster,$instance}"
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
    title "mysql.replication.slave_running"
  end
  graphs do |*|
    definition do
      status "done"
      viz "timeseries"
      requests do |*|
        q "avg:mysql.replication.slaves_connected{$scope,$cluster,$instance}"
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
    title "mysql.replication.slaves_connected"
  end
  graphs do |*|
    definition do
      status "done"
      viz "timeseries"
      requests do |*|
        q "avg:mysql.innodb.buffer_pool_free{$scope,$cluster,$instance}, avg:mysql.innodb.buffer_pool_used{$scope,$cluster,$instance}"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "area"
        conditional_formats []
      end
      requests do |*|
        q "avg:mysql.innodb.buffer_pool_total{$scope,$cluster,$instance}"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
      end
      autoscale true
    end
    title "mysql.innodb.buffer_pool_*"
  end
  graphs do |*|
    definition do
      status "done"
      viz "timeseries"
      requests do |*|
        q "avg:mysql.innodb.buffer_pool_utilization{$scope,$cluster,$instance}*100"
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
    title "mysql.innodb.buffer_pool_utilization"
  end
  graphs do |*|
    definition do
      status "done"
      viz "timeseries"
      requests do |*|
        q "avg:mysql.innodb.data_reads{$scope,$cluster,$instance}"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats []
      end
      requests do |*|
        q "avg:mysql.innodb.data_writes{$scope,$cluster,$instance}"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
      end
      autoscale true
    end
    title "mysql.innodb.data_reads/writes"
  end
  graphs do |*|
    definition do
      status "done"
      viz "timeseries"
      requests do |*|
        q "avg:mysql.innodb.os_log_fsyncs{$scope,$cluster,$instance}"
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
    title "mysql.innodb.os_log_fsyncs"
  end
  graphs do |*|
    definition do
      status "done"
      viz "timeseries"
      requests do |*|
        q "avg:mysql.innodb.current_row_locks{$scope,$cluster,$instance}"
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
    title "mysql.innodb.current_row_locks"
  end
  graphs do |*|
    definition do
      status "error"
      viz "timeseries"
      requests do |*|
        q "avg:mysql.innodb.mutex_os_waits{$scope,$cluster,$instance}"
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
    title "mysql.innodb.mutex_os_waits"
  end
  graphs do |*|
    definition do
      status "done"
      viz "timeseries"
      requests do |*|
        q "avg:mysql.innodb.mutex_spin_rounds{$scope,$cluster,$instance}"
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
    title "mysql.innodb.mutex_spin_rounds"
  end
  graphs do |*|
    definition do
      status "done"
      viz "timeseries"
      requests do |*|
        q "avg:mysql.innodb.mutex_spin_waits{$scope,$cluster,$instance}"
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
    title "mysql.innodb.mutex_spin_wait"
  end
  graphs do |*|
    definition do
      status "done"
      viz "timeseries"
      requests do |*|
        q "avg:mysql.innodb.row_lock_time{$scope,$cluster,$instance}"
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
    title "mysql.innodb.row_lock_time"
  end
  graphs do |*|
    definition do
      status "done"
      viz "timeseries"
      requests do |*|
        q "avg:mysql.innodb.row_lock_waits{$scope,$cluster,$instance}"
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
    title "mysql.innodb.row_lock_waits"
  end
  template_variables do |*|
    default "*"
    prefix nil
    name "scope"
  end
  template_variables do |*|
    default nil
    prefix "dbclusteridentifier"
    name "cluster"
  end
  template_variables do |*|
    default "*"
    prefix "dbinstanceidentifier"
    name "instance"
  end
  description "MySQL and RDS Aurora TimeBoard"
  title "MySQL and RDS Aurora TimeBoard"
end
