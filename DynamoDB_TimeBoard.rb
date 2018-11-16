timeboard "DynamoDB TimeBoard" do
  read_only false
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.dynamodb.successful_request_latency.samplecount{$scope,$table} by {tablename}.as_rate()"
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
    title "Total number of successful requests Rate"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "avg:aws.dynamodb.successful_request_latency{$scope,$table} by {tablename}"
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
    title "Requests latency (AVG)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.dynamodb.successful_request_latency.maximum{$scope,$table} by {tablename}.rollup(max)"
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
    title "Requests latency (MAX)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.dynamodb.throttled_requests{$scope,$table} by {tablename}.as_count()"
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
    title "Throttling (Requests)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.dynamodb.read_throttle_events{$scope,$table} by {tablename}.as_count()"
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
    title "Throttling (Read Events)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.dynamodb.write_throttle_events{$scope,$table} by {tablename}.as_count()"
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
    title "Throttling (Write Events)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.dynamodb.online_index_throttle_events{$scope,$table} by {tablename}.as_count()"
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
    title "Throttling (Write GlobalSecondaryIndex Events)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.dynamodb.system_errors{$scope,$table} by {tablename}.as_count()"
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
    title "System Errors"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.dynamodb.user_errors{$scope,$table}.as_count()"
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
    title "User Errors"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.dynamodb.conditional_check_failed_requests{$scope,$table} by {tablename}.as_count()"
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
    title "Failed conditional write attempts"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "100*(sum:aws.dynamodb.consumed_read_capacity_units{$scope,$table} by {tablename}.rollup(max, 300)/sum:aws.dynamodb.provisioned_read_capacity_units{$scope,$table} by {tablename}.rollup(max, 300))"
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
    title "Percent of provisioned read consumed"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "100*(sum:aws.dynamodb.consumed_write_capacity_units{$scope,$table} by {tablename}.rollup(max, 300)/sum:aws.dynamodb.provisioned_write_capacity_units{$scope,$table} by {tablename}.rollup(max, 300))"
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
    title "Percent of provisioned write consumed"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.dynamodb.item_count{$scope,$table} by {tablename}.as_count()"
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
    title "aws.dynamodb.item_count"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.dynamodb.table_size{$scope,$table} by {tablename}.as_count()"
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
    title "aws.dynamodb.table_size"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.dynamodb.returned_item_count{$scope,$table} by {tablename}"
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
    title "aws.dynamodb.returned_item_count"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.dynamodb.returned_item_count.minimum{$scope,$table} by {tablename}"
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
    title "aws.dynamodb.returned_item_count.minimum"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.dynamodb.returned_item_count.maximum{$scope,$table} by {tablename}"
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
    title "aws.dynamodb.returned_item_count.maximum"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.dynamodb.returned_item_count.sum{$scope,$table} by {tablename}.as_count()"
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
    title "aws.dynamodb.returned_item_count.sum"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.dynamodb.returned_item_count.samplecount{$scope,$table} by {tablename}.as_count()"
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
    title "aws.dynamodb.returned_item_count.samplecount"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.dynamodb.consumed_read_capacity_units{$scope,$table} by {tablename}.rollup(max)"
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
    title "aws.dynamodb.consumed_read_capacity_units"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.dynamodb.consumed_write_capacity_units{$scope,$table} by {tablename}.rollup(max)"
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
    title "aws.dynamodb.consumed_write_capacity_units"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.dynamodb.provisioned_read_capacity_units{$scope,$table} by {tablename}"
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
    title "aws.dynamodb.provisioned_read_capacity_units"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.dynamodb.provisioned_write_capacity_units{$scope,$table} by {tablename}"
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
    title "aws.dynamodb.provisioned_write_capacity_units"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.dynamodb.time_to_live_deleted_item_count{$scope,$table} by {tablename}.as_count()"
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
    title "aws.dynamodb.time_to_live_deleted_item_count"
  end
  template_variables do |*|
    default "*"
    prefix nil
    name "scope"
  end
  template_variables do |*|
    default "*"
    prefix "tablename"
    name "table"
  end
  description "created by watanabe"
  title "DynamoDB TimeBoard"
end
