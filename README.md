
# Ability test - Ruby on Rails - Shipsmart
## Using Rails to develop a JSON API 
The objective of this case is to develop one restful API for registering, editing, viewing and deleting a vehicle base.
### 1.Creating a Simple Project
To create a new API project in Rails, I executed the following:
```ruby
rails new vehcule_api --api
cd vehicule_api 
```
	
### 2.Using Scaffold to Generate Resource
 Because the project was created as an API, rails will create the controller and models only.
 No templates will be generated by scaffolding.
	
```ruby
rails g scaffold Vehcule mark:string vehicule:string year:integer description:text sold:boolean 
```

Take a look at `./app/controllers/vehicules_controller.rb`

![ctrl](https://user-images.githubusercontent.com/69093920/111729150-b8044600-886e-11eb-8fb6-ebb1ad05dd48.PNG)


### 3.Seed Data and Migrate Changes to DB
First I added some data to the database either through rails console or by adding the following code to the `./db/seeds.rb` 
  
```ruby
Vehcule.create(mark: 'MINI', vehicule: ' Mini Countryman 1.5L Cooper SE ', year: 2017 , description:'4.686 miles Plug_in_hybrid automatic', sold:false)
Vehcule.create(mark: 'Volkswagen', vehicule: 'Volkswagen Golf 2L R TSI' , year: 2019 , description:'8,599 Petrol Automatic', sold:true) 
```

Then I used the following two commands in order to migrate and seed the changes:
 
```ruby
rails db:migrate
rails db:seed
```


### 4.Starting the server and testing methods (GET, POST, PUT, DELETE)

```ruby
rails s
```
![json](https://user-images.githubusercontent.com/69093920/111729587-ab342200-886f-11eb-8aee-489d31591949.PNG)
 


API Endpoints:

bin/rails routes | grep vehcules

![Inkedroutesss_LI](https://user-images.githubusercontent.com/69093920/111729254-f1d54c80-886e-11eb-9bb2-1f2654624c3d.jpg)



  - GET/vehicules: Resumes all vehicles
with the server started, a GET request can be immediately done
simply by opening the browser and going to http://localhost:3000/vehicules 
or by using curl ```curl http://localhost:3000/vehcules```

  - GET/vehicules/{id}: Resumes the details of a particular vehicle
same here either by http://localhost:3000/vehicules/2 
or by using curl  ```curl http://localhost:3000/vehcules/2```


  - POST/vehicules: Add a new vehicle
   ``` curl -X POST -H "Content-Type: application/json" -d '{"mark": "RENAULT" , "vehicule": "clio", "year": "2019", "description": "many many miles 2145 old", "sold":"false" }'    http://localhost:3000/vehcules ```
   
    
  - DELETE/vehicules/{id}: Delete the vehicle
   ``` curl -X DELETE http://localhost:3000/vehcules/8```


