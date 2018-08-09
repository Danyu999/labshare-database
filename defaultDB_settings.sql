USE `FacilityDB`;

CREATE TABLE `Instruments` (
`ID` INT NULL,
`Title` VARCHAR(255) NULL
)
ENGINE = InnoDB;

INSERT INTO `Instruments`(ID, Title)
	VALUES(1, 'Hi');

INSERT INTO `Groups` (ID, GroupName)
VALUES(1, 'Admin');

INSERT INTO `Permissions` (ID, Permission)
VALUES(1,'Read');

INSERT INTO `Labs`(ID, LabTitle, Description, Settings, LabUrl, DBInstanceName)
    VALUES (1, 'test', 'Hedwig integration with Omero', '{
       "facilityDataUrl":null,
       "downloadUrl":null,
       "subFolders":null,
       "isMultiFacility":true,
       "isInherited":false,
       "group":{
          "User":{
             "name":"RTB Users",
             "listName":"Clients",
             "listUrl":""
          },
          "Staff":{
             "name":"Lab Staff",
             "listName":"Lab Users",
             "listUrl":null
          },
          "Admin":{
             "name":"Lab Admin",
             "listName":"Lab Users",
             "listUrl":null
          },
          "Public":{
             "name":"Public",
             "listName":"Lab Users",
             "listUrl":null
          }
       },
       "IsMultiFacility":true,
       "pages":{
          "default":{
             "Header":{
                "disabled":false,
                "Height":"tall",
                "font":{
                   "family":"Century Gothic",
                   "weight":800,
                   "size":"15px",
                   "color":"#ffffff"
                },
                "HeaderList":[
                ],
                "TitleBar":{
                   "disabled":false
                },
                "background":"#546396"
             },
             "Navigation":{
                "LeftNav":[
                ]
             },
             "PageInfo":{
                "Theme":"rtb",
                "disabled":true,
                "Height":"short",
                "layout":{
                   "plan":"A"
                },
                "BreadCrumb":[
                   {
                      "label":"Enable",
                      "value":false
                   },
                   {
                      "label":"pageInfoBottom",
                      "value":true
                   }
                ],
                "pageTitle":[
                   {
                      "label":"showPageTitle",
                      "value":true,
                      "type":"Boolean"
                   },
                   {
                      "label":"title",
                      "value":"Hedwig - Sessions",
                      "type":"Text"
                   },
                   {
                      "label":"fontStyle",
                      "value":"",
                      "choices":[

                      ],
                      "type":"Choice"
                   },
                   {
                      "label":"fontSize",
                      "value":"24px",
                      "choices":[

                      ],
                      "type":"Choice"
                   },
                   {
                      "label":"fontColor",
                      "value":"Black",
                      "type":"Color"
                   },
                   {
                      "label":"customImage",
                      "value":"../../xxx.png",
                      "type":"File"
                   }
                ],
                "siteSearch":[
                   {
                      "label":"PlaceHolder",
                      "value":"Site Search...",
                      "type":"Text"
                   },
                   {
                      "label":"Enable",
                      "value":false,
                      "type":"Boolean"
                   },
                   {
                      "label":"Height",
                      "value":26,
                      "type":"Number"
                   },
                   {
                      "label":"Width",
                      "value":152,
                      "type":"Number"
                   }
                ],
                "toolbar":{
                   "Enable":true,
                   "ToolbarList":[

                   ]
                },
                "actionBar":{
                   "Enable":false,
                   "actionList":[
                   ]
                }
             },
             "Footer":{
                "disabled":true,
                "appOnly":true,
                "FooterList":[
                   {
                      "name":"",
                      "type":"button",
                      "disabled":false,
                      "icon":"",
                      "path":""
                   },
                   {
                      "name":"",
                      "type":"button",
                      "disabled":false,
                      "icon":"",
                      "path":""
                   },
                   {
                      "type":"button",
                      "name":"",
                      "url":""
                   },
                   {
                      "type":"toast",
                      "icon":"",
                      "image":""
                   }
                ]
             },
             "Theme":{
                "name":"blue"
             },
             "Login":{
                "Panel":{
                   "position":"center",
                   "banner":"node_modules/ng-login/src/images/labshare-banner.png"
                },
                "Images":[
                   "node_modules/ng-login/src/images/ls-back-1.jpg",
                   "node_modules/ng-login/src/images/ls-back-2.jpg",
                   "node_modules/ng-login/src/images/ls-back-3.jpg",
                   "node_modules/ng-login/src/images/ls-back-4.jpg"
                ],
                "Footer":{
                   "disabled":false,
                   "banner":"node_modules/ng-login/src/images/nih-banner.png"
                }
             }
          }
       },
       "Lists":{
          "FacilityPages":"FacilityPages",
          "Announcements":"Announcements",
          "Functions":"Functions",
          "Instruments":"Instruments",
          "Project Subsets":"Project Subsets",
          "Projects":"Projects",
          "Reservations":"Reservations",
          "Session Folders":"Session Folders",
          "staff":"Staff",
          "Sample Files":"Sample Files"
       },
       "navigationMap": [],
       "webConfig":{
          "xmlns:xsd":"http://www.w3.org/2001/XMLSchema",
          "xmlns:xsi":"http://www.w3.org/2001/XMLSchema-instance",
          "IsInherited":"false",
          "ErrorLogList":"ErrorLog",
          "LabUsersList":"Clients",
          "CANsList":"CANs",
          "AlertsList":"Alert Mails",
          "LabAdminGroupName":"RTB Admin",
          "LabStaffGroupPrefix":"RTB Staff",
          "LabUsersGroupName":"RTB Users",
          "AppPagesPath":"/_Layouts/AxLabs/AppPages",
          "AccountingNumber":"CAN",
          "IsCANRequired":"true",
          "LabCost":"RTB_Cost",
          "ExternalCost":"SS_Cost",
          "SkinPath":"/_Layouts/AxLabs/Skins/",
          "SkinName":"AxLabsBlueV4"
       },
       "site":"/rtb"
    }', '', 'public');

