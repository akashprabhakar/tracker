class Usermailer < ApplicationMailer
	 default from: "akashmudliyar@gmail.com"

	 def workcreated_email(report)
    @report = report
    mail(to: report.project.user.email, subject: "Report Item Posted")
  end
end
