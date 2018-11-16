timeboard "ElastiCache Redis TimeBoard" do
  read_only false
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "top(avg:aws.elasticache.cpuutilization{$scope,$cluster_id,$node_id} by {cacheclusterid,cachenodeid}, 10, 'mean', 'desc')"
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
    title "CPU utilization by node (top 10)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "top(avg:aws.elasticache.engine_cpuutilization{$scope,$cluster_id,$node_id} by {cacheclusterid,cachenodeid}, 10, 'mean', 'desc')"
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
    title "Engine CPU utilization by node (top 10)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "top(avg:aws.elasticache.network_bytes_in{$scope,$cluster_id,$node_id} by {cacheclusterid,cachenodeid}.as_rate(), 10, 'mean', 'desc')"
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
    title "Network incoming bytes by node (top 10)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "top(avg:aws.elasticache.network_bytes_out{$scope,$cluster_id,$node_id} by {cacheclusterid,cachenodeid}.as_rate(), 10, 'mean', 'desc')"
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
    title "Network outgoing bytes by node (top 10)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.elasticache.curr_connections{$scope,$cluster_id} by {cacheclusterid}"
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
    title "Connections by cluster"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.elasticache.new_connections{$scope,$cluster_id} by {cacheclusterid}.as_rate()"
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
    title "New Connections by cluster"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.elasticache.curr_items{$scope,$cluster_id} by {cacheclusterid}"
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
    title "Items by cluster"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "100*sum:aws.elasticache.cache_hits{$scope,$cluster_id} by {cacheclusterid}.as_count()/(sum:aws.elasticache.cache_hits{$scope,$cluster_id} by {cacheclusterid}.as_count()+sum:aws.elasticache.cache_misses{$scope,$cluster_id} by {cacheclusterid}.as_count())"
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
    title "Hit rate (%) by cluster"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "top(sum:aws.elasticache.get_type_cmds{$scope,$cluster_id} by {cacheclusterid}.as_rate(), 10, 'mean', 'desc')"
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
    title "Get commands by cluster (top 10)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "top(sum:aws.elasticache.set_type_cmds{$scope,$cluster_id} by {cacheclusterid}.as_rate(), 10, 'mean', 'desc')"
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
    title "Set commands by cluster (top 10)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "top(sum:aws.elasticache.hash_based_cmds{$scope,$cluster_id} by {cacheclusterid}.as_rate(), 10, 'mean', 'desc')"
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
    title "Hash based commands by cluster (top 10)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "top(sum:aws.elasticache.hyper_log_log_based_cmds{$scope,$cluster_id} by {cacheclusterid}.as_rate(), 10, 'mean', 'desc')"
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
    title "HyperLogLog based commands by cluster (top 10)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "top(sum:aws.elasticache.key_based_cmds{$scope,$cluster_id} by {cacheclusterid}.as_rate(), 10, 'mean', 'desc')"
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
    title "Key based commands by cluster (top 10)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "top(sum:aws.elasticache.list_based_cmds{$scope,$cluster_id} by {cacheclusterid}.as_rate(), 10, 'mean', 'desc')"
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
    title "List based commands by cluster (top 10)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "top(sum:aws.elasticache.set_based_cmds{$scope,$cluster_id} by {cacheclusterid}.as_rate(), 10, 'mean', 'desc')"
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
    title "Set based commands by cluster (top 10)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "top(sum:aws.elasticache.sorted_set_based_cmds{$scope,$cluster_id} by {cacheclusterid}.as_rate(), 10, 'mean', 'desc')"
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
    title "Sorted Set based commands by cluster (top 10)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "top(sum:aws.elasticache.string_based_cmds{$scope,$cluster_id} by {cacheclusterid}.as_rate(), 10, 'mean', 'desc')"
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
    title "String based commands by cluster (top 10)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "top(sum:aws.elasticache.geo_spatial_based_cmds{$scope,$cluster_id} by {cacheclusterid}.as_rate(), 10, 'mean', 'desc')"
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
    title "geo Spatial based commands by cluster (top 10)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.elasticache.swap_usage{$scope,$cluster_id} by {cacheclusterid}"
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
    title "Swap usage by cluster"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.elasticache.evictions{$scope,$cluster_id} by {cacheclusterid}.as_count()"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "bars"
        conditional_formats []
      end
      autoscale true
    end
    title "Evictions by cluster"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.elasticache.reclaimed{$scope,$cluster_id} by {cacheclusterid}.as_count()"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "bars"
        conditional_formats []
      end
      autoscale true
    end
    title "Expired items by cluster"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.elasticache.bytes_used_for_cache{$scope,$cluster_id} by {cacheclusterid}"
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
    title "Memory usage by cluster"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "min:aws.elasticache.freeable_memory{$scope,$cluster_id} by {cacheclusterid}"
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
    title "Min available system memory by cluster"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "avg:redis.net.commands{$scope,$cluster_id,$node_id} by {redis_host}"
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
    title "redis.net.commands"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "(avg:redis.stats.keyspace_hits{$scope,$cluster_id,$node_id} by {redis_host}/(avg:redis.stats.keyspace_hits{$scope} by {redis_host}+avg:redis.stats.keyspace_misses{$scope,$cluster_id,$node_id} by {redis_host}))*100"
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
    title "redis Cache hit rate"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "avg:redis.slowlog.micros.95percentile{$scope,$cluster_id,$node_id} by {command,redis_host}"
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
    title "redis.slowlog.micros.95percentile by command"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "avg:redis.info.latency_ms{$scope,$cluster_id,$node_id} by {redis_host}"
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
    title "redis.info.latency_ms"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "per_minute(avg:redis.keys.evicted{$scope,$cluster_id,$node_id} by {redis_host})"
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
    title "redis.keys.evicted [/min]"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "avg:redis.mem.fragmentation_ratio{$scope,$cluster_id,$node_id} by {redis_host}"
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
    title "redis.mem.fragmentation_ratio"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "avg:redis.clients.blocked{$scope,$cluster_id,$node_id} by {redis_host}"
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
    title "redis.clients.blocked"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "avg:redis.mem.used{$scope,$cluster_id,$node_id} by {redis_host}"
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
    title "redis.mem.used"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "avg:redis.net.slaves{$scope,$cluster_id,$node_id} by {redis_host}"
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
    title "redis.net.slaves"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "diff(avg:redis.net.rejected{$scope,$cluster_id,$node_id} by {redis_host})"
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
    title "sum:redis.net.rejected"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "avg:redis.net.clients{$scope,$cluster_id,$node_id} by {redis_host}"
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
    title "redis.net.clients"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "avg:redis.keys{$scope,$cluster_id,$node_id} by {redis_host}"
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
    title "redis.keys"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "avg:redis.clients.blocked{$scope,$cluster_id,$node_id} by {redis_host}"
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
    title "redis.clients.blocked"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "avg:redis.rdb.changes_since_last{$scope,$cluster_id,$node_id} by {redis_host}"
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
    title "redis.rdb.changes_since_last"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "avg:redis.replication.master_link_down_since_seconds{$scope,$cluster_id,$node_id} by {redis_host}"
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
    title "redis.replication.master_link_down_since_seconds"
  end
  template_variables do |*|
    default "*"
    prefix nil
    name "scope"
  end
  template_variables do |*|
    default "*"
    prefix "cacheclusterid"
    name "cluster_id"
  end
  template_variables do |*|
    default "*"
    prefix "cachenodeid"
    name "node_id"
  end
  description "created by watanabe"
  title "ElastiCache Redis TimeBoard"
end
