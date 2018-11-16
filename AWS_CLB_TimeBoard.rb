timeboard "AWS CLB TimeBoard" do
  read_only false
  graphs do |*|
    definition do
      viz "query_value"
      status "done"
      requests do |*|
        q "sum:aws.elb.healthy_host_count.minimum{$scope}"
        aggregator "min"
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
    title "Healthy hosts count (min)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.elb.healthy_host_count.minimum{$scope} by {host}"
        aggregator "min"
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
    title "Healthy hosts count (min)"
  end
  graphs do |*|
    definition do
      viz "query_value"
      status "done"
      requests do |*|
        q "sum:aws.elb.un_healthy_host_count.maximum{$scope}"
        aggregator "max"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type nil
        conditional_formats do |*|
          palette "white_on_red"
          value nil
          comparator ">"
        end
        conditional_formats do |*|
          palette "white_on_green"
          value nil
          comparator "<="
        end
      end
      autoscale true
    end
    title "Unhealthy hosts count (max)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.elb.un_healthy_host_count.maximum{$scope} by {host}"
        aggregator "max"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "area"
        conditional_formats do |*|
          palette "white_on_red"
          value nil
          comparator ">"
        end
        conditional_formats do |*|
          palette "white_on_green"
          value nil
          comparator "<="
        end
      end
      autoscale true
    end
    title "Unhealthy hosts count (max)"
  end
  graphs do |*|
    definition do
      viz "query_value"
      status "done"
      requests do |*|
        q "sum:aws.elb.request_count{$scope}.as_count()"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type nil
        conditional_formats do |*|
          palette "white_on_red"
          value nil
          comparator ">"
        end
        conditional_formats do |*|
          palette "white_on_green"
          value nil
          comparator "<="
        end
      end
      autoscale true
      precision "1"
    end
    title "Requests per second (avg)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.elb.request_count{$scope} by {host}.as_rate()"
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
    title "Requests per second (avg)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.elb.surge_queue_length{$scope} by {host}.as_rate()"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
      end
      autoscale true
    end
    title "Max Surge queue length"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.elb.httpcode_backend_2xx{$scope} by {host}.as_count()"
        aggregator "avg"
        style do
          width "normal"
          palette "cool"
          type "solid"
        end
        type "bars"
        conditional_formats []
      end
      autoscale true
    end
    title "HTTP 2xx Responses (Backend)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.elb.httpcode_backend_3xx{$scope} by {host}.as_count()"
        aggregator "avg"
        style do
          width "normal"
          palette "cool"
          type "solid"
        end
        type "bars"
        conditional_formats []
      end
      autoscale true
    end
    title "HTTP 3xx Responses (Backend)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.elb.httpcode_backend_4xx{$scope} by {host}.as_count()"
        aggregator "avg"
        style do
          width "normal"
          palette "warm"
          type "solid"
        end
        type "bars"
        conditional_formats []
      end
      autoscale true
    end
    title "HTTP 4xx Responses (Backend)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.elb.httpcode_backend_5xx{$scope} by {host}.as_count()"
        aggregator "avg"
        style do
          width "normal"
          palette "warm"
          type "solid"
        end
        type "bars"
        conditional_formats []
      end
      autoscale true
    end
    title "HTTP 5xx Responses (Backend)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.elb.backend_connection_error{$scope} by {host}.as_count()"
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
    title "Connection Errors (Backend)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.elb.httpcode_elb_4xx{$scope} by {host}.as_count()"
        aggregator "avg"
        style do
          width "normal"
          palette "orange"
          type "solid"
        end
        type "bars"
        conditional_formats []
      end
      autoscale true
    end
    title "HTTP 4xx Responses (ELB)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.elb.httpcode_elb_5xx{$scope} by {host}.as_count()"
        aggregator "avg"
        style do
          width "normal"
          palette "orange"
          type "solid"
        end
        type "bars"
        conditional_formats []
      end
      autoscale true
    end
    title "HTTP 5xx Responses (ELB)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.elb.client_tlsnegotiation_error_count{$scope} by {host}"
        aggregator "avg"
        style do
          width "normal"
          palette "orange"
          type "solid"
        end
        type "bars"
        conditional_formats []
      end
      autoscale true
    end
    title "TLS Negotiation Errors"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "avg:aws.elb.latency{$scope}*1000"
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
    title "Latency Time Agv [msec]"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "avg:aws.elb.latency.maximum{$scope}*1000"
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
    title "Latency Time Max [msec]"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "avg:aws.elb.latency.p99{$scope}*1000"
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
    title "Latency Time p99 [msec]"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "avg:aws.elb.latency.p95{$scope}*1000"
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
    title "Latency Time p95 [msec]"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.elb.estimated_processed_bytes{$scope} by {host}.as_count()"
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
    title "Proceessd bytes"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.elb.consumed_lbcapacity_units{$scope} by {host}"
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
    title "ELB capacity units consumed"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.elb.estimated_albconsumed_lcus{$scope} by {host}"
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
    title "LCU consumed"
  end
  template_variables do |*|
    default "*"
    prefix nil
    name "scope"
  end
  description "created by watanabe"
  title "AWS CLB TimeBoard"
end
