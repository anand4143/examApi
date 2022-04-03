npm install --save sequelize
npm install --save-dev sequelize-cli
npm install --save body-parser
npm install --save bcryptjs
npm install --save jsonwebtoken

sequelize model:generate --name Course --attributes courseName:string,courseDescription:string,status:integer

sequelize db:migrate

sequelize migration:create --name deleteCreatedDateAddStatus

sequelize model:generate --name User --attributes firstName:string,lastName:string,username:string,password:string,email:string,phoneno:bigint,permission_id:integer

sequelize model:generate --name UserCourse --attributes userId:INTEGER,courseId:INTEGER

// if you want to add new column
sequelize model:generate --name addPhonenoInUserTable --attributes phoneno:BIGINT
sequelize db:migrate
========================================

======create Gang model==================
sequelize model:generate --name Gangs --attributes courseId:INTEGER,bName:string,bDescription:text,status:ENUM:{0,1} 
=========create gangcontent model=====================
sequelize model:generate --name Gangcontent --attributes bId:integer,fileOriginalName:string,savingFileName:string,fileExtension:string,filePath:string
=========create testquestion model====================
sequelize model:generate --name Testquestion --attributes testId:integer,question:text,option1:string,option2:string,option3:string,option4:string,option5:string,answer:string

==================create test model====================================
sequelize model:generate --name Test --attributes courseId:integer,bId:integer,testName:string,testDescription:text,status:ENUM:{0,1}

===========create   model=======================
sequelize model:generate --name Usercoursegang --attributes userId:integer,courseId:integer,gangId:integer

============Contact us model=====================

sequelize model:generate --name Contactus --attributes name:string,email:string,phoneno:string,message:text

 


