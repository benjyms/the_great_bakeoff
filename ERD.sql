-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/Mitut6
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "baker" (
    "baker_id" INT   ,
    "baker_first" VARCHAR   ,
    "baker_last" VARCHAR   ,
    "baker_full" VARCHAR   ,
    "gender" VARCHAR   ,
    "age" INT   ,
    "occupation" VARCHAR   ,
    "hometown" VARCHAR   ,
    "series" INT   ,
    CONSTRAINT "pk_baker" PRIMARY KEY (
        "baker_id"
     )
);

CREATE TABLE "challenge" (
    "challenge_id" INT   ,
    "episode_id" INT   ,
    "baker_id" INT   ,
    "signature_desc" VARCHAR   ,
    "signature_handshake" BOOLEAN   ,
    "technical_rank" INT   ,
    "showstopper_desc" VARCHAR   ,
    "showstopper_handshake" BOOLEAN   ,
    "favorite" BOOLEAN   ,
    "least_favorite" BOOLEAN   ,
    "result" VARCHAR   ,
    CONSTRAINT "pk_challenge" PRIMARY KEY (
        "challenge_id"
     )
);

CREATE TABLE "series" (
    "series" INT   ,
    "year" INT   ,
    "judge1" INT   ,
    "judge2" INT   ,
    "host1" INT   ,
    "host2" INT   ,
    CONSTRAINT "pk_series" PRIMARY KEY (
        "series"
     )
);

CREATE TABLE "episode" (
    "episode_id" INT   ,
    "series" INT   ,
    "episode" INT   ,
    "theme" VARCHAR   ,
    CONSTRAINT "pk_episode" PRIMARY KEY (
        "episode_id"
     )
);

CREATE TABLE "rating" (
    "rating_id" INT   ,
    "episode_id" INT   ,
    "uk_airdate" VARCHAR   ,
    "viewers_7day" INT   ,
    "viewers_28day" INT   ,
    "episode_count" INT   ,
    "network_rank" INT   ,
    "channel_rank" INT   ,
    "bbc_iplayer_requests" INT   ,
    CONSTRAINT "pk_rating" PRIMARY KEY (
        "rating_id"
     )
);

CREATE TABLE "judge" (
    "judge_id" INT   ,
    "judge_name" VARCHAR   ,
    "judge_wiki" VARCHAR   ,
    CONSTRAINT "pk_judge" PRIMARY KEY (
        "judge_id"
     )
);

CREATE TABLE "host" (
    "host_id" INT   ,
    "host_name" VARCHAR   ,
    "host_wiki" VARCHAR   ,
    CONSTRAINT "pk_host" PRIMARY KEY (
        "host_id"
     )
);

ALTER TABLE "challenge" ADD CONSTRAINT "fk_challenge_episode_id" FOREIGN KEY("episode_id")
REFERENCES "episode" ("episode_id");

ALTER TABLE "challenge" ADD CONSTRAINT "fk_challenge_baker_id" FOREIGN KEY("baker_id")
REFERENCES "baker" ("baker_id");

ALTER TABLE "series" ADD CONSTRAINT "fk_series_judge1" FOREIGN KEY("judge1")
REFERENCES "judge" ("judge_id");

ALTER TABLE "series" ADD CONSTRAINT "fk_series_judge2" FOREIGN KEY("judge2")
REFERENCES "judge" ("judge_id");

ALTER TABLE "series" ADD CONSTRAINT "fk_series_host1" FOREIGN KEY("host1")
REFERENCES "host" ("host_id");

ALTER TABLE "series" ADD CONSTRAINT "fk_series_host2" FOREIGN KEY("host2")
REFERENCES "host" ("host_id");

ALTER TABLE "episode" ADD CONSTRAINT "fk_episode_series" FOREIGN KEY("series")
REFERENCES "series" ("series");

ALTER TABLE "rating" ADD CONSTRAINT "fk_rating_episode_id" FOREIGN KEY("episode_id")
REFERENCES "episode" ("episode_id");

