timeboard "AWS ALB TimeBoard" do
  read_only false
  graphs do |*|
    definition do
      viz "query_value"
      status "done"
      requests do |*|
        q "sum:aws.applicationelb.healthy_host_count.minimum{$scope,$host,$name,$targetgroup}"
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
        q "sum:aws.applicationelb.healthy_host_count.minimum{$scope,$host,$name,$targetgroup} by {host}"
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
        q "sum:aws.applicationelb.un_healthy_host_count.maximum{$scope,$host,$name,$targetgroup}"
        aggregator "max"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type nil
        conditional_formats do |*|
          palette "white_on_red"
          comparator ">"
          value nil
        end
        conditional_formats do |*|
          palette "white_on_green"
          comparator "<="
          value nil
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
        q "sum:aws.applicationelb.un_healthy_host_count.maximum{$scope,$host,$name,$targetgroup} by {host}"
        aggregator "max"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "area"
        conditional_formats do |*|
          palette "white_on_red"
          comparator ">"
          value nil
        end
        conditional_formats do |*|
          palette "white_on_green"
          comparator "<="
          value nil
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
        q "sum:aws.applicationelb.request_count{$scope,$host,$name,$targetgroup}.as_count()"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type nil
        conditional_formats do |*|
          palette "white_on_red"
          comparator ">"
          value nil
        end
        conditional_formats do |*|
          palette "white_on_green"
          comparator "<="
          value nil
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
        q "sum:aws.applicationelb.request_count{$scope,$host,$name,$targetgroup} by {loadbalancer}.as_rate()"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats do |*|
          palette "white_on_red"
          comparator ">"
          value nil
        end
        conditional_formats do |*|
          palette "white_on_green"
          comparator "<="
          value nil
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
        q "sum:aws.applicationelb.httpcode_target_2xx{$scope,$host,$name,$targetgroup} by {host}.as_count()"
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
    title "HTTP 2xx Responses (Target)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.applicationelb.httpcode_target_3xx{$scope,$host,$name,$targetgroup} by {host}.as_count()"
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
    title "HTTP 3xx Responses (Target)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.applicationelb.httpcode_target_4xx{$scope,$host,$name,$targetgroup} by {host}.as_count()"
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
    title "HTTP 4xx Responses (Target)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.applicationelb.httpcode_target_5xx{$scope,$host,$name,$targetgroup} by {host}.as_count()"
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
    title "HTTP 5xx Responses (Target)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.applicationelb.target_connection_error_count{$scope,$host,$name,$targetgroup} by {host}.as_count()"
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
    title "Connection Errors (Target)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.applicationelb.httpcode_elb_4xx{$scope,$host,$name,$targetgroup} by {host}.as_count()"
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
        q "sum:aws.applicationelb.httpcode_elb_5xx{$scope,$host,$name,$targetgroup} by {host}.as_count()"
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
        q "sum:aws.applicationelb.client_tlsnegotiation_error_count{$scope,$host,$name,$targetgroup} by {host}"
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
        q "sum:aws.applicationelb.active_connection_count{$scope,$host,$name,$targetgroup} by {host}"
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
    title "Active Connections"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.applicationelb.new_connection_count{$scope,$host,$name,$targetgroup} by {host}.as_count()"
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
    title "New Connections"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "avg:aws.applicationelb.target_response_time.average{$scope,$host,$name,$targetgroup}*1000"
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
    title "Response Time Agv [msec]"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "avg:aws.applicationelb.target_response_time.maximum{$scope,$host,$name,$targetgroup}*1000"
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
    title "Response Time Max [msec]"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "avg:aws.applicationelb.target_response_time.p99{$scope,$host,$name,$targetgroup}*1000"
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
    title "Response Time p99 [msec]"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "avg:aws.applicationelb.target_response_time.p95{$scope,$host,$name,$targetgroup}*1000"
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
    title "Response Time p95 [msec]"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.applicationelb.processed_bytes{$scope,$host,$name,$targetgroup} by {host}.as_count()"
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
    title "Processed Bytes"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.applicationelb.ipv_6request_count{$scope,$host,$name,$targetgroup} by {loadbalancer}.as_rate()"
        aggregator "avg"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
        conditional_formats do |*|
          palette "white_on_red"
          comparator ">"
          value nil
        end
        conditional_formats do |*|
          palette "white_on_green"
          comparator "<="
          value nil
        end
      end
      autoscale true
      precision "1"
    end
    title "IPv6 Requests per second (avg)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.applicationelb.ipv_6processed_bytes{$scope,$host,$name,$targetgroup} by {host}.as_count()"
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
    title "IPv6 Processed Bytes"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.applicationelb.consumed_lbcapacity_units{$scope,$host,$name,$targetgroup} by {host}"
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
        q "sum:aws.applicationelb.consumed_lcus{$scope,$host,$name,$targetgroup} by {host}"
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
    title "LCU used"
  end
  template_variables do |*|
    default "*"
    prefix nil
    name "scope"
  end
  template_variables do |*|
    default "*"
    prefix "host"
    name "host"
  end
  template_variables do |*|
    default "*"
    prefix "name"
    name "name"
  end
  template_variables do |*|
    default "*"
    prefix "targetgroup"
    name "targetgroup"
  end
  description "created by watanabe"
  title "AWS ALB TimeBoard"
end
