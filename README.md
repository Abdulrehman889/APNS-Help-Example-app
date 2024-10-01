# APNS-Help-Example-app
the purpose of this repo is to help developer know all kinds of payloads and notifications in apple eco system


--- how to run the project 
1. clone the project into your system
2. go to project target in project settings
3. change the project bundle id to your own bundle id
4. update the bundle id in apns file you want to test

example apns 
------
{
    "Simulator Target Bundle":"PASTE YOUR BUNDLE ID HERE",
    "aps": {
        "category": "myNotificationCategory",
        "alert": {
            "title": "Photos",
            "body": "This is new Photo"
        },
        "mutable-content": 1
    },
    "urlImageString":"https://media.istockphoto.com/id/139713643/photo/loon-on-sharbot-lake.jpg?s=1024x1024&w=is&k=20&c=c8K6-TzoCcosKSatbnXOv63K86-W9yc_xt5g8wGUMlk="
}


5. run build on simulator 
6. drag the updated apns file onto the simulator

