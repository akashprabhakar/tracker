Report Created
===============================================
 
User <%= @report.user %> posted a report item:
<%= @report.created_at.strftime('%m/%d/%Y %I:%M %p') %>
Project: <%= @report.project.name %>
Hours: <%= @report.hours %>
Notes: <%= @report.notes %>