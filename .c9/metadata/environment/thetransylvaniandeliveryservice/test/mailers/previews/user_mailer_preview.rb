{"filter":false,"title":"user_mailer_preview.rb","tooltip":"/thetransylvaniandeliveryservice/test/mailers/previews/user_mailer_preview.rb","undoManager":{"mark":1,"position":1,"stack":[[{"start":{"row":0,"column":0},"end":{"row":4,"column":0},"action":"remove","lines":["# Preview all emails at http://localhost:3000/rails/mailers/user_mailer","class UserMailerPreview < ActionMailer::Preview","","end",""],"id":2},{"start":{"row":0,"column":0},"end":{"row":5,"column":3},"action":"insert","lines":["# Preview all emails at http://localhost:3000/rails/mailers/user_mailer","class UserMailerPreview < ActionMailer::Preview","  def contact_form","    UserMailer.contact_form(\"john@example.com\", \"John\", \"Hello World!\")","  end","end"]}],[{"start":{"row":0,"column":24},"end":{"row":0,"column":45},"action":"remove","lines":["http://localhost:3000"],"id":3},{"start":{"row":0,"column":24},"end":{"row":0,"column":99},"action":"insert","lines":["https://79f2ec86aa6d4972ae5272a1592da2f2.vfs.cloud9.us-east-2.amazonaws.com"]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":203,"selection":{"start":{"row":0,"column":99},"end":{"row":0,"column":99},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1535333135568,"hash":"8395ec587b827a08d95025e66008b075a1a20c38"}