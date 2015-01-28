class ApplicationMailer < ActionMailer::Base
  default from: "akashmudliyar@gmail.com"
  layout 'mailer'
   def workcreated_email(report)
    @report = report
    mail(to: report.project.user.email, subject: "Report Item Posted")
  end
end