INSERT INTO `DataLists`(ID, ListName, IsList, LabID, Settings, GroupId, PermissionID, ParentList)
VALUES(1, 'Instruments', 1, (SELECT ID FROM `Labs` WHERE ID=1), '
{
	"dashboards": {
	    "list": {
	  		"name": "Instruments-test",
	  		"title": "Instruments",
	  		"data": {
	    		"rolesRequired": [
	      		"staff",
	      		"admin"
	    		]
	  		},
			"panels": {
		    	"instrumentPanel": {
		    		"title": "Instruments",
		    		"type": "ls-list-view",
			    	"Header": {
			        	"preTitleActions": [],
			        	"postTitleActions": []
			      	},
			    	"options": {
			        	"listName": "Instruments",
			        	"defaultListView": "tile",
			        	"onTileSelection": "detail",
			        	"onGridSelection": "detail",
			        	"apiPath": "/facility/list/:listName/view/:view",
				        "filterByInternalName": [],
				        "paramsFilter": [],
				        "apiParams": {},
				        "apiMODE": "getAll",
				        "tileOptions": {
				        	"tileTemplate": "ls-facility.projectTile",
				        	"wrapTiles": true
				        },
				        "fabSpeedDial":false,
				        "tileViewLabels": [],
				        "tileViewButtons": [
				        	{
				            	"actionId": "details",
				            	"title": "Session Details",
				            	"icon": "pencil"
				        	}
				        ],
				        "tileButtons": [],
				        "height": 1,
				        "viewSelectionDisabled": true,
				        "cacheDisabled": true
				    }
		    	}
		    },
		    "Filter": {}
		},
		"layout": {
			"layout": "row",
			"panels": [
				{
			    	"layout": "column",
			        "panels": [
			        	"instrumentPanel"
			        ]
			    }
			]
		}
	}
}', (SELECT ID FROM `Groups` WHERE ID=1), (SELECT ID FROM `Permissions` WHERE ID=1), 'Instruments');

INSERT INTO `Users` (ID, DisplayName, UserName, Lab, IsActive, GroupID, PermissionID)
VALUES(1, 'tester', 'ncatslabuser@nih.gov', 'test', true, 1, 1);

INSERT INTO `UserLabs` (ID, UserID, LabID, Permission, GroupName)
VALUES(1, 1, 1, 'Admin', 'LabAdmin');