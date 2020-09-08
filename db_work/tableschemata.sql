CREATE TABLE "pipeData" (
    "loc" INT   NOT NULL PRIMARY KEY,
    "locName" VARCHAR   NOT NULL,
    "locState" VARCHAR   NOT NULL,
    "locCounty" VARCHAR   NOT NULL,
    "locZone" VARCHAR   NOT NULL,
    "dirFlo" VARCHAR   NOT NULL,
    "locType" VARCHAR   NOT NULL
);

CREATE TABLE "dailyFlo" (
    "loc" int   NOT NULL,
	FOREIGN KEY("loc") REFERENCES "pipeData" ("loc"),
    "gas_date" date   NOT NULL,
    PRIMARY KEY(loc,gas_date),
    "Total_Design_Capacity" int   NOT NULL,
    "Operating_Capacity" int   NOT NULL,
    "Total_Scheduled_Quantity" int   NOT NULL,
    "TSP_Name" VARCHAR   NOT NULL
);

SELECT * 
FROM "dailyFlo"
INNER JOIN "pipeData" ON "dailyFlo".loc = "pipeData".loc;