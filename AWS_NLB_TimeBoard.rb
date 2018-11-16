timeboard "AWS NLB TimeBoard" do
  read_only false
  graphs do |*|
    definition do
      viz "query_value"
      status "done"
      requests do |*|
        q "sum:aws.networkelb.healthy_host_count.minimum{$scope,$host,$name,$targetgroup}"
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
        q "sum:aws.networkelb.healthy_host_count.minimum{$scope,$host,$name,$targetgroup} by {host}"
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
        q "sum:aws.networkelb.un_healthy_host_count.maximum{$scope,$host,$name,$targetgroup}"
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
        q "sum:aws.networkelb.un_healthy_host_count.maximum{$scope,$host,$name,$targetgroup} by {host}"
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
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.networkelb.active_flow_count{$scope,$host,$name,$targetgroup} by {host}"
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
    title "Active Flows"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.networkelb.new_flow_count{$scope,$host,$name,$targetgroup} by {host}.as_count()"
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
    title "New Flows"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.networkelb.tcpclient_reset_count{$scope,$host,$name,$targetgroup} by {host}.as_count()"
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
    title "RST packets created by a client and sent to a target"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.networkelb.tcptarget_reset_count{$scope,$host,$name,$targetgroup} by {host}.as_count()"
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
    title "RST packets created by a target and sent to a client"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.networkelb.tcpelbreset_count{$scope,$host,$name,$targetgroup} by {host}.as_count()"
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
    title "RST packets created by a load balancer"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.networkelb.processed_bytes{$scope,$host,$name,$targetgroup} by {host}.as_count()"
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
        q "sum:aws.networkelb.consumed_lcus{$scope,$host,$name,$targetgroup} by {host}"
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
  title "AWS NLB TimeBoard"
end
