timeboard "AWS Billing TimeBoard" do
  read_only false
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "avg:aws.billing.estimated_charges{$aws,$servicename} by {aws}"
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
        q "month_before(avg:aws.billing.estimated_charges{$aws,$servicename} by {aws})"
        style do
          width "normal"
          palette "dog_classic"
          type "dotted"
        end
        type "line"
      end
      autoscale true
    end
    title "aws.billing.estimated_charges by AWS account"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "avg:aws.billing.estimated_charges{$aws,$servicename} by {aws}-month_before(avg:aws.billing.estimated_charges{$aws,$servicename} by {aws})"
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
    title "diff month (aws.billing.estimated_charges by AWS account)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "avg:aws.billing.estimated_charges{$aws,$servicename} by {aws}/month_before(avg:aws.billing.estimated_charges{$aws,$servicename} by {aws})"
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
    title "div month (aws.billing.estimated_charges by AWS account)"
  end
  graphs do |*|
    definition do
      viz "timeseries"
      status "done"
      requests do |*|
        q "avg:aws.billing.estimated_charges{$aws,$servicename} by {servicename}"
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
    title "aws.billing.estimated_charges by AWS sevice"
  end
  template_variables do |*|
    default "*"
    prefix "aws"
    name "aws"
  end
  template_variables do |*|
    default "*"
    prefix "servicename"
    name "servicename"
  end
  description "created by watanabe"
  title "AWS Billing TimeBoard"
end
