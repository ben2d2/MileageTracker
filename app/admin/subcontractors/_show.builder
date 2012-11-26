context.instance_eval  do
  attributes_table do
    row :first_name
    row :last_name
    row :email
    row :phone
  end
  render "job_logs", job_logs: subconractor.job_logs, context: self
  active_admin_comments
end