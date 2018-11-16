timeboard "EC2 AutoScaling TimeBoard" do
  read_only false
  graphs do |*|
    definition do
      viz "query_value"
      status "done"
      requests do |*|
        q "sum:aws.autoscaling.group_in_service_instances{$autoscaling_group,$scope}"
        aggregator "last"
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
    title "In Service"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.ec2.status_check_failed_system{$autoscaling_group,$scope}, sum:aws.ec2.status_check_failed_instance{$autoscaling_group,$scope}"
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
        q "sum:aws.ec2.status_check_failed{$autoscaling_group,$scope}"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
      end
      autoscale true
    end
    title "ec2.status_check_fail*"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.autoscaling.group_total_instances{$autoscaling_group,$scope}"
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
        q "sum:aws.autoscaling.group_in_service_instances{$autoscaling_group,$scope}, sum:aws.autoscaling.group_standby_instances{$autoscaling_group,$scope}, sum:aws.autoscaling.group_pending_instances{$autoscaling_group,$scope}, sum:aws.autoscaling.group_terminating_instances{$autoscaling_group,$scope}"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "area"
      end
      autoscale true
    end
    title "aws.autoscaling.group_total_instances, aws.autoscaling.group_in_service_insta..."
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.autoscaling.group_min_size{$autoscaling_group,$scope}, sum:aws.autoscaling.group_max_size{$autoscaling_group,$scope}, sum:aws.autoscaling.group_desired_capacity{$autoscaling_group,$scope}, sum:aws.autoscaling.group_in_service_instances{$autoscaling_group,$scope}"
        aggregator "last"
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
    title "In Service/Max/Min/Desired"
  end
  graphs do |*|
    definition do
      style do
        fillMax nil
        palette "green_to_orange"
        fillMin nil
        paletteFlip false
      end
      group ["availability-zone"]
      notes nil
      noMetricHosts true
      viz "hostmap"
      scope ["$autoscaling_group"]
      requests do |*|
        q "avg:system.load.1{$autoscaling_group,$scope} by {host}"
        type "fill"
      end
      noGroupHosts true
    end
    title "Hostmap by system.load.1"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:system.load.1{$autoscaling_group,$scope} by {host}"
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
    title "system.load.1"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:system.load.5{$autoscaling_group,$scope} by {host}"
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
    title "system.load.5"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:system.load.15{$autoscaling_group,$scope} by {host}"
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
    title "system.load.15"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.ec2.cpuutilization{$autoscaling_group,$scope} by {host}"
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
    title "aws.ec2.cpuutilization"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.ec2.cpucredit_balance{$autoscaling_group,$scope} by {host}"
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
      markers do |*|
        type "error dashed"
        val "10"
        value "y = 10"
      end
    end
    title "aws.ec2.cpucredit_balance"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:system.mem.usable{$autoscaling_group,$scope} by {host}"
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
      markers do |*|
        dim "y"
        type "error dashed"
        val 10
        value "y = 10"
      end
    end
    title "sum:system.mem.usable"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:system.mem.total{$autoscaling_group,$scope} by {host}-sum:system.mem.usable{$autoscaling_group,$scope} by {host}"
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
      markers do |*|
        dim "y"
        type "error dashed"
        val 10
        value "y = 10"
      end
    end
    title "sum:system.mem.(total-usable)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:system.swap.used{$autoscaling_group,$scope} by {host}"
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
    title "system.swap.used"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:system.net.bytes_sent{$autoscaling_group,$scope} by {host}"
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
    title "system.net.bytes_sent"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:system.net.bytes_rcvd{$autoscaling_group,$scope} by {host}"
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
    title "system.net.byte_rcvd"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:system.net.packets_out.count{$autoscaling_group,$scope} by {host}"
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
    title "system.net.packets_out.count"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:system.net.packets_in.count{$autoscaling_group,$scope} by {host}"
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
    title "system.net.packets_in.count"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:system.io.await{$autoscaling_group,$scope} by {host,device}"
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
    title "system.io.await"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:system.io.r_s{$autoscaling_group,$scope} by {host,device}"
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
    title "system.io.r_s"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:system.io.w_s{$autoscaling_group,$scope} by {host,device}"
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
    title "system.io.w_s"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.ebs.volume_queue_length{$autoscaling_group,$scope} by {host,device}"
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
    title "aws.ebs.volume_queue_length"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:aws.ebs.burst_balance{$autoscaling_group,$scope} by {host,device}"
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
      markers do |*|
        dim "y"
        type "error dashed"
        val 10
        value "y = 10"
      end
    end
    title "aws.ebs.burst_blance"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:system.disk.in_use{$autoscaling_group,$scope} by {host,device}, sum:system.disk.in_use{$autoscaling_group,$scope} by {host,device}*100"
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
      markers do |*|
        dim "y"
        type "error dashed"
        val 100
        value "y = 100"
      end
      markers do |*|
        dim "y"
        type "warning dashed"
        val 80
        value "y = 80"
      end
    end
    title "system.disk.in_use [%]"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:system.disk.free{$autoscaling_group,$scope} by {host,device}"
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
      markers do |*|
        dim "y"
        type "error dashed"
        val 100
        value "y = 100"
      end
      markers do |*|
        dim "y"
        type "warning dashed"
        val 80
        value "y = 80"
      end
    end
    title "system.disk.free"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:system.fs.inodes.in_use{$autoscaling_group,$scope} by {host,device}, sum:system.fs.inodes.in_use{$autoscaling_group,$scope} by {host,device}*100"
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
      markers do |*|
        dim "y"
        type "error dashed"
        val 100
        value "y = 100"
      end
      markers do |*|
        dim "y"
        type "warning dashed"
        val 80
        value "y = 80"
      end
    end
    title "system.fs.inodes.in_use [%]"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:ntp.offset{$autoscaling_group,$scope} by {host}"
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
    title "ntp.offset"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:system.uptime{$autoscaling_group,$scope} by {host}/(60*60)"
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
    title "system.uptime [hour]"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "avg:system.load.1{$autoscaling_group,$scope}, avg:system.load.5{$autoscaling_group,$scope}, avg:system.load.15{$autoscaling_group,$scope}"
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
    title "Avg of Load (system.load.*)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "avg:system.cpu.system{$autoscaling_group,$scope}, avg:system.cpu.stolen{$autoscaling_group,$scope}, avg:system.cpu.iowait{$autoscaling_group,$scope}, avg:system.cpu.guest{$autoscaling_group,$scope}, avg:system.cpu.idle{$autoscaling_group,$scope}, avg:system.cpu.user{$autoscaling_group,$scope}"
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
    title "Avg of CPU Utilization (system.cpu.*)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "avg:system.mem.usable{$autoscaling_group,$scope}, avg:system.mem.total{$autoscaling_group,$scope}-avg:system.mem.usable{$autoscaling_group,$scope}"
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
        q "avg:system.mem.total{$autoscaling_group,$scope}"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
      end
      autoscale true
    end
    title "Avg of Memory (system.mem.usable)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "avg:system.mem.cached{$autoscaling_group,$scope}, avg:system.mem.buffered{$autoscaling_group,$scope}, avg:system.mem.free{$autoscaling_group,$scope}, avg:system.mem.used{$autoscaling_group,$scope}-(avg:system.mem.cached{$autoscaling_group,$scope}+avg:system.mem.buffered{$autoscaling_group,$scope})"
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
        q "avg:system.mem.total{$autoscaling_group,$scope}"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
      end
      autoscale true
    end
    title "Avg of Memory (system.mem.*)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "avg:system.swap.free{$autoscaling_group,$scope}, avg:system.swap.used{$autoscaling_group,$scope}"
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
        q "avg:system.swap.total{$autoscaling_group,$scope}"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
      end
      autoscale true
    end
    title "Avg of Swap (system.swap.*)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "avg:system.net.bytes_sent{$autoscaling_group,$scope}, avg:system.net.bytes_rcvd{$autoscaling_group,$scope}"
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
    title "Avg of Network I/O (system.net.bytes_*)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "avg:aws.ec2.network_out{$autoscaling_group,$scope}, avg:aws.ec2.network_in{$autoscaling_group,$scope}"
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
    title "Avg of Network I/O (aws.ec2.network_*)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "avg:system.net.packets_out.count{$autoscaling_group,$scope}, avg:system.net.packets_in.count{$autoscaling_group,$scope}"
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
    title "Avg of Network Packets Count (system.net.packets_*.count)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "sum:system.net.packets_out.error{$autoscaling_group,$scope}, sum:system.net.packets_in.error{$autoscaling_group,$scope}"
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
    title "Sum of Network Packets Error (system.net.packets_*.error)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "avg:aws.ec2.network_packets_out{$autoscaling_group,$scope}, avg:aws.ec2.network_packets_in{$autoscaling_group,$scope}"
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
    title "Avg of Network Packets Count (avg:aws.ec2.network_packets_*)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "avg:system.io.r_await{$autoscaling_group,$scope}, avg:system.io.w_await{$autoscaling_group,$scope}"
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
        q "avg:system.io.await{$autoscaling_group,$scope}"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
      end
      autoscale true
    end
    title "Avg of Disk I/O Wait (system.io.*_await_s)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "avg:system.io.r_s{$autoscaling_group,$scope}, avg:system.io.w_s{$autoscaling_group,$scope}"
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
    title "Avg of Disk I/O Ops (system.io.*_s)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "avg:aws.ebs.volume_read_ops{$autoscaling_group,$scope}.as_rate(), avg:aws.ebs.volume_write_ops{$autoscaling_group,$scope}.as_rate()"
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
    title "Avg of Disk I/O Ops (aws.ebs.volume_*_ops)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "avg:system.io.rkb_s{$autoscaling_group,$scope}, avg:system.io.wkb_s{$autoscaling_group,$scope}"
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
    title "Avg of Disk I/O KB (system.io.*kb_s)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "per_second(avg:aws.ebs.volume_read_bytes{$autoscaling_group,$scope}), per_second(avg:aws.ebs.volume_write_bytes{$autoscaling_group,$scope})"
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
    title "Avg of Disk I/O Byte (aws.ebs.volume_*_bytes)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "avg:system.io.avg_q_sz{$autoscaling_group,$scope}, avg:system.io.avg_rq_sz{$autoscaling_group,$scope}"
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
    title "Avg of I/O Queue Size (system.io.avg_*q_sz)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "avg:aws.ebs.volume_idle_time{$autoscaling_group,$scope}, avg:aws.ebs.volume_total_read_time{$autoscaling_group,$scope}, avg:aws.ebs.volume_total_write_time{$autoscaling_group,$scope}"
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
    title "Avg of I/O Time (aws.ebs.volumu_*_time)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "avg:system.disk.free{$autoscaling_group,$scope}, avg:system.disk.used{$autoscaling_group,$scope}"
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
        q "avg:system.disk.total{$autoscaling_group,$scope}"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
      end
      autoscale true
    end
    title "Avg of Disk Usage (system.disk.*)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "avg:system.fs.inodes.free{$autoscaling_group,$scope}, avg:system.fs.inodes.used{$autoscaling_group,$scope}"
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
        q "avg:system.fs.inodes.total{$autoscaling_group,$scope}"
        style do
          width "normal"
          palette "dog_classic"
          type "solid"
        end
        type "line"
      end
      autoscale true
    end
    title "Avg of i-node Usage (system.fs.*)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "avg:network.http.response_time{$autoscaling_group,$scope} by {url}"
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
    title "Avg of HTTP Response Time (network.http.response_time)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "avg:network.tcp.response_time{$autoscaling_group,$scope} by {url}"
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
    title "Avg of TCP Response Time (network.tcp.response_time)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "per_second(avg:prometheus.http_request_duration_microseconds.count{$autoscaling_group,$scope,upper_bound:10.0}), per_second(avg:prometheus.http_request_duration_microseconds.count{$autoscaling_group,$scope,upper_bound:100.0}), per_second(avg:prometheus.http_request_duration_microseconds.count{$autoscaling_group,$scope,upper_bound:1000.0}), per_second(avg:prometheus.http_request_duration_microseconds.count{$autoscaling_group,$scope,upper_bound:10000.0}), per_second(avg:prometheus.http_request_duration_microseconds.count{$autoscaling_group,$scope,upper_bound:100000.0}), per_second(avg:prometheus.http_request_duration_microseconds.count{$autoscaling_group,$scope,upper_bound:300000.0}), per_second(avg:prometheus.http_request_duration_microseconds.count{$autoscaling_group,$scope,upper_bound:500000.0}), per_second(avg:prometheus.http_request_duration_microseconds.count{$autoscaling_group,$scope,upper_bound:750000.0}), per_second(avg:prometheus.http_request_duration_microseconds.count{$autoscaling_group,$scope,upper_bound:1000000.0}), per_second(avg:prometheus.http_request_duration_microseconds.count{$autoscaling_group,$scope,upper_bound:1500000.0}), per_second(avg:prometheus.http_request_duration_microseconds.count{$autoscaling_group,$scope,upper_bound:2000000.0}), per_second(avg:prometheus.http_request_duration_microseconds.count{$autoscaling_group,$scope,upper_bound:3000000.0}), per_second(avg:prometheus.http_request_duration_microseconds.count{$autoscaling_group,$scope,upper_bound:inf})"
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
    title "Avg of HTTP Requests [/sec] (prometheus.http_requests_total)"
  end
  template_variables do |*|
    default "*"
    prefix "autoscaling_group"
    name "autoscaling_group"
  end
  template_variables do |*|
    default "*"
    prefix nil
    name "scope"
  end
  description "created by watanabe"
  title "EC2 AutoScaling TimeBoard"
end
